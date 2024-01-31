<%-- 
    Document   : create_user
    Created on : Jan 31, 2024, 8:36:37 AM
    Author     : huy08
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/style.css"/>
        <link rel="stylesheet" href="CSS/create_user.css"/>
    </head>
    <body>
        <div class="container">                    
            <form action="create_user" method="post">
                <h1>Create Account</h1>
                <span>Email</span>
                <input type="text" name="c_username"/>
                <span>Password</span>
                <input type="password" name="c_password"/>
                <span>Confirm Password</span>
                <input type="password" name="c_cf_password"/>

                <span>
                    <label for="role" >Choose role:</label>
                    <select id="role" name="role">
                        <option value="Admin">Admin</option>
                        <option value="Teacher">Teacher</option>
                        <option value="Student">Student</option>            
                    </select>
                </span>
                <span>
                    <input type="submit" value="Next"/>
                    <button><a href="home">Cancel</a></button>
                </span>


            </form>
        </div>
    </body>
</html>
