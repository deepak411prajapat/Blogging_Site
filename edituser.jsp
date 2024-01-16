
<%@page contentType="text/html" pageEncoding="UTF-8" import="blog.beans.User, blog.daos.UserDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP form</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        

    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col col-md-12">
                    <%
                    UserDao ud=new UserDao();
                    int id=Integer.parseInt(request.getParameter("id"));
                    User user=ud.find(id);
                    %>
                    <center><h2>Edit user details </h2>
                        <form action="Usercontroller?op=update" method="post" onsubmit="return compare(pwd1,pwd2,s1);">
                            <table class="table">
                                
                                <tr>
                                    <td> Unique Id: </td>
                                    <td><input type="number" value="<%= user.getId() %>" name="id" readonly/> </td>
                                </tr>
                                <tr>
                                    <td> <b>Your Good Name<sup>*</sup></b> </td>
                                    <td><input type="text" value="<%= user.getName() %>" name="name"class="form-control" required/> </td>
                                </tr>

                                
                                <tr>
                                    <td>Contact Details<sup>*</sup> </td>
                                    <td><input type="number" value="<%=user.getContact()%>" name="contact" class="form-control" required/> </td>
                                </tr>

                                <tr>
                                    <td>Select Your Gender<sup>*</sup></td>
                                    <td><input type="radio" value="male" name="gender" <%=user.getGender().equalsIgnoreCase("male")?"checked":"" %>/>Male </td>
                                    <td><input type="radio" value="female" name="gender"<%=user.getGender().equalsIgnoreCase("female")?"checked":"" %>/>Female </td>
                                </tr>

                                <tr>
                                    <td>Your  Address</td>
                                    <td><textarea type="text"  name="address" class="form-control"><%=user.getAddress()%></textarea> </td>

                                </tr>

                            </table>                      

                            <input type="submit" name="submit" value="Update" class="btn btn-primary"/>                        </form>
                    </center>
                </div>
            </div>
        </div>
    </body>
</html>
