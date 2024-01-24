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
        <title>Login</title>
    </head>
    <body>
        <form action="login" method="post">
            <input type="text" name="username" value="" required></br>
            <input type="password" name="password" value="" required></br>
            ${Fail}
        <input type="submit" value="Login">
        </form>
        
    </body>
</html>
