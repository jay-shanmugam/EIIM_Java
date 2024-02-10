<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<head>
<style>
	.header{
	    background-color: rgb(60, 60, 60);
	    margin : 10px 14px;
	    border-radius: 5px;
	    vertical-align: top;
	    color: white;
	    font-family: 'Source Sans Pro Topnav', sans-serif;
	}
	.header_name{
	    font-weight: bolder;
	    font-size: 15px;
	    padding: 18px 16px;
	    display: inline-block;
	    cursor: pointer;
	}
	.nav{
	    display: inline-block;
	    padding-right: 530px;
	}
	.nav_right{
		display: inline-block;
	}
	.nav_menu{
	    display: inline-block;
	    color: white;
	    font-size: 15px;
	    padding: 18px 13px;
	    cursor: pointer;
	}
	.symbol{
	    display: inline-block;
	    color: white;
	    font-size: 15px;
	    padding: 18px 13px;
	    cursor: pointer;
	}
	.nav_menu:hover{
	    background-color: black;
	}
	.nav_menu:active{
	    opacity: 0.5;
	}
	.header .nav a.nav_menu {
    	text-decoration: none;
    	color: white;
	}
	.header .nav_right a.nav_menu {
    	text-decoration: none;
    	color: white;
	}
	.header .nav_right a.symbol {
    	text-decoration: none;
    	color: white;
	}
</style>
</head>
<div class="header">
    <div class="header_name">HMS</div>
    <div class="nav">
        <a class="nav_menu" href="p_home.jsp">Home</a>
        <a class="nav_menu" href="#">Appointment</a>
        <a class="nav_menu" href="#">Status</a>
        <a class="nav_menu" href="#">About Us</a>
        <a class="nav_menu" href="#">Contact Us</a>
    </div>
   <div class="nav_right">
    <!-- <a class="nav_menu" href="#"><i class="glyphicon glyphicon-user" ></i> Sign Up</a> -->
    <%
		String username=request.getParameter("user_");
		//out.print("Welcome "+username); 
		session.setAttribute("user_", username);
		//out.print("Link Below to View Products");
	%>
	<a class="nav_menu" href="#">${user_}</a>
    <a class="symbol" href="a_logout.html"><i class="glyphicon glyphicon-log-in"></i></a>
    </div>
</div>