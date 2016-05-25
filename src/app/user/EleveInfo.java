package app.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class EleveInfo {
	private Statement statement;
	private ResultSet resultat;
	private Connection connexion;

	public void close() {
		try {
			if (resultat != null) {
				resultat.close();
			}
			if (statement != null) {
				statement.close();
			}
			if (connexion != null) {
				connexion.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	// Update User
	public boolean updateUser(String userId, String statut, String prenom, String password, String nom, String email,
			String groupe, String datenaissance) {
		boolean flag = false;
		try {
			connexion = new DBaccess().getConnexion();
			statement = connexion.createStatement();

			int update = statement.executeUpdate("update table_utilisateur1 set nom='" + nom + "',prenom='" + prenom
					+ "',date_de_naissance='" + datenaissance + "',mail='" + email + "',groupe='" + groupe
					+ "',statut='" + statut + "',password='" + password + "' where userid = '" + userId + "'");
			if (update == 1) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return flag;
	}

	// Show Student's profile
	
	public ArrayList<UserBean> showEleveProfil() {
		ArrayList<UserBean> alist = new ArrayList<UserBean>();
		try {
			connexion = new DBaccess().getConnexion();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("SELECT * FROM table_utilisateur1");
			while (resultat.next()) {
				UserBean ub = new UserBean();
				ub.setUserid(resultat.getInt("userid"));
				ub.setNom(resultat.getString("nom"));
				ub.setPrenom(resultat.getString("prenom"));
				ub.setMail(resultat.getString("mail"));
				ub.setGroupe(resultat.getString("groupe"));
				ub.setStatut(resultat.getString("statut"));
				
				alist.add(ub);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return alist;
	}
	public UserBean showEleveProfil(String userid) {
		UserBean ub = new UserBean();
		try {
			connexion = new DBaccess().getConnexion();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("SELECT * FROM table_utilisateur1 where userid='"+userid+"'");
			while (resultat.next()) {
				ub.setUserid(resultat.getInt("userid"));
				ub.setNom(resultat.getString("nom"));
				ub.setPrenom(resultat.getString("prenom"));
				ub.setMail(resultat.getString("mail"));
				ub.setGroupe(resultat.getString("groupe"));
				ub.setStatut(resultat.getString("statut"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return ub;
	}

	

}
