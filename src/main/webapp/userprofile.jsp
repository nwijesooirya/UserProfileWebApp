<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="Css/profile.css"> <!-- Ensure the path to your CSS file is correct -->
</head>
<body>

<div class="back">
    <div class="heading">
        <h1>Thank You for joining with StockHive! 💡</h1>
    </div>
</div>
<br> <br>
    <div class="pinfo">
    	<%-- form starting --%>
        <form method="post" action="updatecustomer.jsp" class="profform"> <!-- Adjust the form action as needed -->
            <table>
                <tr id="headerrow"> 
                    <td id="topicdata" colspan="2">
                        <h2 id="topic">🤵 User's Information</h2> 
                    </td>
                </tr>

				<!-- print data in a loop -->
                <c:forEach var="us" items="${usDetails}">
                
                <c:set var = "user_id" value = "${us.user_id}"/>
                <c:set var = "first_name" value = "${us.first_name}"/>
                <c:set var = "last_name" value = "${us.last_name}"/>
                <c:set var = "mobile_no" value = "${us.mobile_no}"/>
                <c:set var = "email" value = "${us.email}"/>
                <c:set var = "date_of_birth" value = "${us.date_of_birth}"/>
                <c:set var = "gender" value = "${us.gender}"/>
                <c:set var = "role" value = "${us.role}"/>
                    
				<!-- ID -->
                      <tr>
                          <td><label for="user_id">User's ID</label></td>
                          <td>
                              <input type="text" id="user_id" name="user_id" class="data" value="${us.user_id}"> <!-- Populating email -->
                          </td>
                      </tr>
                       
                 <!-- First name -->  
                        <tr>
					    <td><label for="first_name">First Name</label></td>
					    <td>
					        <input type="text" id="first_name" name="first_name" class="data" value="${us.first_name}">
					    </td>
					</tr>
				<!-- Last name --> 
				<tr>
				    <td><label for="last_name">Last Name</label></td>
				    <td>
				        <input type="text" id="last_name" name="last_name" class="data" value="${us.last_name}">
				    </td>
				</tr>

                 <!-- Mobile -->
                 <tr>
                     <td><label for="phone">Mobile Number</label></td>
                     <td>
                         <input type="text" id="phone" name="mobile_no" class="data" value="${us.mobile_no}"> 
                     </td>
                 </tr>

                 <!-- Email -->
                 <tr>
                     <td><label for="email">E-mail</label></td>
                     <td>
                         <input type="text" id="email" name="email" class="data" value="${us.email}"> 
                     </td>
                 </tr>

                 <!-- Date of Birth -->
                 <tr>
                     <td><label for="dob">Date-Of-Birth</label></td>
                     <td>
                         <input type="text" id="dob" name="date_of_birth" class="data" value="${us.date_of_birth}">
                     </td>
                 </tr>

                 <!-- Gender -->
                 <tr>
                     <td><label for="gender">Gender</label></td>
                     <td>
                         <input type="text" id="gen" name="gender" class="data" value="${us.gender}"> 
                     </td>
                 </tr>

                 <!-- Role -->
                 <tr>
                     <td><label for="role">Role</label></td>
                     <td>
                         <input type="text" id="rol" name="role" class="data" value="${us.role}"> 
                     </td>
                 </tr>
             </c:forEach>
                
                <tr>
    			<td colspan="2">
		        	<c:url value="updatecustomer.jsp" var="cusupdate"> 
		        	<c:param name="user_id" value="${user_id}"/>
		            <c:param name="first_name" value="${first_name}"/>
		            <c:param name="last_name" value="${last_name}"/>
		            <c:param name="mobile_no" value="${mobile_no}"/>
		            <c:param name="email" value="${email}"/>
		            <c:param name="date_of_birth" value="${date_of_birth}"/>
		            <c:param name="gender" value="${gender}"/>
		            <c:param name="role" value="${role}"/>
       				</c:url>
        			<a href="${cusupdate}"> 
            		<button class="sbtnup" id="updateButton" name="update"> Update </button> <!-- Button outside anchor -->
       		 		</a> 
			   		</td>
			    	
			    	<c:url value="deletecustomer.jsp" var="cusdelete">
			    	<c:param name="user_id" value="${user_id}"/>
		            <c:param name="first_name" value="${first_name}"/>
		            <c:param name="last_name" value="${last_name}"/>
		            <c:param name="mobile_no" value="${mobile_no}"/>
		            <c:param name="email" value="${email}"/>
		            <c:param name="date_of_birth" value="${date_of_birth}"/>
		            <c:param name="gender" value="${gender}"/>
		            <c:param name="role" value="${role}"/>
			    	</c:url>
			       <td>
			       <button type="submit" formaction="${cusdelete}" class="sbtdel" id="delButton" name="delete"> Delete </button>
			    </td>
				</tr>
            </table>
        </form>
    </div>
    <script src="Js/profile.js"></script> 
</body>
</html>
