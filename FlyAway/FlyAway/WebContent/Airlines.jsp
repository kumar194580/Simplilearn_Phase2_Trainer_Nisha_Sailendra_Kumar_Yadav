<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="StyleSheets/IntroPage.css" rel="stylesheet" type="text/css">

<style>
	#header,#table_title
{
    text-align: center;
    padding:20px 0px 40px 0px;
}
#subgroup
{
    width: 100%;
}
#subgroup .btn
{
	margin:50px 20px 20px 20px;
	width:200px;
}
#table
{
	width:100%;
	height:100vh;
	padding: 20px 20px;
}
</style>

</head>
<body>
		<div id="header">
			<h1>Admin Dashboard</h1>
		</div>
		<div  id="table">
		<h3 id="table_title">Airlines Database Table</h3>
		<table class="table">
  			<thead>
    			<tr>
      		<th scope="col">Id</th>
      		<th scope="col">Airlines</th>
    			</tr>
  			</thead>
  			<tbody>
  			<%
  			try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway","root","Mannheim@99");
	//Connection con=DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/y8Di6i7cMc","y8Di6i7cMc","UDRMxsodUY");
	//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/phase2_project1","root","rootraja");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from airlines");
	while(rs.next())
	{
%>		
	
  				<tr>
  					<th><%=rs.getString("Id") %></th>
  					<th><%=rs.getString("Airline") %></th>
  				</tr>
  <%}}catch(Exception e)
  			{
	  System.out.print(e);
  			}
%>
  			</tbody>
  		</table>
	</div>
		
		
</body>
</html>