<%-- 
    Document   : login
    Created on : Jan 24, 2024, 10:09:09 AM
    Author     : huy08
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/reset.css"/>
        <link rel="stylesheet" href="CSS/login.css"/>
        <script src="https://kit.fontawesome.com/4763a6b04e.js" crossorigin="anonymous"></script>
        <title>Login</title>
    </head>
    <body>
        <div class="container">
            <div id="wrapper">
                <form action="login" method="post" id="form-login">
                    <h1 id="form-heading">WELCOME TO WEBSITE!!</h1> 
                    <div class="form-group">
                        
                       <i class="fa-solid fa-user"></i>
                       <input type="text" name="username" class="form-input" placeholder="Use Name" value="" required></br>
                        
                    </div>
                    <div class="form-group">
                        <i class="fa-solid fa-key"></i>
                        <input type="password" name="password" class="form-input" id="login-password" placeholder="Password" value="" required></br>
                    </div>
                    <% if(request.getAttribute("fail")!=null){
                    %>
                    <div style="color:red">${fail}</br></div>
                        <%}%>
                    <div id="check-remember">
                        <input type="checkbox" name ="remember" checked>Remember me!</br>
                    </div>
                    <div class="form-submit">
                        <input type="submit" id="login-button" value="Login">
                    </div>
                    <div id="forgot-href">
                        <span>Forgot password?</span>
                        <a href="forgot_password">Click here</a>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
