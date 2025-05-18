<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up here</title>
<link rel="stylesheet" href="Css/insertAccount.css">
</head>
<body>
	<h1 id="createA">✍ Create your Account</h1>
    <div class="signupform">
    <!--signup form-->
        <form class="frmS" action="insert" method="post" onsubmit="return validatePassword() && validateDate()">
            <fieldset class="fset">
                <legend class="leg"> Sign-up </legend>
                <!--taking new user's inputs-->
                <table class="table">
                    <tr>
                        <td>
                            <label for="Firstname">First name</label>
                            <input type="text" id="fname" name="first_name" placeholder="Nimal" required class="fields"></td>
                        <td>
                            <label for="lastname">Last name</label>
                            <input type="text" id="lname" name="last_name" placeholder="perera" required class="fields">  </td>
                    </tr>
    
                    <tr>
                        <td>
                            <label for="emal">E_mail</label>
                            <input type="email" id="email" name="email" placeholder="nimal123@gmail.com" required class="fields"></td>
                    </tr>

                    <tr>
                        <td> 
                            <label for="mobile">Mobile Number</label>
                            <input type="tel" name="mobile_no" id="phone" placeholder="011-1234567"  maxlength="10" minlength = "10" required class="fields"></td>
                    </tr>

                    <tr>
                        <td> 
                            <label for="bday">Date Of Birth</label> &nbsp; &nbsp; 
                            <input type="date" name="date_of_birth" id="dob" required class="fields"> </td>
                    </tr>

                    <tr>
                        <td> 
                            <label for="gender">Gender</label> &nbsp; &nbsp;
                            <input type="radio" id="male" name="gender" value = "male"> 
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="gender" value = "female">
                            <label for="female">Female</label> </td>
                    </tr>

                    <tr>
                        <td> 
                            <label for="role">Select Role</label>&nbsp;&nbsp;
                            <select id="role" name="role" required class="fields">
                                <option value="customer">Customer</option>
                                <option value="supplier">Supplier</option>
                                <option value="manager">Manager</option>
                                <option value="other">Other</option>
                            </select> </td>
                    </tr>

                    <tr>
                        <td> 
                            <label for="pw">Password</label>
                            <input type="password" name="pw" id="pw" placeholder="abcd123#" minlength = "8" maxlength="15" required class="fields"> </td>
                    </tr>

                    <tr>
                        <td> <label for="pw">Confirm Password</label>
                            <input type="password" name="cpw" id="cpw" placeholder="abcd123#" minlength = "8" maxlength="15" required class="fields"> </td>
                    </tr>

                    <tr>
                        <td colspan="2" class="tocenter"> 
                            <label class="terms">
                                <input type="checkbox" name="terms" required> I agree to the <a href="terms.jsp" class="exlinks">Terms and Conditions</a>
                            </label></td>
                    </tr>

                    <tr>
                        <td colspan="2" class="tocenter"> 
                            Already have an account? <a href="login.jsp" class="exlinks"> Login here</a></td>
                    </tr>  

                    <tr>
                        <td> <!-- Submit Button -->
                            <button type="submit" class="sbtn">Sign Up</button></td>
                    </tr>
                </table>
            </fieldset>
        </form>
      
         <script>
        	function validateDate() {
            const dobInput = document.getElementById('dob');
            const dob = new Date(dobInput.value);
            const today = new Date();
            
            // Set the time to the beginning of the day for accurate comparison
            today.setHours(0, 0, 0, 0);

            // Check if the date of birth is in the future
            if (dob > today) {
                alert('Please recheck your Birthday.');
                dobInput.value = ''; // Clear the input field
                dobInput.focus(); // Focus back on the input field
                return false; 
            }
            
            return true; 
        }
        </script>
        
        <script src="Js/signup.js"></script>
    </div>
</body>
</html>