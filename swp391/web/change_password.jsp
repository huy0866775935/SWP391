<%-- 
    Document   : change_password
    Created on : Jan 29, 2024, 7:41:17 PM
    Author     : huy08
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/style.css"/>
        <link rel="stylesheet" href="CSS/change_password.css"/>
    </head>
    <body>
        <div class="container">
            
        <div class="wrapper">
            <h1>CHANGE PASSWORD</h1>
            <form action="change_password" method="post" id="change_password">
                <div class="username">
                    <span>Email</span></br>
                    <input type="text" value="${username}"/>
                </div>
                <div class="input_container">
                    <span>Password</span></br>
                    <input type="password" name="old_Password"/>
                </div>
                <div class="input_container">
                    <span>New Password</span></br>
                    <input type="password" name="new_Password"/>
                </div>
                <div class="input_container">
                    <span>Confirm Password</span></br>
                    <input type="password"name="cf_Password"/>
                </div>
                <input type="submit" value="Change Password"/>
            </form>

        </div>
        </div>
        
    </body>
</html>
