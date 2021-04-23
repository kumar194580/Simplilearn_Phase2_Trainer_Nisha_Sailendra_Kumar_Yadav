<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="StyleSheets/IntroPage.css" rel="stylesheet" type="text/css">

<style type="text/css">
	#detailbox
	{
		padding:50px 400px;
	}
	input
	{
		margin:0px 0px 10px 0px
	}
	#title
	{
		font-size:32px;
		padding:20px;
		text-align:center;
		background-color:#4b778d;
		font-weight:600px;
		font-family:'Montserrat',sans-serif;
		color:white;
	}
</style>

</head>
<body>
	<div id="title">
		<h2 style="text-align:center">Add New Flights</h2>
	</div>
	<div id="detailbox">
		<form action="addflight" method="post">
			<label class="formlabel">FlightId</label>
			<input type="number" name="flightid" class="form-control" required>
			<label class="formlabel">Name</label>
			<input type="text" name="name" class="form-control" required>
			<label class="formlabel">Source</label>
			<input type="text" name="source" class="form-control" required>
			<label class="formlabel">Destination</label>
			<input type="text" name="destination" class="form-control" required>
			<label class="formlabel">Day</label>
			<input type="text" name="day" class="form-control" required>
			<label class="formlabel">Price</label>
			<input type="number" name="ticketprice" class="form-control" required>
			<input type="submit" id="cdbtn" class="btn btn-primary">
		</form>
	</div>
</body>
</html>