package com.profile;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteCusomerServelet")
public class DeleteCusomerServelet extends HttpServlet { //using inheritance from base class
	private static final long serialVersionUID = 1L;

	// Handles HTTP POST request to delete a customer
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieve the 'user_id' to identify the specific customer
		String user_id = request.getParameter("user_id");
		
		// Calls the utility method to delete the customer
		boolean istrue = UserProfileDBUtil.deletecustomer(user_id);
		
		// If the customer was successfully deleted, forward to the 'deleted.jsp' confirmation page
		if(istrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("deleted.jsp");
			dispatcher.forward(request, response);
		}
		else {
			 // If deletion failed, take the user details and show the profile page again
	    	List<User> usDetails = UserProfileDBUtil.getUserDetails(user_id);
	    	request.setAttribute("usDetails", usDetails);
	    	
	        RequestDispatcher dispatcher = request.getRequestDispatcher("userprofile.jsp");
	        dispatcher.forward(request, response);
	    }
		
		
	}

}
