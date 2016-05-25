package app.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class TuteurInfo {
	private Statement statement;
	private ResultSet resultat;
	private Connection connexion;

	// 创建一个关闭资源函数
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

	// Show User's Information
		public ArrayList<UserBean> showUser() {
			ArrayList<UserBean> alist = new ArrayList<UserBean>();
			try {
				connexion = new DBaccess().getConnexion();
				statement = connexion.createStatement();
				resultat = statement.executeQuery("SELECT * FROM table_utilisateur1 where statut ='etudiant'");

				// 开始将resultat封装到ArrayListDemo中
				while (resultat.next()) {
					UserBean ub = new UserBean();
					ub.setUserid(resultat.getInt("userid"));
					ub.setNom(resultat.getString("nom"));
					ub.setPrenom(resultat.getString("prenom"));
					ub.setMail(resultat.getString("mail"));
					ub.setGroupe(resultat.getString("groupe"));
					ub.setStatut(resultat.getString("statut"));
					ub.setPassword(resultat.getString("password"));

					alist.add(ub);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				this.close();
			}
			return alist;
		}
				
		public ArrayList<UserBean> showUserByGroup() {
			ArrayList<UserBean> alist = new ArrayList<UserBean>();
			try {
				connexion = new DBaccess().getConnexion();
				statement = connexion.createStatement();
				resultat = statement.executeQuery("select * from table_utilisateur1 where statut ='etudiant' order by groupe,userid");

				// 开始将resultat封装到ArrayListDemo中
				while (resultat.next()) {
					UserBean ub = new UserBean();
					ub.setUserid(resultat.getInt("userid"));
					ub.setNom(resultat.getString("nom"));
					ub.setPrenom(resultat.getString("prenom"));
					ub.setMail(resultat.getString("mail"));
					ub.setGroupe(resultat.getString("groupe"));
					alist.add(ub);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				this.close();
			}
			return alist;
		}
}

