<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration form</title>
</head>
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<body>
<div class="container">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<center><legend><strong><label>Registration Form</label></strong></legend></center>

<form action="register_process.jsp" method="post" class="form-container pd"
style="-webkit-box-shadow: 0px 0px 6px 7px rgba(10,4,4,0.65);
-moz-box-shadow: 0px 0px 6px 7px rgba(10,4,4,0.65);
box-shadow: 7px 7px 6px 7px rgba(10,4,4,0.65); padding:50px;">
<label>Name</label><br>
<input type="text" placeholder="Enter your Name" id="name" name="name"
class="form-control"><br>
<label>Email</label><br>
<input type="email" placeholder="Email" id="email" name="email"
class="form-control"><br>
<label>Password</label>
<input type="password" placeholder="Password" id="password" name="password"
class="form-control"><br>
<label>Confirm Password</label><br>
<input type="password" placeholder="Confirm Password" id="confirmp"
name="confirm" class="form-control"><br>
<input type="submit" class="btn btn-success" onclick="return gett()">
<input type="reset" class="btn btn-danger" value="Cancel"><br><br>

<a href="login.jsp">already user. Login here</a>
</form>
</div>
</div>
<div class="col-md-3"></div>
<br><br><br>
<script>
function gett()
{
var a=document.getElementById("name").value;
var c=document.getElementById("email").value;
var password=document.getElementById("password").value;
var confirm=document.getElementById("confirmp").value;
if(a=="")
{
alert("please fill your name");
return false;
}
else if(c=="")
{
alert("please enter your email");
return false;
}
else if(password.length<=7)
{
alert("please enter password of more than eight character");
return false;
}
else if(password!= confirm)
{
alert("Password and confirm Password not matched!!");
return false;
}
else
{
return true;
}
}
</script>

<Body>
<Html>