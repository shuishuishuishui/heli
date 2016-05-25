package app.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class CommInfo {
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
			e.printStackTrace();
		}
	}

	// Show name in the table
	public ArrayList<CommBean> showGroupName(String groupe) {
		ArrayList<CommBean> alist = new ArrayList<CommBean>();
		try {
			connexion = new DBaccess().getConnexion();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("SELECT * FROM table_communication where groupe='" + groupe + "'");
			while (resultat.next()) {
				CommBean cb = new CommBean();
				cb.setNom(resultat.getString("nom"));
				cb.setPrenom(resultat.getString("prenom"));
				alist.add(cb);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return alist;
	}

	public boolean addComm(int ecouter, int dialoguer, int communiquer_oral, int communiquer_ecrit,String nom) {
		boolean flag = false;
		try {
			connexion = new DBaccess().getConnexion();
			statement = connexion.createStatement();

			int add = statement.executeUpdate("update table_communication set ecouter='" + ecouter + "',dialoguer='"
					+ dialoguer + "',communiquer_oral='" + communiquer_oral + "',communiquer_ecrit='"
					+ communiquer_ecrit + "' where nom ='"+nom+"'");

			if (add == 1) {
				flag = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return flag;

	}

}
