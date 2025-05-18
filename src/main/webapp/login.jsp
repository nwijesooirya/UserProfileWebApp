<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Log in </title>
<link rel="stylesheet" type="text/css" href="Css/login.css">
 <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<!--Full area-->
 <div class="container">
 	<!--Left area-->
	<div class="leftc">
	    <img src="Images/clipboard.png" alt="clipboard" class="image">
	    <p class="para">
	        Our stock management system has become much better after using StockHive Inventory. We also switched to StockHive Books for our accounting management for its seamless integration with StockHive Inventory.
	    </p>
	</div>
     <div class="text">
         <p>😎 Welcome to the StockHive!</p>
          <!--Login box-->
          <div class="greenbox">
              <h2>Log in</h2>
              <form class="frm" action="log" method="post" >
                  <div class="inputbox">
                  <label for="username" id="lbuname">Username</label>
                  <input type="text" id="luname" name="luname" placeholder="Enter username" required>
                  <i class='bx bxs-user'></i>
                  </div> <br>
  
                  <div class="inputbox">
                  <label for="password" id="lbpw">Password</label>
                  <input type="password" id="lpw" name="lpw" placeholder="Enter password" required>
                  <i class='bx bxs-lock-alt'></i>
                  </div> <br> 
                  <input type="checkbox" id="crme" name="rme"> 
                  <label for="rememberme" id="rme">Remember Me</label> <br> <br>
                  <a href="#" id="fogpw">Forgot Password?</a> <br> <br>
  
                  <button type="submit" id="lbtn">Login</button>  <br> <br>

                  <label for="signup" id="notreg">Don't have an Account?</label>

                  <a href="customerinsert.jsp" id="sup">Sign up</a> <br> <br>
              </form>
         </div>
        </div>
    </div>
</body>
</html>