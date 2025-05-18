package com.profile;

public class User {
	// Private fields user's attributes (Encapsulation)
	private int user_id;
	private String first_name;
	private String last_name;
	private String email;
	private String mobile_no;
	private String date_of_birth;
	private String gender;
	private String role;
	private String password;
	
	 // Constructor to initialize the user object
	public User(int user_id, String first_name, String last_name, String email, String mobile_no, String date_of_birth,
			String gender, String role, String password) {
		this.user_id = user_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.mobile_no = mobile_no;
		this.date_of_birth = date_of_birth;
		this.gender = gender;
		this.role = role;
		this.password = password;
	}

	 // Getters provide controlled access to the fields
	public int getUser_id() {
		return user_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public String getEmail() {
		return email;
	}

	public String getMobile_no() {
		return mobile_no;
	}

	public String getDate_of_birth() {
		return date_of_birth;
	}

	public String getGender() {
		return gender;
	}

	public String getRole() {
		return role;
	}

	public String getPassword() {
		return password;
	}
	

}
