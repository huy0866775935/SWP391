<%-- 
    Document   : teacher-information
    Created on : Feb 21, 2024, 2:26:12 AM
    Author     : ns
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher information</title>
    </head>
    <body>
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-6 border border-opacity-50 rounded mt-4 p-3">
                    <h3 class="mt-2">Teacher list</h3>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="teacher" varStatus="status" items="${teachers}">
                                <tr>
                                    <td>
                                        ${status.count}
                                    </td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/teacher/detail?id=${teacher.id}">
                                            ${teacher.person.name}
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </body>
</html>
