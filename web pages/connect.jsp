<%-- 
    Document   : connect
    Created on : 7 Nov, 2023, 12:55:37 PM
    Author     : Najmin Shaikh
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           Class.forName("com.mysql.jdbc.Driver");
           java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rentalservice","root","root");
           out.println("");
                  
       %>
    </body>
</html>
