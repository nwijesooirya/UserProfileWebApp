package com.profile;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserProfileDBUtil {
	
	private static Connection con = null; // Database connection
	private static Statement stmt = null; // SQL statement
	private static ResultSet rs = null; // Result set object
	
	//create validate method
	public static List<User> validate(String email , String password){
		
		ArrayList<User> us = new ArrayList<>(); //create array list for include data	
		//validate credentials
		try {
			
			con = ConnectDB.getConnection(); // Get database connection
			stmt = con.createStatement();
			 //write sql qurrey for take username and password
			String sql = "select * from user_profile where email='"+email+"'and password='"+password+"'"; 
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				// If a matching user is found
				int id = rs.getInt(1);
				String first_name = rs.getString(2);
				String last_name = rs.getString(3);
				String emailU = rs.getString(4);
				String mobile_no = rs.getString(5);
				String date_of_birth = rs.getString(6);
				String gender = rs.getString(7);
				String role = rs.getString(8);
				String passU = rs.getString(9);
				
				User U = new User(id, first_name, last_name, emailU, mobile_no, date_of_birth, gender, role, passU);
				us.add(U); // Add user to the Arraylist
				
			}
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return us;	// Return list
	}
	
	// taking new user's data in to modle from insert servlet
	public static boolean insertcustomer(String first_name ,String last_name, String email, String mobile_no, String date_of_birth, String gender , String role , String password) {
		
		boolean isSucess = false;
		
		try {
			con = ConnectDB.getConnection(); // database connection
			stmt = con.createStatement();
			// create insert querry for user details
			String sql = "insert into user_profile values (0,'"+first_name+"','"+last_name+"','"+email+"','"+mobile_no+"','"+date_of_birth+"','"+gender+"','"+role+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) { // check inserted data success or not
				isSucess = true;
			}else {
				isSucess = false;
			}
					
		}catch (Exception e){
			e.printStackTrace(); //if there is error this will display it without termination
		}
			
		
		return isSucess;
	}

	//create method for Update an user details
	public static boolean updatecustomer(String user_id, String first_name, String last_name, String mobile_no, String email, String date_of_birth, String gender, String role) {
	    boolean isSuccess = false;
	    try {
	        con = ConnectDB.getConnection(); // Get database connection
	        stmt = con.createStatement();
	        // use sql querry for update details
	        String sql = "UPDATE user_profile SET first_name = '" + first_name + "', last_name = '" + last_name + "', mobile_no = '" + mobile_no + "', email = '" + email + "', date_of_birth = '" + date_of_birth + "', gender = '" + gender + "', role = '" + role + "' WHERE user_id = '" + user_id + "'";
	        int rs = stmt.executeUpdate(sql);
	        
	        if(rs > 0) {  // check update success or not
	            isSuccess = true;
	        }
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	    return isSuccess;
	}
	
	//create method for Retrieve user details using user ID
	public static List<User> getUserDetails(String U_id){
		
		int convertedID = Integer.parseInt(U_id); // Convert string ID to integer
		
		ArrayList <User> us = new ArrayList <>(); // Create array list for user data
		
		try {
			
			con = ConnectDB.getConnection(); // DB connection
			stmt = con.createStatement();
			// Using prepared statements
			String sql = "select * from user_profile where user_id = '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int user_id = rs.getInt(1);
				String first_name = rs.getString(2);
				String last_name = rs.getString(3);
				String email = rs.getString(4);
				String mobile_no = rs.getString(5);
				String date_of_birth = rs.getString(6);
				String gender = rs.getString(7);
				String role = rs.getString(8);
				String password = rs.getString(9);
				
				User Uu = new User(user_id, first_name, last_name, email, mobile_no, date_of_birth, gender, role, password);
				us.add(Uu); // Add user to the list
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return us;
	}
	
	//create method for Delete a customer from the database
	public static boolean deletecustomer(String user_id) {
		boolean isSuccess = false; //
		
		int convID = Integer.parseInt(user_id); // Convert string ID to integer
		
		try {
			
			con = ConnectDB.getConnection(); // Get db connection
			// Using prepared statements
	        stmt = con.createStatement();
	        // use sql querry for delete details
	        String sql = "delete from user_profile where user_id = '"+convID+"'";
	        int r = stmt.executeUpdate(sql);
	        
	        if(r > 0) { //check data deleted or not 
	        	isSuccess = true;
	        }
	        else {
	        	isSuccess = false;
	        }
			
		}catch (Exception e){
			e.printStackTrace();
		}
		
		return isSuccess; // Return success
	}
}
