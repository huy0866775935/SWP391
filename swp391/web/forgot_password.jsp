<%-- 
    Document   : forgot_password
    Created on : Jan 28, 2024, 9:58:23 PM
    Author     : huy08
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Font Awesome Icons  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
              integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
              crossorigin="anonymous" />
        <!-- Google Fonts  -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="stylesheet" href="CSS/style.css"/>
        <link rel="stylesheet" href="CSS/forgot_password2.css"/>

        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

        <title>Forgot Password UI Using CSS - @code.scientist x @codingtorque</title>
    </head>
        <body>
            <div class="container">
                
                <div class="wrapper">
                     <p class="lock-icon">
                    <i class="fas fa-lock"></i>
                </p>
                <h2>Forgot Password?</h2>
                <p>You can reset your Password here</p>
                <div class="input-email">
                    <input type="text" class="passInput" placeholder="Email address">
                </div>                
                <div class="input">
                    <button class="bt"><a href="OTP_reveiver.jsp">Send OTP</a></button>
                    <button class="bt"><a href="login">Back To Login</a></button>
                </div>
                </div>                   
                <div class="note">If you don’t recive OTP code, please try again after 20 seconds</div>
            
                
                
            </div>
            
        </body>

</html>
</html>
