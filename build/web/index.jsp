
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
    if (request.getParameter("submit") != null) {
        String name = request.getParameter("sname");
        String course = request.getParameter("course");
        String fee = request.getParameter("fee");

        String jdbcUrl = "jdbc:mysql://localhost:3306/padata";
        Connection conn = null;
        PreparedStatement pst = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, "scott", "tiger");
            pst = conn.prepareStatement("INSERT INTO studentreg(stname, course, fee) VALUE (?, ?, ?)");
            pst.setString(1, name);
            pst.setString(2, course);
            pst.setString(3, fee);
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
    alert("Record Added...");
</script>

<%
    }

%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index </title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <h1>Student Registration System</h1>
        <br />

        <div class="row">
            <!-- Form registration -->

            <div class="col-sm-4">
                <form method="POST" action="#">

                    <div alight="left">
                        <label class="form-label">Student Name</label>
                        <input type="text" class="form-control" placeholder="Student Name" name="sname" id="sname" required />
                    </div>

                    <div alight="left">
                        <label class="form-label">Course </label>
                        <input type="text" class="form-control" placeholder="Course" name="course" id="course" required />
                    </div>

                    <div alight="left">
                        <label class="form-label">Fee</label>
                        <input type="text" class="form-control" placeholder="Fee" name="fee" id="fee" required />
                    </div>

                    <br />

                    <div alight="right">
                        <input type="submit" id="submit" value="Submit" name="submit" class="btn btn-info" />
                        <input type="reset" id="reset" value="Reset" name="reset" class="btn btn-warning" />
                    </div>

                </form>
            </div>


            <div class="col-sm-8">

                <div class="panel-body">
                    <table id="tbl-student" class="table table-responsive table-bordered" cellpadding="0" width="100%">
                        <thead>
                            <tr>
                                <th>Student Name</th>
                                <th>Course</th>
                                <th>Fee</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>

                            <tr>                                
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>                                
                            </tr>
                        </thead>
                    </table>

                </div>
            </div>

        </div>

    </body>
</html>
