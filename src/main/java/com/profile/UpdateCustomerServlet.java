package com.profile;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet { //using inheritance from base class
	private static final long serialVersionUID = 1L;

	// POST request to update customer details
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Retrieving data from updatecustomer page  
		String user_id = request.getParameter("user_id");
	    String first_name = request.getParameter("first_name");
	    String last_name = request.getParameter("last_name");
	    String mobile_no = request.getParameter("mobile_no");
	    String email = request.getParameter("email");
	    String date_of_birth = request.getParameter("date_of_birth");
	    String gender = request.getParameter("gender");
	    String role = request.getParameter("role");

	    // Calling a utility method to update the customer information in the database
	    boolean isTrue = UserProfileDBUtil.updatecustomer(user_id, first_name, last_name, mobile_no, email, date_of_birth, gender, role);
	    
	    // If the update is successful, retrieve the updated details and go to the profile page
	    if(isTrue) {
	    	
	    	List<User> usDetails = UserProfileDBUtil.getUserDetails(user_id);
	    	request.setAttribute("usDetails", usDetails);
	    	
	        RequestDispatcher dis = request.getRequestDispatcher("userprofile.jsp");
	        dis.forward(request, response); 
	    } else {
	    	// If update fails, forward to the same page
	    	List<User> usDetails = UserProfileDBUtil.getUserDetails(user_id);
	    	request.setAttribute("usDetails", usDetails);
	    	
	        RequestDispatcher dis = request.getRequestDispatcher("userprofile.jsp");
	        dis.forward(request, response);
	    }
	}

}
