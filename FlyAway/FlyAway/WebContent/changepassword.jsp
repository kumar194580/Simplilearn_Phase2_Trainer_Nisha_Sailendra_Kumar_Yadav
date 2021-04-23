<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>

<%
	try{
	HttpSession Session=request.getSession();
	String userid=(String)Session.getAttribute("userid");

String password=request.getParameter("newpassword");
	Class.forName("com.mysql.jdbc.Driver");
	//Connection con=DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/y8Di6i7cMc","y8Di6i7cMc","UDRMxsodUY");
	//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/phase2_project1","root","rootraja");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway","root","Mannheim@99");
/*	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("update adminlogin set password='"+password+"' where userid='"+userid+"'");      */	
	PreparedStatement ps=con.prepareStatement("update admin set Password='"+password+"' where Userid='"+userid+"'");
	ps.executeUpdate();
	}catch(Exception e)
{
	System.out.print(e);		
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="StyleSheets/IntroPage.css" rel="stylesheet" type="text/css">

<style>

	#detailbox
	{
		padding:150px 400px;
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
		<h2 style="text-align:center;color:white;">Change Password</h2>
	</div>
	<div id="detailbox">
		<form>
			<label>New Password</label>
			<input type="text" class="form-control" name="newpassword" autocomplete="off" required><br>
			<input type="submit" id="cdbtn" class="btn btn-primary" >
		</form>
	</div>
</body>
</html>