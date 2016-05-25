<%@page import="java.util.ArrayList"%>
<%@page import="app.user.UserInfo"%>
<%@page import="app.user.UserBean"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Les Informations</title>
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
			<!-- ç³»ç»å¾æ ï¼å·¦ä¸è§ -->
			<a class="navbar-brand" href=""><img style="height: 35px;"
				alt="Isep" src="../image/Heliotrope.jpg"></a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			
			<form class="navbar-form navbar-left" role="search" action="">
				<div class="form-group">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" class="form-control" placeholder="Key word"
						style="width: 450px;"></input>
				</div>
				<button type="submit" class="btn btn-default">Search</button>
			</form>

			<!-- å³è¾¹æ  -->
			<ul class="nav navbar-nav navbar-right">
				<li><h4>
						<a href="PagePrincipal.jsp">Return back</a>
					</h4></li>

			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /container fluid --> </nav>

	<div class="container">
		<div class="breadcrumb" style="font-size: 20px;"><a href="AddUser.jsp"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
		Add a new user</a>
		</div>
		<hr>
		<h3 align="center" style="font-weight: bold">Information d'Utilisateur</h3>

		<%
			UserInfo ubc = new UserInfo();
			ArrayList<UserBean> alist = ubc.showUser();
			/* //è°ç¨UserBeanCL çæ¹æ³ï¼åå»ºä¸ä¸ªUserBeanClçå®ä¾å¯¹è±¡ï¼ç¶åè°ç¨ä»çæ¹æ³ï¼å®æåé¡µæ¾ç¤º
				ArrayList<UserBean> alist = (ArrayList<UserBean>)request.getAttribute("result"); */
		%>
		<table class="table table-bordered table-hover table-condensed"
			border="1px" style="background-color:#FFEBCD"  >
			<tr class="info" style="font-size: 18px;height:45px;">
				<th>UserId</th>
				<th>Nom</th>
				<th>Prenom</th>
			<!-- 	<th>Date de Naissance</th> -->
				<th>Email</th>
				<th>Groupe</th>
				<th>Statut</th>
				<th>Password</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<%
				for (int i = 0; i < alist.size(); i++) {
					//ä»alistä¸­ååºuserbean
					UserBean ub = (UserBean) alist.get(i);
			%>
			<tr>
				<td><%=ub.getUserid()%></td>
				<td><%=ub.getNom()%></td>
				<td><%=ub.getPrenom()%></td>
			<%-- 	<td><%=ub.getDate_de_naissance()%></td> --%>
				<td><%=ub.getMail()%></td>
				<td><%=ub.getGroupe()%></td>
				<td><%=ub.getStatut()%></td>
				<td><%=ub.getPassword()%></td>
				<td><a
					href="UpdateUser.jsp?userID=<%=ub.getUserid()%>&nom=<%=ub.getNom()%>
					&password=<%=ub.getPassword()%>&prenom=<%=ub.getPrenom()%>&mail=<%=ub.getMail()%>&groupe=<%=ub.getGroupe()%>
					&statut=<%=ub.getStatut()%>&datenaissance=<%=ub.getDate_de_naissance()%>">Update</a></td>
				<td><a href="../UserServlet?flag=delUser&userId=<%= ub.getUserid()%>">Delete</a></td>
			</tr>
			<%
				}
			%>
		</table>
		<div class="col-sm-2"></div>
		<form action="UserInfoGroup.jsp" method="post" >
			<label>
				<button class="btn btn-default" type="submit" style="width: 155px;font-weight: bold">Show by Group</button>
			</label>
		</form>
	</div>


</body>

</html>