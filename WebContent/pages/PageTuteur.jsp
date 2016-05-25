<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page Tuteur</title>
<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">

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
			<!-- <div class="navbar-header">
			<a class="navbar-brand" href=""><img style="height: 38px;"
				alt="Isep" src="../image/Heliotrope.jpg"></a>
		</div> -->

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
					<li class="active"><h3>
							Welcome
							<%=request.getParameter("nom")%>&nbsp;!<br>
						</h3></li>
					<li>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</li>
				</ul>

				<!-- Search -->
				<form class="navbar-form navbar-left" role="search" action="">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Key word"
							style="width: 450px;"></input>
					</div>
					<button type="submit" class="btn btn-default">Search</button>
				</form>

				<ul class="nav navbar-nav navbar-right">
					<li><h4>
							<a href="/Heli/pages/login_E.jsp">Login out,Welcome Back!</a>
						</h4></li>

				</ul>
			</div>
		</div>
		<!-- /container fluid -->
	</nav>

	<div class="container"
		style="width: 1000px; height: 600px; background: #F0FFFF;">
		<form action="/Heli/pages/PageTuteurInfo.jsp"
			style="margin-top: 45px;">
			<button class="btn btn-success" style="height: 55px;">Show
				Students' Information</button>
		</form>
		<br>
		<div class="btn-group">
			<button type="button" class="btn btn-success dropdown-toggle"
				style="height: 50px; width: 200px;" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">
				Students' Skill&nbsp;&nbsp;<span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="">All the groups</li>
				<li><button type="button"
						class="btn btn-default dropdown-toggle"
						style="height: 50px; width: 200px;" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
						Group A&nbsp;&nbsp;<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="">Communication</li>
						<li>Communication</li>
						<li>Communication</li>
						<li>Communication</li>				
					
					</ul>
					
					</li>
				<li><a href="">Group B</li>
				<li><a href="">Group C</li>
				<!--   <li role="separator" class="divider"><a href =""></li> -->

			</ul>
		</div>
		<hr>
		Page for Teacher



	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

	<script src="../js/bootstrap.min.js"></script>
</body>

</html>