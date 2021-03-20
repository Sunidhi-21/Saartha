package com.saartha.managers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {

	static private Connection singletonInstance = null;

	static {
		try {
			singletonInstance = DriverManager.getConnection("jdbc:mysql://localhost:3306/university-database", "root",
					"sunidhi");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static Connection getConnectionProvider() {

		if (singletonInstance != null) {
			return singletonInstance;
		} else {
			System.out.println("single connection is not created");
		}
		return singletonInstance;
	}

	protected Object clone() throws CloneNotSupportedException {
		throw new CloneNotSupportedException("No clones allowed!!");
	}

}
