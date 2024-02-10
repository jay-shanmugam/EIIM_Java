<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HMS</title>
<style type="text/css">
	.section{
	    display: inline-block;
	    margin-top: 70px;
	    margin-left : 16px;
	}
	.leftsection{
	    color: white;
	    display: inline-block;
	    vertical-align: top;
	}
	.booking{
	    background-color: rgba(0, 0, 58, 0.905);
	    padding-left:20px;
	    padding-top:20px;
	    padding-bottom: 20px;
	    padding-right: 158px;
	    border-radius: 3px;}
	.booking:hover{
	    opacity: 0.9;
	}
	.booking:active{
	    background-color:rgb(7, 53, 132);
	}
	.white{
	    background-color: white;
	    padding: 4px;
	}
	
</style>
</head>
<body>
<%@ include file = "p_nav_bar.jsp" %>
</body>
<div class="section">
    <div class="leftsection">
        <div class="booking">List of Doctors</div>
        <div class="white"></div>
        <div class="booking"></div>
        <div class="white"></div>
        <div class="booking">CAR BOOKING</div>
        <div class="white"></div>
        <div class="booking">HOTEL BOOKING</div>
    </div>
</div>
</body>
</html>