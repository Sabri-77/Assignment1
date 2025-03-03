

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;


/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/CustomerServlet")
public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//Step 1: Prepare list of variables used for database connections
	 private String jdbcURL = "jdbc:mysql://localhost:3306/usercredentials";
	 private String jdbcUsername = "root";
	 private String jdbcPassword = "password";

	//Step 2: Prepare list of SQL prepared statements to perform CRUD to our database
	 private static final String INSERT_USERS_SQL = "INSERT INTO usercredentials" + " (name, password, email) VALUES " +" (?, ?, ?);";
	 private static final String SELECT_USER_BY_ID = "select name,password,email from usercredentials where name =?";
	 private static final String SELECT_ALL_USERS = "select * from usercredentials";
	 private static final String DELETE_USERS_SQL = "delete from usercredentials where name = ?;";
	 private static final String UPDATE_USERS_SQL = "update usercredentials set name = ?,password= ?, email =? where name = ?;";

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Step 3.3. Add the following route controller codes in the doGet method of UserServlet:
			//Step 4: Depending on the request servlet path, determine the function to invoke using the follow
			//switch statement.
		String action = request.getServletPath();
		try {
		switch (action) {
		case "/CustomerServlet/delete":
		deleteUser(request, response);
		break;
		case "/CustomerServlet/edit":
		showEditForm(request, response);
		break;
		case "/CustomerServlet/update":
		updateUser(request, response);
		break;
		case "/CustomerServlet/dashboard":
		listUsers(request, response);
		break;
		case "/CustomerServlet/insert":
		addNewUser(request, response);
		break;
		}
		} catch (SQLException ex) {
		throw new ServletException(ex);
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	//• Add step 3 after the doPost method.
	//Step 3: Implement the getConnection method which facilitates connection to the database via JDBC
	protected Connection getConnection() {
	Connection connection = null;
	try {
	Class.forName("com.mysql.jdbc.Driver");
	connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	} catch (SQLException e) {
	e.printStackTrace();
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	return connection;
	}
	
	//Step 5: listUsers function to connect to the database and retrieve all users records
	private void listUsers(HttpServletRequest request, HttpServletResponse response)
	throws SQLException, IOException, ServletException {
	List <User> users = new ArrayList <>();
	try (Connection connection = getConnection();
	// Step 5.1: Create a statement using connection object
	PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
	// Step 5.2: Execute the query or update query
	ResultSet rs = preparedStatement.executeQuery();
	// Step 5.3: Process the ResultSet object.
	while (rs.next()) {
	String name = rs.getString("name");
	String password = rs.getString("password");
	String email = rs.getString("email");
	users.add(new User(name, password, email));
	}
	} catch (SQLException e) {
	System.out.println(e.getMessage());
	}
	// Step 5.4: Set the users list into the listUsers attribute to be pass to the
	//userManagement.jsp
	request.setAttribute("listUsers", users);
	request.getRequestDispatcher("/CustomerManagment.jsp").forward(request, response);
	}

	//method to get parameter, query database for existing user data and redirect to user edit page
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
	throws SQLException, ServletException, IOException {
	//get parameter passed in the URL
	String name = request.getParameter("name");
	User existingUser = new User("", "", "");
	// Step 1: Establishing a Connection
	try (Connection connection = getConnection();
	// Step 2:Create a statement using connection object
	PreparedStatement preparedStatement =
	connection.prepareStatement(SELECT_USER_BY_ID);) {
	preparedStatement.setString(1, name);
	// Step 3: Execute the query or update query
	ResultSet rs = preparedStatement.executeQuery();
	// Step 4: Process the ResultSet object
	while (rs.next()) {
	name = rs.getString("name");
	String password = rs.getString("password");
	String email = rs.getString("email");
	existingUser = new User(name, password, email);
	}
	} catch (SQLException e) {
	System.out.println(e.getMessage());
	}
	//Step 5: Set existingUser to request and serve up the userEdit form
	request.setAttribute("user", existingUser);
	request.getRequestDispatcher("/CustomerEdit.jsp").forward(request, response);
	}

	//method to update the user table base on the form data
	private void updateUser(HttpServletRequest request, HttpServletResponse response)
	throws SQLException, IOException {
	//Step 1: Retrieve value from the request
	String oriName = request.getParameter("oriName");
	String name = request.getParameter("userName");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	//Step 2: Attempt connection with database and execute update user SQL query
	try (Connection connection = getConnection(); PreparedStatement statement =
	connection.prepareStatement(UPDATE_USERS_SQL);) {
	statement.setString(1, name);
	statement.setString(2, password);
	statement.setString(3, email);
	statement.setString(5, oriName);
	int i = statement.executeUpdate();
	}
	//Step 3: redirect back to UserServlet (note: remember to change the url to your projectname)
	response.sendRedirect("http://localhost:8090/SabriOutlet2/CustomerServlet/dashboard");
	}

	//method to delete user
	private void deleteUser(HttpServletRequest request, HttpServletResponse response)
	throws SQLException, IOException {
	//Step 1: Retrieve value from the request
	String name = request.getParameter("name");
	//Step 2: Attempt connection with database and execute delete user SQL query
	try (Connection connection = getConnection(); PreparedStatement statement =
	connection.prepareStatement(DELETE_USERS_SQL);) {
	statement.setString(1, name);
	int i = statement.executeUpdate();
	}
	//Step 3: redirect back to UserServlet dashboard (note: remember to change the url toyour project name)
	response.sendRedirect("http://localhost:8090/SabriOutlet2/CustomerServlet/dashboard");
	}
	//Method 4: addNewUser (trigger RegisterServlet)
	//method to trigger RegisterServlet
	private void addNewUser(HttpServletRequest request, HttpServletResponse response)
	throws SQLException, IOException, ServletException {
	RequestDispatcher rd = null;
	rd = getServletContext().getRequestDispatcher("/Register2Servlet");
	rd.include(request, response);
	}


}
