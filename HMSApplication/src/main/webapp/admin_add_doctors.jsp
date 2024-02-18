<!DOCTYPE html>
<html lang="en">
 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Sign-up</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            padding-top: 10px;
        padding-bottom: 10px;
        }
 
        .container {
            margin-top: 20px;
        }
 
        .form-group {
            margin-bottom: 20px;
        }
 
        .btn-back {
        	margin-top: 10px;
            background-color: #2ecc71;
            color: white;
        }
 
        .btn-signup {
            background-color: #3498db;
            color: white;
        }
 
        .btn-back:hover,
        .btn-signup:hover {
            background-color: #1a5276;
        }
 
    </style>
</head>
 
<body>
 
 
   
 
    <!-- Page Content -->
    <div class="container">
        <h2>Doctor Sign-up</h2>
        <form action="/HMSApplication/InsertDocData" method="post">
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" class="form-control" id="firstName" placeholder="Enter your first name" name="firstName" required>
            </div>
 
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter your last name" required>
            </div>
 
            <div class="form-group">
                <label for="initial">Initial:</label>
                <input type="text" class="form-control" id="initial" name="initial" placeholder="Enter your initial" required>
            </div>
 
            <div class="form-group">
                <label for="dob">Date of Birth:</label>
                <input type="date" class="form-control" id="dob" name="dob" required>
            </div>
 
            <div class="form-group">
                <label for="phoneNumber">Phone Number:</label>
                <input type="tel" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="Enter your phone number" required>
            </div>
            <div class="form-group">
                <label for="userName">User Name:</label>
                <input type="Text" class="form-control" id="UserName" name="UserName" placeholder="UserName" required>
            </div>
            <div class="form-group">
                <label for="Password">Password:</label>
                <input type="password" class="form-control" id="Password" placeholder="Password" name="Password"
                pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@@$!%*?&])[A-Za-z\d@@$!%*?&]{8,}"
                title="Password must have at least one small letter, one capital letter, one number, one special character (@@, $, !, %, *, ?, or &), and a minimum length of 8 characters." required>
            </div>
            <div class="form-group">
                <label for="specialist">Specialist:</label>
                <select class="form-control" id="specialist" name="specialist"  required>
                    <option value="MBBS">MBBS</option>
                    <option value="ORTHO">Orthopedic</option>
                    <option value="ENT">ENT</option>
                    <option value="SURGEON">Surgeon</option>
                </select>
            </div>
 
            <div class="form-group">
                <label for="availability">Availability:</label>
                <select class="form-control" id="availability" name="availability" required>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
            </div>
 
            
            <button type="submit" class="btn btn-signup">Sign Up</button>
        </form>
        <a href="/HMSApplication/admin.jsp"><button type="button" class="btn btn-back">Back</button></a>
    </div>
 
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
</body>
 
</html>