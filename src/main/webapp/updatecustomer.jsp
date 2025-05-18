<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
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
    margin : 2%;
    align-items: end;
    height : 20px;
}
h1{
	color:navy;
	font-size:41px;
}
button{
	font-family: Arial, sans-serif;
    font-weight: bold;
    font-size: 16px;
    background-color:orange;
    height: 28px;
    width: 130px;
    float: right;
    border-radius: 5px;
}
</style>
<body>
		<!-- gather data from profile --> 
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

	<form class="frmS" action="update" method="post">
		<table class="table" >
    
         <tr>
             <td><label for="UID">User ID</label>       
             <input type="text" id="uid" name="user_id" class="data" value="<%=user_id%>" readonly> 
             </td>
         </tr>
         <tr>
             <td><label for="fullname">Full Name</label>       
             <input type="text" id="fullname" name="first_name" class="data" value="<%=first_name%>"> <!-- show gathered data in the form -->
             </td>
         </tr>
         <tr>
             <td><label for="fullname">Full Name</label>       
             <input type="text" id="fullname" name="last_name" class="data" value="<%=last_name%>">
             </td>
         </tr>
         
         <tr>
            <td> <!-- mobile -->
                <label for="mobile">Mobile Number</label>
                <input type="tel" name="mobile_no" id="phone"  maxlength="10" required class="fields" value= "<%=mobile_no %>"></td>
        </tr>
        
        <tr>
            <td><!-- emal -->
                <label for="emal">E_mail</label>
                <input type="email" id="email" name="email"  required class="fields"  value = "<%=email%>"></td>
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
                <input type="text" name="role" id="role" required class="fields" value = "<%=role %>"> </td>
        </tr>   

        <tr>
            <td> <!-- Submit Button -->
                <button type="submit" class="sbtn">Update Data</button></td>
        </tr>
		</table>
	</form>
<h1 align = "center"> 🏃‍♂️ Empowering Your Inventory, One Step at a Time.!</h1> 

</body>
</html>