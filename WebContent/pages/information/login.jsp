<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="../css/login.css">
<script src="../js/login.js" type="text/javascript" /></script>
</head>
<body>
	<%
		String error = request.getParameter("error");
		if (error != null) {
			if (error.equals("1")) {
				out.println("<font color=red size=5>You fogot to login. Please Login!</font><br>");
			}
		}
	%>
	<section>

	<h2>
		<div id="container"></div>

	</h2>
	<form method="POST" action="../LoginController">
		<input id="inputUser" placeholder='Login' type='text' name="nom">
		<input id="inputPassword" placeholder='Password' type='password'
			name="password">
		<button name="connect" onclick="validateMyForm()">LOGIN</button>
	</form>
	<!-- <button name="connect" onclick="validateMyForm()">LOGIN</button> -->

	</section>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>