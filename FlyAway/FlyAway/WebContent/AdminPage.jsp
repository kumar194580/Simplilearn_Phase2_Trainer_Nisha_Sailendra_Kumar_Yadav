<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="StyleSheets/IntroPage.css" rel="stylesheet" type="text/css">

<style>
	#loginform
{
    padding:200px 400px;
}
#loginbutton
{
	margin:20px 0px 0px 0px;
}
#title
	{
		font-size:32px;
		padding:20px;
		text-align:center;
		background-color:#4b778d;
		font-weight:600px;
		font-family:'Montserrat',sans-serif;
	}	
</style>

</head>
<body>
	<div id="title">
		<h2 style="text-align:center;color:white;">Admin Login</h2>
	</div>
	<div id="adminbg" >
	<form id="loginform" action="adminlogin" method="post"  autocomplete="off" >
		<label class="form-label">Admin Id</label>
		<input type="text" class="form-control" name="userid" required>
		<label class="form-label">Admin Password</label>
		<input type="text" class="form-control" name="password" required>
		<input type="submit" class="btn btn-primary" id="loginbutton" value="Login">
	</form>
	</div>
</body>
</html>