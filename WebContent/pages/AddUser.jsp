<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>Add a new user</title>
</head>
<body>
	<div class="container" style="margin-top: 40px; background: #F0FFFF;">
		<h2 style="margin-left: 90px">Please Input User's Information</h2>
		<hr>
		<form action="../UserServlet?flag=addUser" method="post">

			<div class="form-group">
				<div class="col-sm-2"></div>
				<label for="txtId" class="col-sm-2 control-label">User Id</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="txtName" name="userId"
						placeholder="User ID"></input>
				</div>
			</div>
			<br> <br>
			<div class="form-group">
				<div class="col-sm-2"></div>
				<label for="txtNom" class="col-sm-2 control-label">Nom</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="txtNom" name="nom"
						placeholder="Nom"></input>
				</div>
			</div>
			<br> <br>
			<div class="form-group">
				<div class="col-sm-2"></div>
				<label for="txtPrenom" class="col-sm-2 control-label">Prenom</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="txtPrenom"
						name="prenom" placeholder="Prenom"></input>
				</div>
			</div>
			<br> <br>
			<div class="form-group">
				<div class="col-sm-2"></div>
				<label for="InputMail" class="col-sm-2 control-label">E-mail</label>
				<div class="col-sm-6">
					<input id="InputMail" class="form-control" type="email" name="mail"
						placeholder="E-mail"></input>
				</div>
			</div>
			<br> <br>
			<div class="form-group">
				<div class="col-sm-2"></div>
				<label for="txtGroupe" class="col-sm-2 control-label">Groupe</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="txtGroupe" name="group"
						placeholder="Groupe"></input>
				</div>
			</div>
			<br> <br>
			<div class="form-group">
				<div class="col-sm-2"></div>
				<label for="InputPass" class="col-sm-2 control-label">Password</label>
				<div class="col-sm-6">
					<input id="InputPass" class="form-control" type="text"
						name="password" placeholder="********"></input>
				</div>
			</div>
			<br> <br>
			<!-- <div class="form-group">
				<div class="col-sm-2"></div>
				<label for="txtDate" class="col-sm-2 control-label">Date de
					Naissance</label>
				<div class="col-sm-6">
					<input type="date" class="form-control" id="txtDate" name="ddn"></input>
				</div>
			</div>
			<br> <br>  -->
			<div class="col-sm-2"></div>
			<label for="txtStatut" class="col-sm-2 control-label">Statut</label>
			<div class="col-sm-6">
				<select name="statut" class="form-control selectpicker">
					<option value="responsable">Responsable</option>
					<option value="tuteur">Tuteur</option>
					<option value="etudiant">Etudiant</option>
				</select>
			</div>
			<br> <br>
			<br>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-6">
					<label>
						<button class="btn btn-success" type="submit"
							style="width: 155px;">Add User</button>
					</label> 
					<label>
						<button class="btn btn-warning" type="reset" style="width: 155px;">Reset</button>
					</label>
				</div>
			</div>

		</form>
		<form action="welPage.jsp" method="post">
			<label>
				<button class="btn btn-default" type="submit" style="width: 155px;">Return
					Back</button>
			</label>
		</form>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>