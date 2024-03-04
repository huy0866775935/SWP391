<%-- 
    Document   : list
    Created on : Mar 3, 2024, 7:58:36 PM
    Author     : huy08
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Subject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>







    
    <%                                         
        ArrayList<Subject> subject = (ArrayList<Subject>) request.getAttribute("subject");                
    %>    
    <table border="1">
        <thead>
            <tr>
                <th>Entry ID</th>
                <th>Entry Title</th>
                <th>Go Detail</th>

            </tr>
        </thead>
        <tbody>
            <%
           // int count = 0;
            for (Subject dto: subject){
            %>

            <tr>

                <td>
                    <%= dto.getSubjectCode() %>

                </td>
                <td>
                    <%= dto.getSlotLearning() %>
                </td>

                <td>
                    <%= dto.getName() %>
                </td>
            </tr>
            <%}%>
        </tbody>
    </table>       




</div>
</body>
</html>
