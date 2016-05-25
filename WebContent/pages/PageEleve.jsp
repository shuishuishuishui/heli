<%@page import="java.util.ArrayList"%>
<%@page import="app.user.EleveInfo"%>
<%@page import="app.user.UserInfo"%>
<%@page import="app.user.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page Eleve</title>
<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/PageEleve.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
</head>

<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="active"><h3>
						Welcome
						<%=request.getParameter("nom")%><br>
						<%
							UserInfo usfo = new UserInfo();
							String userid = usfo.getUserId(request.getParameter("nom"));
						%>
					</h3></li>
				<li>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li><h4>
						<a href="/Heli/pages/login_E.jsp">Login out! Welcome back! </a>
					</h4></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<div style="width: 1000px; height: 600px; background: #F0FFFF;">
			<ul id="faceul">
				<li><form action="/Heli/pages/PageEleveProfil.jsp?userid=<%=userid %>"
						method="post">
						<button class="btn btn-success" style="height: 65px;width:150px;">
							<strong>Show My Profile</strong>
						</button>
					</form></li>
				<li><form action="/Heli/pages/PageEleveSkill.jsp" method="post">
						<button class="btn btn-success" style="height: 65px;width:150px;">
							<strong>Show My Skill</strong>
						</button>
					</form></li>
				<li>
					<form>
						<button class="btn btn-success" style="height: 65px;width:150px;">
							<strong>Show My File</strong>
						</button>
					</form>
				</li>
				<li>
					<form>
						<button class="btn btn-success" style="height: 65px;width:150px;">
							<strong>Show My File</strong>
						</button>
					</form>
				</li>
			</ul>
		</div>
		<div class="breadcrumb" style="font-size: 20px;">
			<a href="AddUser.jsp"><span class="glyphicon glyphicon-plus"
				aria-hidden="true"></span> Ajouter un novel utilisateur</a>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>
</body>
</html>