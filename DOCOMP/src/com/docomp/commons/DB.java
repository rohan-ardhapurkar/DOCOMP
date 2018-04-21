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
			/*Class.forName("com.mysql.jdbc.Driver");*/
			com.mysql.jdbc.Driver driver = new com.mysql.jdbc.Driver();
			DriverManager.registerDriver(driver);
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/docomp","root","root");
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
