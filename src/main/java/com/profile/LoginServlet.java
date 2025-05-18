package com.profile;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet { //using inheritance from base class
	private static final long serialVersionUID = 1L;

	// Handling the HTTP POST request for login validation
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 // Retrieving email and password (Encapsulation)
		String email = request.getParameter("luname");
		String password = request.getParameter("lpw");
			
		try {
		// Calling the database utility to validate user credentials
		List<User> usDetails = UserProfileDBUtil.validate(email, password);
		request.setAttribute("usDetails", usDetails);
		}
		catch(Exception e){
			// Exception handling for possible issues
			e.printStackTrace();
		}
		
		 // Forwarding the request to the user profile page after successful validation 
		RequestDispatcher dis = request.getRequestDispatcher("userprofile.jsp");
		dis.forward(request, response); // Forwarding to the profile display page
		
	}
	
	// Use this method to link other pages from the servlet if needed
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Example: If you want to redirect to the Terms and Conditions page
		String action = request.getParameter("action"); 
		
		if (action != null && action.equals("terms")) {
			// Redirect to the Terms and Conditions page
			response.sendRedirect("terms.jsp"); // go to terms page
		} else if (action != null && action.equals("login")) {
			// Redirect to the login page
			response.sendRedirect("login.jsp"); // go to login page
		} else {
			// Default action, show some default page
			RequestDispatcher dispatcher = request.getRequestDispatcher("default.jsp");
			dispatcher.forward(request, response); // Forwarding to a default page
		}

	}

}
