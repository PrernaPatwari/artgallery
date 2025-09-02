<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login form</title>
</head>
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<body>
<br><br>
<div class="container">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<center><legend><strong><label>Login Form</label></strong></legend></center>
<form action="login_process.jsp" method="post" style="-webkit-box-shadow: 0px 0px
6px 7px rgba(10,4,4,0.65);
-moz-box-shadow: 0px 0px 6px 7px rgba(10,4,4,0.65);
box-shadow: 7px 7px 6px 7px rgba(10,4,4,0.65); padding:50px;">
<label>Email</label>
<input type="email" name="email" id="email1" placeholder="Enter Your Email"
class="form-control"><br>
<label>Password</label><br>
<input type="password" name="password" placeholder=" Enter Password"
id="password1" class="form-control"><br><br>
<input type="submit" value="Login" class="form-control btn btn-info" onclick="Regform1()"><br><br>
<a href="register.jsp">new user ? Register here</a>
</form>
</div>
</div>
<div class="col-md-3"></div>

</div>
<script>
function Regform1()
{
var i=document.getElementById("email1").value;
var j=document.getElementById("password1").value;
if(i=="")
{
alert("please fill email");
return false;
}
else if(j=="")
{
alert("plese enter the password");
return false;
}
 else {
return true;
}
}
</script>




</body>
</html>