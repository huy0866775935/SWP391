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
                    <h3 class="mt-2">Teacher information</h3>
                    <div class="row p-3">
                        <div class="col-lg-3 fw-bolder">Name:</div>
                        <div class="col-lg-9 bolder">${teacher.person.name}</div>
                    </div>
                    <div class="row p-3">
                        <div class="col-lg-3 fw-bolder">Date of birth:</div>
                        <div class="col-lg-9 bolder">${teacher.person.dob}</div>
                    </div>
                    <div class="row p-3">
                        <div class="col-lg-3 fw-bolder">Gender:</div>
                        <div class="col-lg-9 bolder">${teacher.person.gender}</div>
                    </div>
                    <div class="row p-3">
                        <div class="col-lg-3 fw-bolder">Phone:</div>
                        <div class="col-lg-9 bolder">${teacher.person.phone}</div>
                    </div>
                    <div class="row p-3">
                        <div class="col-lg-3 fw-bolder">Address:</div>
                        <div class="col-lg-9 bolder">${teacher.person.address}</div>
                    </div>
                    <div class="row p-3">
                        <div class="col-lg-3 fw-bolder">Start date:</div>
                        <div class="col-lg-9 bolder">${teacher.startDate}</div>
                    </div>
                    <div class="mt-2">
                        <a class="btn btn-danger" href="${pageContext.request.contextPath}/teacher">Go back</a>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </body>
</html>
