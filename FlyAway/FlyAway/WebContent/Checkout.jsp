<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="StyleSheets/IntroPage.css" rel="stylesheet" type="text/css">

<style>
	#title
	{
		font-size:32px;
		padding:20px;
		text-align:center;
		background-color:#4b778d;
		font-weight:600px;
		font-family:'Montserrat',sans-serif;
	}
#detailbox
{
	padding:80px 350px;
	height:100vh;
	background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
	
}
input,select
{
	margin-bottom:10px;
}
label,.whitebig
{
	color:black;
	font-size:22px;
	font-weight:600;
}
#cdbtn
{
	margin:20px;
	float:right;
}
	
</style>
</style>

</head>
<body>
	<div id="title">
		<h2 style="text-align:center;color:white;">Checkout</h2>
	</div>
		<div id="detailbox" class="bgcolor">
		<form action="receiptpage" method="post">
			<label class="formlabel">Card Name</label>
				<input type="text" class="form-control" name="cardname" required>
			<label class="formlabel">Card Number</label>
				<input type="text"class="form-control"  name="cardno" autocomplete="off" required>
			<label class="formlabel">CVV</label>
				<input type="text" class="form-control" autocomplete="off" required>
			<label class="formlabel">Card Holder Name</label>
				<input type="text" class="form-control" autocomplete="off" required>
			
			<input type="submit" id="cdbtn" class="btn btn-primary">
		</form>
	</div>
</body>
</html>