package com.docomp.commons;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Common DB Class to achieve connection everyewhere in project
 * @author rohan
 *
 */
public class DB {
	static Connection conn = null;

	public static Connection connect() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			System.out.println("No such named class foound in DB");
			e.printStackTrace();
		}
		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "ajay");
		} catch (SQLException e) {
			System.out.println("Error while generating connection with DB");
			e.printStackTrace();
		}
		if (conn != null) {
			return conn;
		} else
			return null;
	}
}
