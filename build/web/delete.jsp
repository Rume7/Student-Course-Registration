<%-- 
    Document   : delete
    Created on : Dec 8, 2020, 10:34:12 AM
    Author     : E238958
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%

    String id = request.getParameter("id");

    String jdbcUrl = "jdbc:mysql://localhost:3306/padata";
    Connection conn = null;
    PreparedStatement pst = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcUrl, "scott", "tiger");
        pst = conn.prepareStatement("DELETE FROM studentreg WHERE id = ?");
        pst.setString(1, id);
        pst.executeUpdate();

    } catch (Exception e) {

    } finally {
        if (pst != null) {
            pst.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
%>

<script>
    alert("Record Deleted...");
</script>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Delete Page</title>
    </head>
    <body>

        <h2>Delete page</h2>

        <div alight="right">

            <p><a href="index.jsp">Click Back</a></p>

        </div>

    </body>
</html>
