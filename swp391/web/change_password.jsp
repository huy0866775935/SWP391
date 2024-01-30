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
    </head>
    <body>
        <div class="container">
            
        <div class="wrapper">
            <h1>Change Password</h1>
            <form action="change_password" method="post" id="change_password">
                <div class="username">
                    <span>Email</span>
                    <input type="text" value="${username}"/>
                </div>
                <div class="input_container">
                    <span>Password</span>
                    <input type="password" name="old_Password"/>
                </div>
                <div class="input_container">
                    <span>New Password</span>
                    <input type="password" name="new_Password"/>
                </div>
                <div class="input_container">
                    <span>Confirm Password</span>
                    <input type="password"name="cf_Password"/>
                </div>
                <input type="submit" value="Change Password"/>
            </form>

        </div>
        </div>
        
    </body>
</html>
