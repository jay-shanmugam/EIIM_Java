<%@ page import="java.io.*,java.util.*,jakarta.servlet.RequestDispatcher"%>
<%@ page import="jakarta.servlet.RequestDispatcher"%>
<%@ page import="java.io.*,java.util.*, jakarta.servlet.*"%>
<%@ page import="jakarta.servlet.http.*"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Sign Up Form</title>
    <style>
    body {
	    font-family: 'Arial', sans-serif;
	    background-color: #f5f5f5;
	    margin: 0;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    height: 100vh;
	}
	
	.signup-container {
	    background-color: #fff;
	    border-radius: 8px;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	    padding: 20px;
	    width: 400px;
	}
	
	.signup-form {
	    max-width: 100%;
	    margin: 0 auto;
	}
	
	h2 {
	    text-align: center;
	    color: #333;
	}
	
	.form-row {
	    display: flex;
	    justify-content: space-between;
	}
	
	.form-group {
	    flex: 1;
	    margin-bottom: 20px;
	    margin-right: 15px;
	}
	
	label {
	    display: block;
	    margin-bottom: 8px;
	    color: #555;
	}
	
	input {
	    width: 100%;
	    padding: 10px;
	    margin-bottom: 8px;
	    border: 1px solid #ccc;
	    border-radius: 4px;
	    box-sizing: border-box;
	}
	
	button {
	    background-color: #4caf50;
	    color: #fff;
	    padding: 12px;
	    border: none;
	    border-radius: 4px;
	    cursor: pointer;
	    width: 100%;
	}
	
	button:hover {
	    background-color: #45a049;
	}
    
    </style>
</head>
<body>
    <div class="signup-container">
        <form class="signup-form" action="/HMSApplication/InsertDatabase" method="post">
            <h2>Sign Up</h2>

            <div class="form-row">
                <div class="form-group">
                    <label for="firstName">First Name:</label>
                    <input type="text" id="firstName" name="firstName" required>
                </div>

                <div class="form-group">
                    <label for="lastName">Last Name:</label>
                    <input type="text" id="lastName" name="lastName" required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="initial">Initial:</label>
                    <input type="text" id="initial" name="initial">
                </div>

                <div class="form-group">
                    <label for="dob">Date of Birth:</label>
                    <input type="date" id="dob" name="dob" required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="phoneNumber">Phone Number:</label>
                    <input type="tel" id="phoneNumber" name="phoneNumber" pattern="[0-9]{10}" placeholder="Enter 10-digit phone number" required>
                </div>
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                	
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
            </div>

            <button type="submit">Sign Up</button>
        </form>
    </div>
</body>
</html>    