<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
 
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Home Page</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
        body {
            padding-top: 56px;
        }
 
        .navbar {
            background-color: #3498db;
        }
 
        .navbar-brand,
        .navbar-nav a {
            color: white;
        }
 
        .navbar-brand:hover,
        .navbar-nav a:hover {
            color: #ecf0f1;
        }
 
        .container {
            margin-top: 20px;
        }
 
        h2 {
            color: #3498db;
        }
 
        .list-group-item {
            cursor: pointer;
        }
 
    </style>
</head>
 
<body>
 
    <!-- Navigation Bar -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
	<a class="navbar-brand" href="#">Hospital Management</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
	            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNav">
	<ul class="navbar-nav ml-auto">
	<li class="nav-item active">
	<a class="nav-link" href="admin.jsp">Home <span class="sr-only">(current)</span></a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="admin_LOD.jsp">List of Doctors</a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="admin_LOP.jsp">List of Patients</a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="admin_add_doctors.jsp">Add Doctor</a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="#">Remove Doctor</a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="a_logout.html">Logout</a>
	</li>
	</ul>
	</div>
	</nav>
 
    <!-- Page Content -->
	<div class="container">
	<h2>List of Patients</h2>
	<table class="table table-bordered">
	<thead>
	<tr>
		<th>Name</th>
        <th>DOB</th>
        <th>Phone Number</th>
        <th>Username</th>
        <th>Password</th>
	</tr>
	</thead>
	<tbody>
	<% 
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hms","root","Aspire@123");
            PreparedStatement pst=con.prepareStatement("SELECT * FROM users");
            ResultSet rs=pst.executeQuery();
            
            while(rs.next()) {
			     %>
			     <tr>
			     	<td><%= rs.getString("first_name") %></td>
			        <td><%= rs.getString("DOB") %></td>
			        <td><%= rs.getString("phone_number") %></td>
			        <td><%= rs.getString("username") %></td>
			        <td><%= rs.getString("passwd") %></td>
			        <!-- Add more table cells if needed -->
			    </tr>
				
				<!-- Add more rows as needed -->
				
				<% 
            }
            con.close();
        } catch(Exception e) {
            out.println(e);
        } 
        %>
    </tbody>
	</table>
	</div>
 
    <!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
</body>
 
</html>
