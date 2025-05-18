package com.profile;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet { //using inheritance from base class
	private static final long serialVersionUID = 1L;

	 // Handling the HTTP POST request for inserting a customer 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieving form data from the request object 
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String email = request.getParameter("email");
		String mobile_no = request.getParameter("mobile_no");
		String date_of_birth = request.getParameter("date_of_birth");
		String gender = request.getParameter("gender");
		String role = request.getParameter("role");
		String password = request.getParameter("pw");
		
		boolean isTrue;
		 // Calling the database utility to insert customer data
		isTrue =  UserProfileDBUtil.insertcustomer(first_name, last_name, email, mobile_no, date_of_birth, gender, role, password);
		
		// Checking the result of the database and send
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response); // Forward to success page
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response); // Forward to unsuccess page
		}	
		
	}
	
	// Method to link other pages from the servlet
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // Get the action parameter to navigate pages
        String action = request.getParameter("action");
        
        if (action != null) {
            if (action.equals("customerinsert")) {
                // go to the signup page
                response.sendRedirect("customerinsert.jsp"); 
            } else {
                // Default action, show some default page
                RequestDispatcher dispatcher = request.getRequestDispatcher("default.jsp");
                dispatcher.forward(request, response); 
            }
        } else {
            // If no action is specified, forward to a default page
            RequestDispatcher dispatcher = request.getRequestDispatcher("default.jsp");
            dispatcher.forward(request, response); 
        }
    }
}
