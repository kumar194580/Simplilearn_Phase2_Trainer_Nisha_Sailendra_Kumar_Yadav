<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Flights</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="StyleSheets/IntroPage.css" rel="stylesheet" type="text/css">

<style>
	.custom-select
{
	width:100%;
}
#bookingform
{
	padding:160px 350px;
	height:100vh;
}
#sfbtn
{
	margin:20px;
	float:right;
}
.bgcolor
{
	height:100vh;
	 background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.6)),url('StyleSheets/images/airlinelist.jpg'); 
	background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
#adminbg
{
	margin:0px;
	background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.6)),url('StyleSheets/images/airlinelist.jpg'); 
	background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
input,select
{
	margin-bottom:10px;
}
label,
{
	color:white;
	font-size:22px;
	font-weight:600;
}
.whitebig
{
	color:black;
	font-size:22px;
	font-weight:600;
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
#tablecont
{
	margin:20px 10px;
}
</style>

</head>
<body>
<div  id="table" >
	<div id="title">
		<h2 id="table_title" style="color:white;text-align:center; padding:10px 0px 10px 0px; font-weight:800;">Flight Database Table</h2>
	</div>
		<table id="tablecont" class="table whitebig">
  			<thead>
    			<tr>
    		<th  scope="col">Flight Id</th>
      		<th scope="col">Flight</th>
      		<th scope="col">Source</th>
      		<th scope="col">Destination</th>
      		<th scope="col">Date</th>
      		<th scope="col">Ticket Price</th>
      		<th scope="col">Book</th>
    			</tr>
  			</thead>
  			<tbody>
	<%
	try{
		String a=request.getParameter("day");
		String arr[]=a.split(" ");
		System.out.println(arr[0]+" "+arr[1]+" "+arr[2]+" "+arr[3]+" "+arr[4]);
	
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway","root","Mannheim@99");
	//	Connection con=DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/y8Di6i7cMc","y8Di6i7cMc","UDRMxsodUY");
	//	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/phase2_project1","root","rootraja");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from flights where Source='"+arr[1]+"' and Destination='"+arr[2]+"' and Day='"+arr[0]+"'");
		String ticketprice=null;
		String name=null;
		while(rs.next())
		{
				
		/*	name=rs.getString("Name");
			ticketprice=rs.getString("TicketPrice");
			HttpSession Session=request.getSession();
			Session.setAttribute("name", name);
			Session.setAttribute("ticketprice", ticketprice);     */
				
		%>
			<tr>
  					<th><%=rs.getInt("FlighId") %></th>
  					<th><%=rs.getString("Name") %></th>
  					<th><%=rs.getString("Source") %></th>
  					<th><%=rs.getString("Destination") %></th>
  					<th><%=arr[4]%></th>
  					<th><%=rs.getString("Price") %></th>
  					<th><a href="CustomerDetail.jsp?msg=<%=rs.getInt("FlighId")%>"><button class="btn btn-primary">Book This Flight</button></a></th>
  				</tr>
  			
  		<%

			}	
	}catch(Exception e)
	{
		System.out.print(e);
	}
	%>
			</tbody>
  		</table>
	</div>
	
</body>
</html>