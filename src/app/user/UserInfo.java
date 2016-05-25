package app.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class UserInfo {

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

	// Delete User
	public boolean delUserById(String id) {
		boolean flag = false;
		try {
			connexion = new DBaccess().getConnexion();
			statement = connexion.createStatement();

			int del = statement.executeUpdate("delete from table_utilisateur1 where userId='" + id + "'");
			if (del == 1) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return flag;
	}

	// 添加用户
	public boolean addUser(String userId, String statut, String prenom, String password, String nom, String email,
			String groupe) {
		boolean flag = false;
		try {
			// 得到连接
			connexion = new DBaccess().getConnexion();
			statement = connexion.createStatement();

			/*
			 * SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
			 * Date datenaissanceString = simpleDate.parse(datenaissance);
			 * java.sql.Date datenaissanceInDB = new
			 * java.sql.Date(datenaissanceString.getTime());
			 */

			// 执行
			int add = statement.executeUpdate("insert into table_utilisateur1 values ('" + userId + "','" + nom + "','"
					+ prenom + "','" + email + "','" + groupe + "','" + statut + "','" + password + "')");
			if (add == 1) {
				// 添加成功
				flag = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return flag;

	}

	// Update User
	public boolean updateUser(String userId, String statut, String prenom, String password, String nom, String email,
			String groupe) {
		boolean flag = false;
		try {
			connexion = new DBaccess().getConnexion();
			statement = connexion.createStatement();

			int update = statement.executeUpdate("update table_utilisateur1 set nom='" + nom + "',prenom='" + prenom
					+ "',mail='" + email + "',groupe='" + groupe + "',statut='" + statut + "',password='" + password
					+ "' where userid = '" + userId + "'");
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

	// Show User's Information
	public ArrayList<UserBean> showUser() {
		ArrayList<UserBean> alist = new ArrayList<UserBean>();
		try {
			connexion = new DBaccess().getConnexion();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("SELECT * FROM table_utilisateur1 ");

			// 开始将resultat封装到ArrayListDemo中
			while (resultat.next()) {
				UserBean ub = new UserBean();
				ub.setUserid(resultat.getInt("userid"));
				ub.setNom(resultat.getString("nom"));
				ub.setPrenom(resultat.getString("prenom"));

				/*
				 * String date_de_naissance =
				 * resultat.getString("date_de_naissance"); String[] Y =
				 * date_de_naissance.split("-"); int year =
				 * Integer.parseInt(Y[0]); int month = Integer.parseInt(Y[1]);
				 * int day = Integer.parseInt(Y[2]);
				 * 
				 * Date date = new Date(year,month,day); DateFormat formatter =
				 * new SimpleDateFormat("yyyy-MM-dd"); String s =
				 * formatter.format(date); ub.setDate_de_naissance(s);
				 */

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

	// Show user by group,id
	public ArrayList<UserBean> showUserByGroup() {
		ArrayList<UserBean> alist = new ArrayList<UserBean>();
		try {
			connexion = new DBaccess().getConnexion();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("select * from table_utilisateur1 order by groupe,userid,statut");

			// 开始将resultat封装到ArrayListDemo中
			while (resultat.next()) {
				UserBean ub = new UserBean();
				ub.setUserid(resultat.getInt("userid"));
				ub.setNom(resultat.getString("nom"));
				ub.setPrenom(resultat.getString("prenom"));

				/*
				 * String date_de_naissance =
				 * resultat.getString("date_de_naissance"); String[] Y =
				 * date_de_naissance.split("-"); int year =
				 * Integer.parseInt(Y[0]); int month = Integer.parseInt(Y[1]);
				 * int day = Integer.parseInt(Y[2]);
				 * 
				 * Date date = new Date(year,month,day); DateFormat formatter =
				 * new SimpleDateFormat("yyyy-MM-dd"); String s =
				 * formatter.format(date); ub.setDate_de_naissance(s);
				 */

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
	
	// Show user by statut,group
	public ArrayList<UserBean> showUserByStatut() {
		ArrayList<UserBean> alist = new ArrayList<UserBean>();
		try {
			connexion = new DBaccess().getConnexion();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("select * from table_utilisateur1 order by groupe,userid");
			
			// 开始将resultat封装到ArrayListDemo中
			while (resultat.next()) {
				UserBean ub = new UserBean();
				ub.setUserid(resultat.getInt("userid"));
				ub.setNom(resultat.getString("nom"));
				ub.setPrenom(resultat.getString("prenom"));
				
				/*
				 * String date_de_naissance =
				 * resultat.getString("date_de_naissance"); String[] Y =
				 * date_de_naissance.split("-"); int year =
				 * Integer.parseInt(Y[0]); int month = Integer.parseInt(Y[1]);
				 * int day = Integer.parseInt(Y[2]);
				 * 
				 * Date date = new Date(year,month,day); DateFormat formatter =
				 * new SimpleDateFormat("yyyy-MM-dd"); String s =
				 * formatter.format(date); ub.setDate_de_naissance(s);
				 */
				
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

	// 验证用户名和密码是否匹配
	public boolean checkUser(UserBean userInput) throws SQLException {
		String nameInput = userInput.getNom();
		String passWdInput = userInput.getPassword();
		String statusInput = userInput.getStatut();

		boolean passWdFlag = false;
		boolean statusFlag = false;
		try {
			connexion = new DBaccess().getConnexion();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("select * from table_utilisateur1 where nom='" + nameInput + "'");

			if (resultat.next()) {
				String passWdInDB = resultat.getString("password");
				String statusInDB = resultat.getString("statut");

				if (passWdInDB.equals(passWdInput)) {
					passWdFlag = true;
					if (statusInDB.equals(statusInput)) {
						statusFlag = true;
					} else {
						statusFlag = false;
					}
				} else {
					passWdFlag = false;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return passWdFlag && statusFlag;
	}

	public String getUserId(String nameInput) throws SQLException {
		String userid="";
		try {
			connexion = new DBaccess().getConnexion();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("select userid from table_utilisateur1 where nom='" + nameInput + "'");
			while (resultat.next()) {
				userid = resultat.getString("userid");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return userid;
	}

}
