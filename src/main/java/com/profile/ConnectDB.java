package com.profile;

import java.sql.Connection;
import java.sql.DriverManager;

//create DB Connection
public class ConnectDB {
	
	// Static fields for database URL, user, and password 
	private static String url = "jdbc:mysql://localhost:3306/stock_management";
	private static String user = "root"; 
	private static String pass = "nswmysql";
	
	//create object to catch connection
	private static Connection con;
	
	//create method to create DB
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			//create database connection
			con = DriverManager.getConnection(url , user , pass);
			
		}catch (Exception e){
			System.out.println("Database connection is not Successfully created!"); //ensuring DB creatd without errors
		}
		
		return con; //returning connection type object
		
	}

}
