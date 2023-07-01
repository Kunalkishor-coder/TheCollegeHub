<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Placement</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="bootstrap-icons-1.10.5/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<link rel="icon" href="photos/nalanda-logo.png" type="image">	
</head>
<body>
    <div class="container">
        <div class="lead fs-3 row mt-4">Placed Students to MNC'S</div>
        
        <%  
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/collegeHub";
                String username = "root";
                String password = "root";
                conn = DriverManager.getConnection(url, username, password);
                
                String sql = "SELECT * FROM placement";
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);
        %>
        
        <table class="table">
            <thead>
                <tr>
                    <th class="text-danger">Student Name</th>
                    <th class="text-danger">Degree</th>
                    <th class="text-danger">Package</th>
                    <th class="text-danger">Company</th>
                    <th class="text-danger">Contact</th>
                </tr>
            </thead>
            <tbody>
                <% while (rs.next()) { %>
                <tr>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("degree") %></td>
                    <td><%= rs.getString("package") %></td>
                    <td><%= rs.getString("company") %></td>
                    <td><%= rs.getString("contact") %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        
<%

            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) {
                    try {
                        rs.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                if (stmt != null) {
                    try {
                        stmt.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
        
        <a class="btn btn-primary" href="index.jsp">Back to home</a>
    </div>
    
</body>
</html>
