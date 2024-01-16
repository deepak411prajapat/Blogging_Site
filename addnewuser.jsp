
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
        <script>
            function compare(x, y,z)
            {
                if (x.value === y.value)
                    return true;
                else
                {
                    z.innerHTML="password and confirm password not matched...";
                    return false;
                }
            }

            
        </script>

    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col col-md-12">
                    <center><h2>User Registration </h2>
                        <form action="Usercontroller?op=add" method="post" onsubmit="return compare(pwd1,pwd2,s1);">
                            <table class="table">
                                <tr>
                                    <td> <b>Your Good Name<sup>*</sup></b> </td>
                                    <td><input type="text" value="" name="name"class="form-control" required/> </td>
                                </tr>

                                <tr>
                                    <td>Enter Your Userid<sup>*</sup></td>
                                    <td><input type="email" value="" name="userid" class="form-control" placeholder="your email id"  required/> </td>
                                </tr>

                                <tr>
                                    <td>Create Password<sup>*</sup> </td>
                                    <td><input type="password" value="" name="password" id="pwd1" class="form-control" placeholder="password consist of lower,upper,numeric and special symbol" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required/> </td>
                                </tr>

                                <tr>
                                    <td>Confirm Password<sup>*</sup> </td>
                                    <td><input type="password" value="" name="cpassword" id="pwd2" class="form-control" required/><br>
                                        <span class="text-danger" id="s1"></span>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Contact Details<sup>*</sup> </td>
                                    <td><input type="number" value="" name="contact" class="form-control" required/> </td>
                                </tr>

                                <tr>
                                    <td>Select Your Gender<sup>*</sup></td>
                                    <td>
                                        <input type="radio" value="male" name="gender"/>Male 
                                        <input type="radio" value="female" name="gender"/>Female 
                                    <td>
                                </tr>

                                <tr>
                                    <td>Your  Address</td>
                                    <td><textarea name="address" value="" class="form-control"></textarea> </td>

                                </tr>

                            </table>                      

                            <input type="submit" name="submit" value="Register" class="btn btn-primary"><input type="reset" name="Reset" class="btn btn-primary">
                        </form>
                    </center>
                </div>
            </div>
        </div>
    </body>
</html>
