<%@page contentType="text/html" pageEncoding="UTF-8"import="java.util.ArrayList,blog.beans.User,blog.daos.UserDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user details</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 
        <script>
            function show()
            {
                if(confirm("do you really want to delete? "))
                    return true;
                else
                    return false;
            }
            </script>

    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="cd cd-md-12">
                    <center> <h1>User Details</h1>
                        <table class="table">
                            <tr>
                                <td>Id</td>
                                <td>Name</td>
                                <td>Contact</td>
                                <td>Gender</td>
                                <td>UserId</td>
                                <td>Address</td>
                                <td>Operations</td>
                                
                            </tr>
                            
                        
                        <%
                            UserDao ud = new UserDao();
                            ArrayList<User> userlist = ud.findAll();
                            for (User user : userlist) {
                                 out.println("<tr><td>"+user.getId()+"</td><td>"+user.getName()+"</td><td>"
                                         +user.getContact()+"</td><td>"+user.getGender()+"</td><td>"
                                         +user.getUserid()+"</td><td>"+user.getAddress()+"</td><td>" 
                                 +"<a href='edituser.jsp?id="+ user.getId()+"'><i class='fas fa-pencil-alt btn btn-success' title='edit'></i></a>  "
                                 + "<a href='Usercontroller?op=delete&id="+user.getId()+"'onclick='return show();'><i class='fa fa-trash btn btn-danger' title='delete' ></i></a></td></tr>");
                          
                            }


                        %>

                        </table>
                        <br>
                        <a href="addnewuser.jsp" class="btn btn-primary">Add New Record</a>
                    </center>
                </div>
            </div>
        </div>

    </body>
</html>
