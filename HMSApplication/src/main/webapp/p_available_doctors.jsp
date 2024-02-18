<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
 
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Available Doctors</title>
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
 
        table {
            width: 100%;
            margin-top: 20px;
        }
 
        th,
        td {
            text-align: center;
        }
 
        th {
            background-color: #3498db;
            color: white;
        }
 
        tr:nth-child(even) {
            background-color: #f2f2f2;
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
	<li class="nav-item">
	<a class="nav-link" href="p_home.jsp">Home</a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="#">Profile</a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="#">Book Appointment</a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="#">Status</a>
	</li>
	<li class="nav-item active">
	<a class="nav-link" href="/HMSApplication/p_available_doctors.jsp">Available Doctors <span class="sr-only">(current)</span></a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="#">Contact Us</a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="#">About Us</a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="a_logout.html">Logout</a>
	</li>
	</ul>
	</div>
	</nav>
	 
	    <!-- Page Content -->
	<div class="container">
	<h2>Available Doctors</h2>
	<table class="table table-bordered">
	<thead>
	<tr>
	<th>Doctor Name</th>
	<th>Specialization</th>
	<th>Contact</th>
	<th>Availability</th>
	</tr>
	</thead>
	<tbody>
	<tr>
	<td>Dr. Arun</td>
	<td>MBBS</td>
	<td>6380325845</td>
	<td>Available</td>
	</tr>
	<tr>
	<td>Dr. Harsha</td>
	<td>Cardiologist</td>
	<td>9360053672</td>
	<td>Available</td>
	</tr>
	<tr>
	<td>Dr. Dhamu</td>
	<td>Orthopedic Surgeon</td>
	<td>9345627358</td>
	<td>Available</td>
	</tr>
	<!-- Add more rows as needed -->
	</tbody>
	</table>
	</div>
	 
	    <!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	 
</body>
 
</html>