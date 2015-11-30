<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>COLLEGE DETAILS</title>
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN PAGE</title>
<style type="text/css">
.container {
	 border: 1px ;
	border-radius: 10px;
   
    -moz-border-radius: 10px;
    -webkit-border-radius: 10px;
    
    MARGIN-LEFT: 280px;
    margin-top: 45PX;
    margin-right: 233px; 
    padding: 10px 20px 30px 250px;
    
}
#BackgroundTest   
{   
    background-image: url('Images/image2.jpg');   
    background-repeat: repeat; 
    background-size: cover;  
}   
.BackgroundTestClass   
{   
    background-image: url('images/images5.jpg');   
    background-repeat: repeat;   
}
h1, h2, label {
	color:black;
	}
	
body{
background-size: cover;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
}
.update {
 margin-left: -358px;
}
</style>
</head>
<body  background="images/15.png">
<center><h1>WELCOME TO LOGIN PAGE</h1></center>
<div class="container" id="BackgroundTest" >
	
		<form action="loginvalidation.jsp" method="post">
		
			<h2>LOGIN DETAILS</h2>
			<div style="padding: 10px 20px 30px 10px;">
			<label>User Name</label>
				<input type="text" placeholder="Username" required="" name="username" />
			</div>
			<div style="padding: 10px 20px 30px 10px;margin-top: -22px;">
			<label>password</label>
				<input STYLE="MARGIN-LEFT: 4PX;" type="password" placeholder="Password" required="" name="password" />
			</div>
			
			<div class="update">
				<center><input type="submit" value="Login" /></center>
				   
			</div>
	</form>
</div>

<div style="margin-top: -380px;    width: 474px;">
<img src="images/Students.png" style="    width: 699px;
    height: 603px;
    margin-left: 910px;">
</div>

<div>

</div>
</body>
</html>
