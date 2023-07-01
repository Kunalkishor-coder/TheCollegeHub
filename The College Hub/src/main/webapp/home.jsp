<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<%
    HttpSession Session = request.getSession();
    String username = (String) Session.getAttribute("username");

    // Redirect to login page if not logged in
    if (username == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<link rel="icon" href="photos/nalanda-logo.png" type="image">	
<link rel="stylesheet" href="bootstrap-icons-1.10.5/font/bootstrap-icons.min.css">
</head>
<body>
    <div class="container mt-5">
        <h3 class="text-secondary"><i class="bi bi-person-square fs-1 pe-3"></i>Welcome, <%= username %></h3> <div class="text-end"><a href="logout.jsp" class="btn btn-danger">Logout</a></div>
       
        <form action="<%= request.getRequestURI() %>" method="POST"class="text-secondary border border-1 lead fw-bold mt-4 p-5 bg-light shadow">
            <div class="mb-3 col-lg-4 col-12 float-start pe-5">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="mb-3 col-lg-4 col-12 float-start pe-5">
                <label for="degree" class="form-label">Degree</label>
                <input type="text" class="form-control" id="degree" name="degree" required>
            </div>
            <div class="mb-3 col-lg-4 col-12 float-start pe-5">
                <label for="package" class="form-label">Package</label>
                <input type="text" class="form-control" id="package" name="package" required>
            </div>
            <div class="mb-3 col-lg-6 col-12 float-start pe-5">
                <label for="company" class="form-label">Company</label>
                <input type="text" class="form-control" id="company" name="company" required>
            </div>
            <div class="mb-3 col-lg-6 col-12 float-start pe-5">
                <label for="gmail" class="form-label">Gmail</label>
                <input type="email" class="form-control" id="gmail" name="gmail" required>
            </div>
            <button type="submit" class="btn btn-danger">Submit</button>
        </form>
         <% String successMessage = request.getParameter("success");
            if (successMessage != null) { %>
                <div class="alert alert-success mt-5" role="alert">
                   Successfully Record Inserted
                </div>
        <% } %>
    </div>
    <%-- Process form submission and store data in MySQL database --%>
    <%@ page import="java.util.*" %>
    <%
        String name = request.getParameter("name");
        String degree = request.getParameter("degree");
        String Package = request.getParameter("package");
        String company = request.getParameter("company");
        String gmail = request.getParameter("gmail");

        if (name != null && degree != null && Package != null && company != null && gmail != null) {
            String jdbcUrl = "jdbc:mysql://localhost:3306/collegeHub";
            String dbUser = "root";
            String dbPassword = "root";

            Connection conn = null;
            PreparedStatement pstmt = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
                String sql = "INSERT INTO placement (name, degree, package, company, contact) VALUES (?, ?, ?, ?, ?)";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, name);
                pstmt.setString(2, degree);
                pstmt.setString(3, Package);
                pstmt.setString(4, company);
                pstmt.setString(5, gmail);
                pstmt.executeUpdate();
                response.sendRedirect("home.jsp?success=1");
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if (pstmt != null) pstmt.close();
                    if (conn != null) conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
    %>
       
    </div>
</body>
</html>
