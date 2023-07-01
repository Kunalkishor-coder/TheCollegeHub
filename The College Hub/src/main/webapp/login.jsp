<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login - Nalanda College</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="bootstrap-icons-1.10.5/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<link rel="icon" href="photos/nalanda-logo.png" type="image">	
</head>
<body>
	<div class="container">
  <div class="row justify-content-center mt-5">
    <div class="col-lg-4 col-md-6 col-sm-8">
      <div class="text-center"><h2 class="text-center display-6 mb-4">Admin login</h2>
      	<img src="photos/nalanda-logo.png"width="100px;"></div>
      	<% String errorMessage = request.getParameter("error");
            if (errorMessage != null) { %>
                <div class="alert alert-danger mt-4" role="alert">
                    Invalid username or password!
                </div>
        <% } %>
     <form action="login_process.jsp" method="POST">
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            	<div class="btn btn-lg mt-1 " onclick="togglePasswordVisibility()">
                        <span id="password-toggle-icon" class="bi bi-eye lead fs-6"><font class="ms-2">Show Password</font></span>
                    </div>
            </div>
            <button type="submit" class="btn btn-primary">Login</button><a href="index.jsp"class="ms-2 btn btn-success"><i class="bi bi-arrow-left-circle"></i> Back to home</a>
        </form>
    </div>
  </div>
</div>

 <% if (request.getAttribute("errorMessage") != null) { %>
        <p style="color: red;"><%= request.getAttribute("errorMessage") %></p>
    <% } %>
    
<script type="text/javascript">
function togglePasswordVisibility() {
    var passwordInput = document.getElementById("password");
    var passwordToggleIcon = document.getElementById("password-toggle-icon");

    if (passwordInput.type === "password") {
        passwordInput.type = "text";
        passwordToggleIcon.classList.remove("bi-eye");
        passwordToggleIcon.classList.add("bi-eye-slash");
    } else {
        passwordInput.type = "password";
        passwordToggleIcon.classList.remove("bi-eye-slash");
        passwordToggleIcon.classList.add("bi-eye");
    }
}
</script>

</body>
</html>