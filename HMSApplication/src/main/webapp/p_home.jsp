<!DOCTYPE html>
<html lang="en">
 
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Patient Home Page</title>
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
 
        .jumbotron {
            background-color: #3498db;
            color: white;
        }
 
        h2 {
            color: #3498db;
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
	<a class="nav-link" href="/HMSApplication/p_home.jsp">Home <span class="sr-only">(current)</span></a>
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
	<li class="nav-item">
	<a class="nav-link" href="/HMSApplication/p_available_doctors.jsp">Available Doctors</a>
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
	 <%
		String username=request.getParameter("user_");
		//out.print("Welcome "+username); 
		session.setAttribute("user_", username);
		//out.print("Link Below to View Products");
	%>
	<div class="container">
	<div class="jumbotron">
	<h1 class="display-4">Welcome, ${user_}</h1>
	<p class="lead">Manage your appointments and access information easily.</p>
	</div>
	    </div>
	 
	    <!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	 
</body>
 
</html>