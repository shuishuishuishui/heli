<%@page import="java.util.ArrayList"%>
<%@page import="app.user.CommInfo"%>
<%@page import="app.user.UserInfo"%>
<%@page import="app.user.CommBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

<title>Table Communication</title>
</head>
<body>
	<div class="container" style="margin-top: 40px;">
		<%
			CommInfo cif = new CommInfo();
			String groupe = "A";
			ArrayList<CommBean> alist = cif.showGroupName(groupe);

			String nom0 = alist.get(0).getNom();
			String nom1 = alist.get(1).getNom();
			String nom2 = alist.get(2).getNom();
			String nom3 = alist.get(3).getNom();
			String nom4 = alist.get(4).getNom();
			String nom5 = alist.get(5).getNom();
		%>
		<form
			action="../TableServlet?flag=saveCom&nom0=<%=nom0%>&nom1=<%=nom1%>&nom2=<%=nom2%>&nom3=<%=nom3%>&nom4=<%=nom4%>&nom5=<%=nom5%>"
			method="post">
			<table class="table table-bordered table-hover table-condensed">
				<caption style="font-size: 25px;">Évaluation de
					l'Apprentissage Par Projet par l'Approche Par Compétence</caption>
				<thead>
					<tr>
						<th colspan="8" class="info" style="font-size: 18px;">1 -
							Agir en bon communicant dans un environnement scientifique et
							technique</th>

					</tr>
					<tr class="info">
						<th rowspan="2" width="24%">&nbsp;</th>
						<th rowspan="2" width="15%">Observations sur l'équipe</th>
					<!-- 	<th rowspan="2" width="13%">Observations individuelles</th> -->
						<th colspan="5">Niveau individuel</th>
						<th rowspan="2" width="15%">Étudiants</th>
					</tr>
					<tr class="info">
						<td width="4%">Non acquis</td>
						<td width="4%">B : en cours d'acquisition</td>
						<td width="4%">B : acquis</td>
						<td width="4%">I : en cours d'acquistion</td>
						<td width="4%">I : acquis</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="3" class="success">Écouter et se faire écouter</td>
						<td rowspan="7"><input type="text" placeholder="commentaire"
							style="height: 180px; width: 150px;" name="ecouter"></td>
						
						<td><input type='checkbox' name="e1" value="1" /></td>
						<td><input type='checkbox' name="e1" value="2" /></td>
						<td><input type='checkbox' name="e1" value="3" /></td>
						<td><input type='checkbox' name="e1" value="4" /></td>
						<td><input type='checkbox' name="e1" value="5" /></td>
						<td><%=alist.get(0).getNom()%>&nbsp;<%=alist.get(0).getPrenom()%></td>
					</tr>
					<tr>
						
						<td><input type='checkbox' name="e2" value="1" /></td>
						<td><input type='checkbox' name="e2" value="2" /></td>
						<td><input type='checkbox' name="e2" value="3" /></td>
						<td><input type='checkbox' name="e2" value="4" /></td>
						<td><input type='checkbox' name="e2" value="5" /></td>
						<td><%=alist.get(1).getNom()%>&nbsp;<%=alist.get(1).getPrenom()%></td>
					</tr>
					<tr>
						
						<td><input type='checkbox' name="e3" value="1" /></td>
						<td><input type='checkbox' name="e3" value="2" /></td>
						<td><input type='checkbox' name="e3" value="3" /></td>
						<td><input type='checkbox' name="e3" value="4" /></td>
						<td><input type='checkbox' name="e3" value="5" /></td>
						<td><%=alist.get(2).getNom()%>&nbsp;<%=alist.get(2).getPrenom()%></td>
					</tr>
					<tr>
						<td rowspan="2" class="access">B : être disposé à l'écoute et
							être capable d'exposer son point de vue</td>

						<td><input type='checkbox' name="e4" value="1" /></td>
						<td><input type='checkbox' name="e4" value="2" /></td>
						<td><input type='checkbox' name="e4" value="3" /></td>
						<td><input type='checkbox' name="e4" value="4" /></td>
						<td><input type='checkbox' name="e4" value="5" /></td>
						<td><%=alist.get(3).getNom()%>&nbsp;<%=alist.get(3).getPrenom()%></td>
					</tr>
					<tr>
						<td><input type='checkbox' name="e5" value="1" /></td>
						<td><input type='checkbox' name="e5" value="2" /></td>
						<td><input type='checkbox' name="e5" value="3" /></td>
						<td><input type='checkbox' name="e5" value="4" /></td>
						<td><input type='checkbox' name="e5" value="5" /></td>
						<td><%=alist.get(4).getNom()%>&nbsp;<%=alist.get(4).getPrenom()%></td>
					</tr>
					<tr>
						<td rowspan="2">I : admettre que l'autre peut avoir raison et
							maintenir l'intérêt de son auditoire</td>
						<td><input type='checkbox' name="e6" value="1" /></td>
						<td><input type='checkbox' name="e6" value="2" /></td>
						<td><input type='checkbox' name="e6" value="3" /></td>
						<td><input type='checkbox' name="e6" value="4" /></td>
						<td><input type='checkbox' name="e6" value="5" /></td>
						<td><%=alist.get(5).getNom()%>&nbsp;<%=alist.get(5).getPrenom()%></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>&nbsp;</td>
					</tr>
					<!-- 框二  -->
					<tr>
						<td rowspan="3" class="success">Dialoguer, argumenter et
							convaincre</td>
						<td rowspan="7"><input type="text" placeholder="commentaire"
							style="height: 180px; width: 150px;" name="dialoguer"></td>
						<td><input type='checkbox' name="d1" value="1" /></td>
						<td><input type='checkbox' name="d1" value="2" /></td>
						<td><input type='checkbox' name="d1" value="3" /></td>
						<td><input type='checkbox' name="d1" value="4" /></td>
						<td><input type='checkbox' name="d1" value="5" /></td>
						<td><%=alist.get(0).getNom()%>&nbsp;<%=alist.get(0).getPrenom()%></td>
					</tr>
					<tr>
						<td><input type='checkbox' name="d2" value="1" /></td>
						<td><input type='checkbox' name="d2" value="2" /></td>
						<td><input type='checkbox' name="d2" value="3" /></td>
						<td><input type='checkbox' name="d2" value="4" /></td>
						<td><input type='checkbox' name="d2" value="5" /></td>
						<td><%=alist.get(1).getNom()%>&nbsp;<%=alist.get(1).getPrenom()%></td>
					</tr>
					<tr>
						<td><input type='checkbox' name="d3" value="1" /></td>
						<td><input type='checkbox' name="d3" value="2" /></td>
						<td><input type='checkbox' name="d3" value="3" /></td>
						<td><input type='checkbox' name="d3" value="4" /></td>
						<td><input type='checkbox' name="d3" value="5" /></td>
						<td><%=alist.get(2).getNom()%>&nbsp;<%=alist.get(2).getPrenom()%></td>
					</tr>
					<tr>
						<td rowspan="2" class="access">B : savoir réunir les
							conditions d'un dialogue et l'engager</td>

						<td><input type='checkbox' name="d4" value="1" /></td>
						<td><input type='checkbox' name="d4" value="2" /></td>
						<td><input type='checkbox' name="d4" value="3" /></td>
						<td><input type='checkbox' name="d4" value="4" /></td>
						<td><input type='checkbox' name="d4" value="5" /></td>
						<td><%=alist.get(3).getNom()%>&nbsp;<%=alist.get(3).getPrenom()%></td>
					</tr>
					<tr>
						<td><input type='checkbox' name="d5" value="1" /></td>
						<td><input type='checkbox' name="d5" value="2" /></td>
						<td><input type='checkbox' name="d5" value="3" /></td>
						<td><input type='checkbox' name="d5" value="4" /></td>
						<td><input type='checkbox' name="d5" value="5" /></td>
						<td><%=alist.get(4).getNom()%>&nbsp;<%=alist.get(4).getPrenom()%></td>
					</tr>
					<tr>
						<td rowspan="2">I : avancer des arguments convaincants qui
							font évoluer les positions des différents interlocuteurs</td>
						<td><input type='checkbox' name="d6" value="1" /></td>
						<td><input type='checkbox' name="d6" value="2" /></td>
						<td><input type='checkbox' name="d6" value="3" /></td>
						<td><input type='checkbox' name="d6" value="4" /></td>
						<td><input type='checkbox' name="d6" value="5" /></td>
						<td><%=alist.get(5).getNom()%>&nbsp;<%=alist.get(5).getPrenom()%></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>&nbsp;</td>
					</tr>
					<!--框三  -->
					<tr>
						<td rowspan="3" class="success">Communiquer à l'oral</td>
						<td rowspan="7"><input type="text" placeholder="commentaire"
							style="height: 180px; width: 150px;" name="commo"></td>
						<td><input type='checkbox' name="co1" value="1" /></td>
						<td><input type='checkbox' name="co1" value="2" /></td>
						<td><input type='checkbox' name="co1" value="3" /></td>
						<td><input type='checkbox' name="co1" value="4" /></td>
						<td><input type='checkbox' name="co1" value="5" /></td>
						<td><%=alist.get(0).getNom()%>&nbsp;<%=alist.get(0).getPrenom()%></td>
					</tr>
					<tr>
						<td><input type='checkbox' name="co2" value="1" /></td>
						<td><input type='checkbox' name="co2" value="2" /></td>
						<td><input type='checkbox' name="co2" value="3" /></td>
						<td><input type='checkbox' name="co2" value="4" /></td>
						<td><input type='checkbox' name="co2" value="5" /></td>
						<td><%=alist.get(1).getNom()%>&nbsp;<%=alist.get(1).getPrenom()%></td>
					</tr>
					<tr>
						<td><input type='checkbox' name="co3" value="1" /></td>
						<td><input type='checkbox' name="co3" value="2" /></td>
						<td><input type='checkbox' name="co3" value="3" /></td>
						<td><input type='checkbox' name="co3" value="4" /></td>
						<td><input type='checkbox' name="co3" value="5" /></td>
						<td><%=alist.get(2).getNom()%>&nbsp;<%=alist.get(2).getPrenom()%></td>
					</tr>
					<tr>
						<td rowspan="2" class="access">B : Savoir communiquer, de
							façon claire et structurée, en français ou en anglais, sur un
							sujet technique</td>

						<td><input type='checkbox' name="co4" value="1" /></td>
						<td><input type='checkbox' name="co4" value="2" /></td>
						<td><input type='checkbox' name="co4" value="3" /></td>
						<td><input type='checkbox' name="co4" value="4" /></td>
						<td><input type='checkbox' name="co4" value="5" /></td>
						<td><%=alist.get(3).getNom()%>&nbsp;<%=alist.get(3).getPrenom()%></td>
					</tr>
					<tr>
						<td><input type='checkbox' name="co5" value="1" /></td>
						<td><input type='checkbox' name="co5" value="2" /></td>
						<td><input type='checkbox' name="co5" value="3" /></td>
						<td><input type='checkbox' name="co5" value="4" /></td>
						<td><input type='checkbox' name="co5" value="5" /></td>
						<td><%=alist.get(4).getNom()%>&nbsp;<%=alist.get(4).getPrenom()%></td>
					</tr>
					<tr>
						<td rowspan="2">I : Et analyser et synthétiser ses idées
							scientifiques de façon pertinente tout en s'adaptant à son public</td>
						<td><input type='checkbox' name="co6" value="1" /></td>
						<td><input type='checkbox' name="co6" value="2" /></td>
						<td><input type='checkbox' name="co6" value="3" /></td>
						<td><input type='checkbox' name="co6" value="4" /></td>
						<td><input type='checkbox' name="co6" value="5" /></td>
						<td><%=alist.get(5).getNom()%>&nbsp;<%=alist.get(5).getPrenom()%></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>&nbsp;</td>
					</tr>
					<!--  框4-->
					<tr>
						<td rowspan="3" class="success">Communiquer à l'écrit</td>
						<td rowspan="7"><input type="text" placeholder="commentaire"
							style="height: 180px; width: 150px;" name="comme"></td>
						<td><input type='checkbox' name="ce1" value="1" /></td>
						<td><input type='checkbox' name="ce1" value="2" /></td>
						<td><input type='checkbox' name="ce1" value="3" /></td>
						<td><input type='checkbox' name="ce1" value="4" /></td>
						<td><input type='checkbox' name="ce1" value="5" /></td>
						<td><%=alist.get(0).getNom()%>&nbsp;<%=alist.get(0).getPrenom()%></td>
					</tr>
					<tr>
						<td><input type='checkbox' name="ce2" value="1" /></td>
						<td><input type='checkbox' name="ce2" value="2" /></td>
						<td><input type='checkbox' name="ce2" value="3" /></td>
						<td><input type='checkbox' name="ce2" value="4" /></td>
						<td><input type='checkbox' name="ce2" value="5" /></td>
						<td><%=alist.get(1).getNom()%>&nbsp;<%=alist.get(1).getPrenom()%></td>
					</tr>
					<tr>
						<td><input type='checkbox' name="ce3" value="1" /></td>
						<td><input type='checkbox' name="ce3" value="2" /></td>
						<td><input type='checkbox' name="ce3" value="3" /></td>
						<td><input type='checkbox' name="ce3" value="4" /></td>
						<td><input type='checkbox' name="ce3" value="5" /></td>
						<td><%=alist.get(2).getNom()%>&nbsp;<%=alist.get(2).getPrenom()%></td>
					</tr>
					<tr>
						<td rowspan="2" class="access">B : Savoir communiquer, de
							façon claire et structurée, en français ou en anglais, sur un
							sujet technique</td>

						<td><input type='checkbox' name="ce4" value="1" /></td>
						<td><input type='checkbox' name="ce4" value="2" /></td>
						<td><input type='checkbox' name="ce4" value="3" /></td>
						<td><input type='checkbox' name="ce4" value="4" /></td>
						<td><input type='checkbox' name="ce4" value="5" /></td>
						<td><%=alist.get(3).getNom()%>&nbsp;<%=alist.get(3).getPrenom()%></td>
					</tr>
					<tr>
						<td><input type='checkbox' name="ce5" value="1" /></td>
						<td><input type='checkbox' name="ce5" value="2" /></td>
						<td><input type='checkbox' name="ce5" value="3" /></td>
						<td><input type='checkbox' name="ce5" value="4" /></td>
						<td><input type='checkbox' name="ce5" value="5" /></td>
						<td><%=alist.get(4).getNom()%>&nbsp;<%=alist.get(4).getPrenom()%></td>
					</tr>
					<tr>
						<td rowspan="2">I : Et analyser et synthétiser ses idées
							scientifiques de façon pertinente tout en s'adaptant à son public</td>
						<td><input type='checkbox' name="ce6" value="1" /></td>
						<td><input type='checkbox' name="ce6" value="2" /></td>
						<td><input type='checkbox' name="ce6" value="3" /></td>
						<td><input type='checkbox' name="ce6" value="4" /></td>
						<td><input type='checkbox' name="ce6" value="5" /></td>
						<td><%=alist.get(5).getNom()%>&nbsp;<%=alist.get(5).getPrenom()%></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>&nbsp;</td>
					</tr>
				</tbody>

			</table>

			<div class="col-sm-2"></div>
			<label>
				<button class="btn btn-default" type="submit" style="width: 155px;">Save</button>
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