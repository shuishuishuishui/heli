package app.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBaccess {
	private Connection connexion;
	
	public Connection getConnexion() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connexion = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hang", "hang");
			//System.out.println("oracle jdbc driver loaded");
		} catch (ClassNotFoundException e) {
			System.err.println("jdbc driver for Oracle not found ");
			e.printStackTrace();
		}

		return connexion;
	}


	/*public DBaccess(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("oracle jdbc driver loaded");
		} catch (ClassNotFoundException e) {
			System.err.println("jdbc driver for Oracle not found ");
			System.exit(1);
	}

		try {
			setConnexion(DriverManager.getConnection ("jdbc:oracle:thin:@localhost:1521:XE" , "hang" , "hang"));
			} catch (SQLException e) {
				System.err.println("SQL error " + e.getMessage());
				System.exit(2);
		}
	}

	public Connection getConnexion() {
		return connexion;
	}

	public void setConnexion(Connection connexion) {
		this.connexion = connexion;
	}*/

/*	public void fillPhoneBook(PhoneBook phonebook){
		phonebook.clear();
		try {
			Statement stmt = connexion.createStatement ();
			ResultSet result = stmt.executeQuery("SELECT * FROM WEB_EMPLOYEE");
			while (result.next()){
				int employeeID = result.getInt("EMPLOYEE_ID");
				String lastname = result.getString("LASTNAME");
				String firstname = result.getString("FIRSTNAME");
				int phoneExtension = result.getInt("PHONE_EXTENSION");
				String officeID = result.getString("OFFICE_ID");
				Employee employee = new Employee(employeeID, lastname, firstname, phoneExtension, officeID);
				phonebook.append(employee); // we should not write back the record into the database
			}
			stmt.close();
			} catch (SQLException e){
				e.printStackTrace();
		}
	}
	
	public void insert(Employee employee){
		try {
			String request = "INSERT INTO WEB_EMPLOYEE (EMPLOYEE_ID, LASTNAME, FIRSTNAME, PHONE_EXTENSION, OFFICE_ID) VALUES(?, ?, ?, ?, ?)";
			PreparedStatement stmt = connexion.prepareStatement(request);
			stmt.setInt(1, employee.getEmployeeID());
			stmt.setString(2, employee.getLastname());
			stmt.setString(3, employee.getFirstname());
			stmt.setInt(4, employee.getPhoneExtension());
			stmt.setString(5, employee.getOfficeID());
			int nbOfRows = stmt.executeUpdate();
			System.out.println(nbOfRows + " rows inserted");
			stmt.close();
		} catch (SQLException e){
			e.printStackTrace();
		}
	}*/
}
