package model;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class DatabaseServlet
 */
public class InsertDatabase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertDatabase() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","Aspire@123");
			String un = request.getParameter("username");
			PreparedStatement pst=con.prepareStatement("SELECT * FROM users WHERE username=?");
		
			pst.setString(1, un);
			
			ResultSet rs=pst.executeQuery();
			
			 if (rs.next())
			 {
				 RequestDispatcher reqdis = request.getRequestDispatcher("/a_existUser.html");
 				 reqdis.forward(request, response);
			 }
			 else{
 				 String firstName = request.getParameter("firstName");
			     String lastName = request.getParameter("lastName");
			     String initial = request.getParameter("initial");
			     String DOB = request.getParameter("dob");
			     String phoneNumber = request.getParameter("phoneNumber");
			     String username = request.getParameter("username");
			     String password = request.getParameter("password");

			        // JDBC connection parameters
			        // Insert user details into the database
			     String sql = "INSERT INTO users (first_name, last_name, initial, DOB, phone_number, username, passwd) VALUES (?, ?, ?, ?, ?, ?, ?)";
			     try (PreparedStatement statement = con.prepareStatement(sql)) {
			        statement.setString(1, firstName);
			        statement.setString(2, lastName);
			        statement.setString(3, initial);
			        statement.setString(4, DOB);
			        statement.setString(5, phoneNumber);
			        statement.setString(6, username);
			        statement.setString(7, password);

			        statement.executeUpdate();
			                
			      }
			     RequestDispatcher reqdis = request.getRequestDispatcher("/a_insertUser.html");
				 reqdis.include(request, response);
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
