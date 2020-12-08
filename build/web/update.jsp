<%-- 
    Document   : update
    Created on : Dec 7, 2020, 10:39:21 PM
    Author     : E238958
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
    if (request.getParameter("submit") != null) { 
        String id = request.getParameter("id");
        String name = request.getParameter("sname");
        String course = request.getParameter("course");
        String fee = request.getParameter("fee");

        String jdbcUrl = "jdbc:mysql://localhost:3306/padata";
        Connection conn = null;
        PreparedStatement pst = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, "scott", "tiger");
            pst = conn.prepareStatement("UPDATE studentreg set stname = ?, course = ?, fee = ? WHERE id = ?");
            pst.setString(1, name);
            pst.setString(2, course);
            pst.setString(3, fee);
            pst.setString(4, id);
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
    alert("Update Done...");
</script>

<%
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Edit Page</title>
    </head>
    <body>

        <h2>Update Student page</h2>

        <div class="row">

            <div class="col-sm-4">
                <form method="POST" action="#">

                    <%

                        String jdbcUrl = "jdbc:mysql://localhost:3306/padata";
                        Connection conn = null;
                        PreparedStatement pst = null;
                        ResultSet rs = null;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = DriverManager.getConnection(jdbcUrl, "scott", "tiger");

                            String id = request.getParameter("id");
                            pst = conn.prepareStatement("SELECT * FROM studentreg WHERE id = ?");
                            pst.setString(1, id);
                            rs = pst.executeQuery();

                            while (rs.next()) {

                    %>

                    <div alight="left">
                        <label class="form-label">Student Name</label>
                        <input type="text" class="form-control" placeholder="Student Name" value="<%= rs.getString("stname") %>" name="sname" id="sname" required />
                    </div>

                    <div alight="left">
                        <label class="form-label">Course </label>
                        <input type="text" class="form-control" placeholder="Course" value="<%= rs.getString("course") %>" name="course" id="course" required />
                    </div>

                    <div alight="left">
                        <label class="form-label">Fee</label>
                        <input type="text" class="form-control" placeholder="Fee" value="<%= rs.getString("fee") %>" name="fee" id="fee" required />
                    </div>



                    <%      } // End of while loop

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

                    <br />

                    <div alight="right">
                        <input type="submit" id="submit" value="Submit" name="submit" class="btn btn-info" />
                        <input type="reset" id="reset" value="Reset" name="reset" class="btn btn-warning" />
                    </div>

                    <div alight="right">
                        
                        <p><a href="index.jsp">Click Back</a></p>
                        
                    </div>
                    
                </form>
            </div>
        </div> 
    </body>
</html>
