<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Account</title>
</head>
<style>
body {
  background-image: url('Images/people-logistic-center-transparent.png');
  background-size: cover;
  background-position: down;
}
table {
	background: transparent;
    backdrop-filter: blur(70px);
    border-spacing: 25px;
    border-radius: 20px;
    margin : auto;
    align-items: end;
    height : 20px;
}
h1{
	color:navy;
	font-size:41px;
	text-align:center;
}
button{
	font-family: Arial, sans-serif;
    font-weight: bold;
    font-size: 16px;
    background-color:red;
    height: 28px;
    width: 260px;
    float: center;
    border-radius: 5px;
}
</style>
<body>
	<!-- data from profile -->
	<% 
		String user_id = request.getParameter("user_id");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String mobile_no = request.getParameter("mobile_no");
		String email = request.getParameter("email");
		String date_of_birth = request.getParameter("date_of_birth");
		String gender = request.getParameter("gender");
		String role = request.getParameter("role");
	%>
	
	<h1> Do you wan't to Delete your StockHive Account? 😣</h1>
	
	<form class="frmS" action="delete" method="post">
		<table class="table" >
     
         <tr>
             <td><label for="UID">User ID</label>       
             <input type="text" id="uid" name="user_id" class="data" value="<%=user_id%>" readonly> <!-- Populating full name -->
             </td>
         </tr>
         <tr>
             <td><label for="fullname">Full Name</label>       
             <input type="text" id="fullname" name="first_name" class="data" value="<%=first_name%>" readonly> <!-- Populating full name -->
             </td>
         </tr>
         <tr>
             <td><label for="fullname">Full Name</label>       
             <input type="text" id="fullname" name="last_name" class="data" value="<%=last_name%>" readonly> <!-- Populating full name -->
             </td>
         </tr>
         
         <tr>
            <td> <!-- mobile -->
                <label for="mobile">Mobile Number</label>
                <input type="tel" name="mobile_no" id="phone"  maxlength="10" required class="fields" value= "<%=mobile_no %>" readonly></td>
        </tr>
        
        <tr>
            <td><!-- emal -->
                <label for="emal">E_mail</label>
                <input type="email" id="email" name="email"  required class="fields"  value = "<%=email%>" readonly></td>
        </tr>

        <tr>
            <td> <!-- DOB -->
                <label for="bday">Date Of Birth</label> &nbsp; &nbsp; 
                <input type="text" name="date_of_birth" id="dob" required class="fields" value = "<%=date_of_birth %>" readonly> </td>
        </tr>

        <tr>
            <td> <!-- gender -->
                <label for="gender">Gender</label> &nbsp; &nbsp;
                <input type="text" name="gender" id="dob" required class="fields" value = "<%=gender %>" readonly> </td>
        </tr>

        <tr>
            <td> <!-- Role (if needed) -->
                <label for="role">Select Role</label>&nbsp;&nbsp;
                <input type="text" name="role" id="role" required class="fields" value = "<%=role %>" readonly> </td>
        </tr>   

        <tr>
            <td> <!-- Submit Button -->
                <button type="submit" class="sbtn">Permenently Delete Account</button></td>
        </tr>
		</table>
	</form>
</body>
</html>