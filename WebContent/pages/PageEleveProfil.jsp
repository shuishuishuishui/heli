<%@page import="java.util.ArrayList"%>
<%@page import="app.user.EleveInfo"%>
<%@page import="app.user.UserInfo"%>
<%@page import="app.user.UserBean"%>
<%@page import="java.util.ListIterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profil d'Eleve</title>
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
	<div class="container" style="margin-top: 40px; background: #F0FFFF;width: 1000px;">
		<h2
			style="font-family: georgia; font-weight: bold; font-style: italic;">My
			Profile</h2>
		<hr>

		<%
			//int userid = Integer.parseInt(request.getParameter("userid"));
			String userid = request.getParameter("userid");
			/* EleveInfo eli = new EleveInfo();
			ArrayList<UserBean> alist = eli.showEleveProfilID(userid);
			ListIterator<UserBean> userProfil = alist.listIterator();
			while (userProfil.hasNext()) {
				UserBean ub = (UserBean) userProfil.next(); */
				
			EleveInfo eli = new EleveInfo();
			UserBean ub = eli.showEleveProfil(userid);
				
		%>
		<%=userid %>
		<%-- <%
		int i  = 0;
			EleveInfo eli = new EleveInfo();
			ArrayList<UserBean> alist1 = eli.showEleveProfil();
			UserBean ub = (UserBean)  alist1.get(i);
		%> --%>
		<div class="form-group">
			<div class="col-sm-1"></div>
			<div class="col-sm-4">
				<img src="<%-- <%=ub.getImage()%> --%>" width="210px"
					style="border: solid 2px #660033; border-radius: 0px; height: 270px;">
			</div>
			<div class="form-group">

				<label for="txtId" class="col-sm-2 control-label">User Id</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" readonly="readonly"
						id="txtName" name="userId" value="<%=ub.getUserid()%>"></input>
				</div>

			</div>
			<br> <br>

			<div class="form-group">
				<label for="txtNom" class="col-sm-2 control-label">Nom</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="txtNom" name="nom"
						readonly="readonly" value="<%=ub.getNom()%>"></input>
				</div>
			</div>
			<br> <br>
			<div class="form-group">
				<label for="txtPrenom" class="col-sm-2 control-label">Prenom</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="txtPrenom"
						readonly="readonly" name="prenom" value="<%=ub.getPrenom()%>"></input>
				</div>
			</div>
			<br> <br>
			<div class="form-group">
				<label for="InputMail" class="col-sm-2 control-label">E-mail</label>
				<div class="col-sm-4">
					<input id="InputMail" class="form-control" type="email" name="mail"
						readonly="readonly" value="<%=ub.getMail()%>"></input>
				</div>
			</div>
			<br> <br>
			<div class="form-group">
				<label for="txtGroupe" class="col-sm-2 control-label">Groupe</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="txtGroupe" name="group"
						readonly="readonly" value="<%=ub.getGroupe()%>"></input>
				</div>
			</div>
			<br> <br>
			<div class="form-group">
				<label for="txtDate" class="col-sm-2 control-label">Tuteur</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="txtDate" name="tuteur"
						readonly="readonly"<%-- value="<%=ub.getTuteur()%> --%>></input>
				</div>
			</div>

		</div>
		<hr>
		<div class="form-group">
			<div class="col-sm-5 "></div>
			<label for="txtDate" class="col-sm-2 control-label">Commentaires</label>
			<div class="col-sm-5">
				<input class="form-control" id="txtCommentaire" name="commmentaire"
					readonly="readonly"<%-- value="<%=ub.getCommentaire()%>" --%>></input>
			</div>
		</div>
		
		<%-- <%
			}
		%> --%>
	</div>
	<form action="PageEleve.jsp" method="post">
		<div class="col-sm-2"></div>
		<label>
			<button class="btn btn-default" type="submit" style="width: 155px;">Return
				Back</button>
		</label>
	</form>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>
</body>
</html>