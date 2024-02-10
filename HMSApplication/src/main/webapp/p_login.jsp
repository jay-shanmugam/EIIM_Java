<!DOCTYPE html>
<html>
    <head>
        <title>Hospital Management System</title>
        <style>
        	.heading{
			    color: rgb(162, 255, 0);
			    font-size: 40px;
			    margin-bottom: 0px;
			    margin-top: 80px;
			    margin-left: 830px;
			}
			button{
			    font-size: 17px;
			    cursor:pointer;
			    height: 38px;
			}
			.login{
			    background-color: rgb(205, 1, 1);
			    color: white;
			    border: none;
			    width: 150px;
			    border-radius: 3%;
			    transition: opacity 0.15s;
			    margin-left: 80px;
			    display: inline-block;
			}
			.signup{
			    background-color: white;
			    color: rgba(41, 118, 211);
			    border-color: #2976d3;
			    border-style: solid;
			    border-width: 1px;
			    width: 110px;
			    margin-left: 100px;
			    margin-top: 30px;
			    border-radius: 5px;
			    transition: background-color 0.20s;
			}
			
			
			.login:hover{
			    opacity: 0.7;
			}
			.signup:hover{
			    color: white;
			    background-color: rgba(41, 118, 211);
			}
			
			
			.login:active{
			    opacity: 0.5;
			}
			.signup:active{
			    opacity: 0.7;
			}
			
			
			input{
			    font-size: 25px;
			    margin: 0px;
			    border: none;
			    border-radius: 4px;
			    display: block;
			    padding: 4px;
			}
			.username{
			    margin-bottom: 20px;
			    margin-top: 7px;
			}
			.password{
			    margin-bottom: 40px;
			}
			
			.body-pos{
			    margin-top:110px;
			    margin-left: 800px;
			    display: block;
			}
			
			::placeholder{
			    opacity:0.8;
			    font-size:22px;
			}
            body{
                background-image: url("img_patpage.jpg");
                background-attachment: fixed;
                background-size: cover;
            }
        </style>
    </head>
    <body>
        <p class="heading">LOGIN PAGE</p>
        <div class="body-pos">
            <form action="/HMSApplication/LoginServlet" method="post">
            <input class="username" type="text" placeholder="Username" name="user_" required pattern="[A-Za-z]+" 
            title="Username must contain only alphabetical characters.">
            <input class="password" type="password" placeholder="Password" name="pass_" required pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}" 
            title="Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character.">
            <button class="login">Login</button>
            </form>
            <a href="/HMSApplication/a_signup.jsp"><button class="signup"> Signup </button></a>
        </div>
    </body>
</html>