package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
//		String username = request.getParameter("user_");
//		String password = request.getParameter("pass_");
//		String admin = "Jay",adminPwd = "Jay@prasanth123",un="Jayprasanth",pwd="Jay@prasanth1234";
//		
//		
//		
//
//		if(username.equals(admin) && password.equals(adminPwd)) {
//			RequestDispatcher reqdis = request.getRequestDispatcher("/AdminServlet");
//			HttpSession session=request.getSession();
//			session.setAttribute("user_",username);
//			reqdis.forward(request, response);
//		}
//		else if(username.equals(un) && password.equals(pwd)) {
//			RequestDispatcher reqdis = request.getRequestDispatcher("/user.jsp");
//			HttpSession session=request.getSession();
//			session.setAttribute("user_",username);
//			reqdis.forward(request, response);
//		}
//		else {
//				PrintWriter pw = response.getWriter();
//				response.setContentType("text/html");
//				pw.println("<h3>You are Unsuccessfull<h3>");
//			
//			RequestDispatcher reqdis = request.getRequestDispatcher("/backToLogin.jsp");
//			reqdis.forward(request, response);
//		}
//}
		
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","Aspire@123");
			String username = request.getParameter("user_");
			String password = request.getParameter("pass_");
			String un="Admin",pwd="Admin@123";
			PreparedStatement pst=con.prepareStatement("SELECT * FROM users WHERE username=? AND passwd=?");
		
			pst.setString(1, username);
			pst.setString(2, password);
			
			ResultSet rs=pst.executeQuery();
			
			if (rs.next())
			{
				 RequestDispatcher reqdis = request.getRequestDispatcher("/p_home.jsp");
				 HttpSession session=request.getSession();
    			 session.setAttribute("user_",username);
    			 reqdis.forward(request, response);
				 //response.sendRedirect("user.jsp");
			}
			else if(username.equals(un) && password.equals(pwd)) {
					RequestDispatcher reqdis = request.getRequestDispatcher("/AdminServlet");
					HttpSession session=request.getSession();
					session.setAttribute("user_",username);
					reqdis.forward(request, response);
				}
			else
				{
				 	RequestDispatcher reqdis = request.getRequestDispatcher("/a_backToLogin.html");
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
