package model;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class InsertDocData
 */
public class InsertDocData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertDocData() {
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
			PreparedStatement pst=con.prepareStatement("SELECT * FROM doctor WHERE username=?");
		
			pst.setString(1, un);
			
			ResultSet rs=pst.executeQuery();
			
			 if (rs.next())
			 {
				 RequestDispatcher reqdis = request.getRequestDispatcher("/doc_existUser.html");
 				 reqdis.forward(request, response);
			 }
			 else{
 				 String firstName = request.getParameter("firstName");
			     String lastName = request.getParameter("lastName");
			     String initial = request.getParameter("initial");
			     String DOB = request.getParameter("dob");
			     String phoneNumber = request.getParameter("phoneNumber");
			     String username = request.getParameter("UserName");
			     String password = request.getParameter("Password");
			     String special = request.getParameter("specialist");
			     String avail = request.getParameter("availability");

			        // JDBC connection parameters
			        // Insert user details into the database
			     String sql = "INSERT INTO doctor (first_name, last_name, initial, DOB, phone_number, username, passwd, specialist, available) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
			     try (PreparedStatement statement = con.prepareStatement(sql)) {
			        statement.setString(1, firstName);
			        statement.setString(2, lastName);
			        statement.setString(3, initial);
			        statement.setString(4, DOB);
			        statement.setString(5, phoneNumber);
			        statement.setString(6, username);
			        statement.setString(7, password);
			        statement.setString(8, special);
			        statement.setString(9, avail);			        

			        statement.executeUpdate();
			                
			      }
			     RequestDispatcher reqdis = request.getRequestDispatcher("/doc_insertUser.html");
				 reqdis.forward(request, response);
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
