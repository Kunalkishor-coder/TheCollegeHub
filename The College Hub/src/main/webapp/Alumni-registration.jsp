<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
		<title>Alumni Membership Registration - Nalanda College</title>
		<link rel="icon" href="photos/nalanda-logo.png" type="image">
</head>
<body>
	<jsp:include page="Header.jsp" />

	<div class="container mt-4 mb-4">
		<div class="jumbotron">
  			<h1 class="lead fs-5 bg-light ps-4 pe-3 pt-1 pb-1 border">Alumni Registration</h1>
  				<p class="lead"><i class="bi bi-check-square-fill text-info"></i> Fill up the given form below and enlist yourself into alumni database</p>
  					
  					
		</div><!-- ----------jumbotron---------- -->
		 
		 <form class="row needs-validation"action="" method="post"novalidate>
        <div class="form-group pt-2 col-md-4 position-relative">
            <label for="name" class="form-label lead">Name</label>
                <div class="input-group">
                    <span class="input-group-text">
                        <i class="fs-6 bi bi-person-circle"></i>
                    </span>
                        <input type="text"id="name"name="name"class="form-control"required>
                        <div class="invalid-feedback">
                            Please enter name
                        </div>
                </div>
                
        </div>
        
        
        <div class="form-group pt-2 col-md-4 position-relative">
            <label for="degree" class="form-label lead">Degree</label>
                <div class="input-group">
                    <span class="input-group-text">
                        <i class="fs-6 bi bi-person-circle"></i>
                    </span>
                        <input type="text"id="degree"name="degree"class="form-control"required>
                        <div class="invalid-feedback">
                            Please enter degree name
                        </div>
                </div>
                <small class="form-text text-muted ms-1 form-label">for eg - Master of Computer Application</small>
        </div>
        
        
        <div class="form-group pt-2 col-md-4 position-relative">
            <label for="year-of-passing" class="form-label lead">Year Of Passing</label>
                <div class="input-group">
                    <span class="input-group-text">
                        <i class="fs-6 bi bi-person-circle"></i>
                    </span>
                        <input type="text"id="year-of-passing"name="year-of-passing"class="form-control"required>
                        <div class="invalid-feedback">
                            Please enter passing year
                        </div>
                </div>
                <small class="form-text text-muted ms-1 form-label">for eg - 2010</small>
        </div>
        
        
        <div class="form-group pt-2 col-md-6 position-relative">
            <label for="email"class="form-label lead">Email</label>
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-envelope-fill"></i></span>
                        <input type="email"id="email"name="email"class="form-control"required>
                        <div class="invalid-feedback">
                            email is mandatory
                        </div>
                        <div class="valid-feedback">
                            i hope email is genuine <i class="bi bi-emoji-smile"></i>
                        </div>
                </div>
                <small class="form-text text-muted ms-1 form-label">Don't use invalid gmail</small>
        </div>
        
        
        <div class="form-group pt-2 col-md-6 position-relative">
            <label for="mobile" class="form-label lead">Mobile</label>
                <div class="input-group">
                    <span class="input-group-text">
                        <i class="fs-6 bi bi-person-circle"></i>
                    </span>
                        <input type="number"id="mobile"name="mobile"class="form-control"required>
                        <div class="invalid-feedback">
                            Please enter mobile number
                        </div>
                </div>
        </div>
        
        <div class="form-group pt-2">
            <label for="address" class="form-label lead">Address</label>
                <div class="input-group">
                    <span class="input-group-text">
                        <i class="fs-6 bi bi-person-circle"></i>
                    </span>
                        <input type="text"id="address"name="address"class="form-control"required>
                        <div class="invalid-feedback">
                            Please enter address
                        </div>
                </div>
        </div>
        
        
        <div class="form-group pt-2 col-md-6 position-relative">
            <label for="occupation" class="form-label lead">Occupation</label>
                <div class="input-group">
                    <span class="input-group-text">
                        <i class="fs-6 bi bi-person-circle"></i>
                    </span>
                        <input type="text"id="occupation"name="occupation"class="form-control"required>
                        <div class="invalid-feedback">
                            Please enter occupation
                        </div>
                </div>
        </div>
        
        <div class="form-group pt-2 col-md-6 position-relative">
            <label for="Organization" class="form-label lead">Organization Name</label>
                <div class="input-group">
                    <span class="input-group-text">
                        <i class="fs-6 bi bi-person-circle"></i>
                    </span>
                        <input type="text"id="Organization"name="Organization"class="form-control"required>
                        <div class="invalid-feedback">
                            Please enter mobile number
                        </div>
                </div>
        </div>
        
        <input type="submit"class="w-25 btn btn-lg btn-danger m-3">
        </form>				
</div><!-- ------------container------------ -->
	
	
<jsp:include page="Footer.jsp" />

<script>


(function () {
    'use strict'

var forms = document.querySelectorAll('.needs-validation')

Array.prototype.slice.call(forms)
.forEach(function (form) {
form.addEventListener('submit', function (event) {
if (!form.checkValidity()) {
  event.preventDefault()
  event.stopPropagation()
}

form.classList.add('was-validated')
}, false)
})
})()


</script>
	
</body>

</html>


<%
    // Retrieve the form data
    
    String name = request.getParameter("name");
	String degree = request.getParameter("degree");
	String year = request.getParameter("year-of-passing");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");
	String occupation = request.getParameter("occupation");
	String organization = request.getParameter("Organization");
    // Database connection details
    String jdbcUrl = "jdbc:mysql://localhost:3306/collegeHub";
    String dbUsername = "root";
    String dbPassword = "root";

    // Register the user in the database
    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Establish the database connection
        Connection connection = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);

        // Create a prepared statement
        PreparedStatement statement = connection.prepareStatement("INSERT INTO alumni (name,degree,year,email,mobile,address,occupation,organization) VALUES (?, ?, ?,?,?,?,?,?)");

        // Set the parameter values
        statement.setString(1, name);
        statement.setString(2, degree);
        statement.setString(3, year);
        statement.setString(4, email);
        statement.setString(5, mobile);
        statement.setString(6, address);
        statement.setString(7, occupation);
        statement.setString(8, organization);
        

        // Execute the query
        statement.executeUpdate();

        // Close the statement and connection
        statement.close();
        connection.close();

        // Redirect to a success page
        response.sendRedirect("success.jsp");
    } catch (Exception e) {
        // Handle any errors that may occur
        out.println("Error: " + e.getMessage());
    }
    
    
    
%>

