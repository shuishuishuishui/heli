<%@page import="java.util.ArrayList"%>
<%@page import="app.user.TuteurInfo"%>
<%@page import="app.user.UserBean"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Skill for Teacher</title>
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
		<div class="navbar-header">
			<a class="navbar-brand" href=""><img style="height: 35px;"
				alt="Isep" src="../image/Heliotrope.jpg"></a>
		</div>

		<ul class="nav navbar-nav navbar-right">
			<li><h4>
					<a href="PagePrincipal.jsp">Return back</a>
				</h4></li>

		</ul>
	</div>
	</nav>
	<div class="container">		
		<hr>
		<h3 align="center" style="font-weight: bold">Student Information</h3>

		<%
			TuteurInfo tbc = new TuteurInfo();
			ArrayList<UserBean> alist = tbc.showUser();
			
		%>
		<table class="table table-bordered table-hover table-condensed"
			border="1px" style="background-color:#FFEBCD"  >
			<tr class="info" style="font-size: 18px;height:45px;">
				<th>Nom</th>
				<th>Prenom</th>
				<th>Communication</th>
				<th>Travail en equipe</th>
				<th>Conduite de projet</th>
				<th>Professionnel responsable</th>
				<th>evaluation globale</th>
				
			</tr>
<%-- 			<%
				for (int i = 0; i < alist.size(); i++) {
					UserBean ub = (UserBean) alist.get(i);
			%>
			<tr>
				<td><%=ub.getUserid()%></td>
				<td><%=ub.getNom()%></td>
				<td><%=ub.getPrenom()%></td>
				<td><%=ub.getMail()%></td>
				<td><%=ub.getGroupe()%></td>
			</tr>
			<%
				}
			%> --%>
		</table>
		<div class="col-sm-2"></div>
		<form action="/Heli/pages/TuteurInfoGroup.jsp" method="post" >
			<label>
				<button class="btn btn-default" type="submit" style="width: 155px;font-weight: bold">Show by Group</button>
			</label>
		</form>
	</div>


</body>
</html>