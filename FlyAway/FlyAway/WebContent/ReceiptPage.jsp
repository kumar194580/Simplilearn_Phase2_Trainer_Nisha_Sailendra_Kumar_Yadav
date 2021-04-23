<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.*" %>
    <%
    	HttpSession Session=request.getSession();
    
    	String name=(String)Session.getAttribute("name");
    	String tp=(String)Session.getAttribute("ticketprice");
    	int ticketprice=Integer.parseInt(tp);
    	int flightid=(int)Session.getAttribute("flightid");
    	String divid=request.getParameter("msg");
    	String data[]=divid.split(" ");
    	System.out.println(data[0]+" "+data[1]+" "+data[2]+" "+data[3]+" "+data[4]+" "+data[5]+" "+data[6]+" "+data[7]);
    	int seat=Integer.parseInt(data[2]);
 		int sum=seat*ticketprice;
    	/* 	*/
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Receipt</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="StyleSheets/IntroPage.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div style="text-align:center">
		<h1>Thank You</h1>
		<p>Your ticket has been booked successfully!</p>
	</div>
	
	<div style="padding:40px 100px">
		<div>
			<h3>TICKET SUMMARY</h3>
			<br>
			<h5><%=data[0]%> to <%=data[1]%> | Date: <%=data[3]%> (<%=data[4]%>)</h5>
			<br>
			<p>No of Seats Booked: <b><%=seat %></b><br>
			   Flight Name: <b><%=name %></b> (Flight Id:<b><%=flightid %></b>)<br><br>
			   Ticket Price: <b>RS.<%=ticketprice %></b>
		</div>
		<br>
		<div>
			<h3>PASSENGER SUMMARY</h3>
			<br>
			<h5>Passenger Name - <%=data[5] %> | EMail - <%=data[6] %> | Phone - <%=data[7] %></h5>
			
		</div>
		<br>
		<h3 style="text-align:right">Total Amount Paid - RS.<%=sum %></h3>
		<button type="button" class="btn btn-dark" onclick="window.print()">Print</button>
	</div>	
</body>
</html>