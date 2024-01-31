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
        <link rel="stylesheet" href="CSS/style.css"/>
        <link rel="stylesheet" href="CSS/login2.css"/>
        <script src="https://kit.fontawesome.com/4763a6b04e.js" crossorigin="anonymous"></script>

        <title>Login</title>
    </head>
    <!--    <body>
            <script src="JS/login.js"></script>
            <div class="container">
                <div id="wrapper">
                    <form action="login" method="post" id="form-login">
                        <h1 id="form-heading" class="card-header h5 text-white bg-primary">LOGIN</h1> 
                        <div class="form-group">                        
                           <i class="fa-solid fa-user"></i>
                           <input type="text" name="username" class="form-input" placeholder="Email" value="" required></br>                        
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
    <input type="checkbox" name ="remember" id="box" checked>Remember me!</br>
</div>
<div class="form-submit">
    <input type="submit" id="login-button" value="LOGIN">
</div>
<i class="fa-solid fa-envelope" id="email-icon"></i>
<div id="forgot-href">
    <span>Forgot password?</span>
    <a href="forgot_password">Click here!</a>
</div>
</form>
</div>
</div>
</body>-->

    <body>
        <div class="container">
            <h1>LOGIN</h1>
            <form action="login" method="post">
                <div id="username">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" placeholder="Email" name="username"/>
                </div>
                <div id="password">
                    <i class="fa-solid fa-key"></i>
                    <input type="password" placeholder="Password" name="password"/>
                </div>
                <% if(request.getAttribute("fail")!=null){
                %>
                <div style="color:red;margin-bottom: 10px" class="note">${fail}</br></div>
                    <%}%>
                <div id="remember-checkbox">
                    <input type="checkbox" title="Remember Me" name="remember"/>
                    <label for="remember">Remember Me</label>
                </div>
                <div id="login-btn">
                    <input type="submit" value="Login"/>
                </div>
            </form>
            <div id="forgot">
                <span>Forgot Password?</span>
                <a href="forgot_password">Click Here!</a>
            </div>
        </div>
    </body>            
</html>
