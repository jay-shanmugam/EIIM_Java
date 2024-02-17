<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="#">List of Doctors</a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="#">List of Patients</a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="#">Add Doctor</a>
	</li>
	<li class="nav-item">
	<a class="nav-link" href="#">Remove Doctor</a>
	</li>
	</ul>
	</div>
	</nav>
 
    <!-- Page Content -->
<div class="container">
<h2>Welcome, Admin!</h2>
 
        <!-- Add your content here -->
 
    </div>
 
    <!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
</body>
 
</html>