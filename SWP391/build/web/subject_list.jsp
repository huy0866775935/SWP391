<%-- 
    Document   : subject_list
    Created on : Feb 27, 2024, 11:19:17 PM
    Author     : huy08
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/subject_list.css"/>
        <link rel="stylesheet" href="CSS/navbar.css"/>
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
        <!-- Font Awesome CSS -->
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>

    </head>
    <body>


        <nav>
            <ul class="sidebar">
                <li onclick=closeSidebar()><a href="#"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z"/></svg></a></li>
                <li><a href="#"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M240-200h120v-240h240v240h120v-360L480-740 240-560v360Zm-80 80v-480l320-240 320 240v480H520v-240h-80v240H160Zm320-350Z"/></svg>Home</a></li>
                <li><a href="#"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M360-300q-42 0-71-29t-29-71q0-42 29-71t71-29q42 0 71 29t29 71q0 42-29 71t-71 29ZM200-80q-33 0-56.5-23.5T120-160v-560q0-33 23.5-56.5T200-800h40v-80h80v80h320v-80h80v80h40q33 0 56.5 23.5T840-720v560q0 33-23.5 56.5T760-80H200Zm0-80h560v-400H200v400Zm0-480h560v-80H200v80Zm0 0v-80 80Z"/></svg>Schedule</a></li>
                <li><a href="#"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="m424-312 282-282-56-56-226 226-114-114-56 56 170 170ZM200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h560q33 0 56.5 23.5T840-760v560q0 33-23.5 56.5T760-120H200Zm0-80h560v-560H200v560Zm0-560v560-560Z"/></svg>Attendent Report</a></li>
                <li><a href="profile"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M480-480q-66 0-113-47t-47-113q0-66 47-113t113-47q66 0 113 47t47 113q0 66-47 113t-113 47ZM160-160v-112q0-34 17.5-62.5T224-378q62-31 126-46.5T480-440q66 0 130 15.5T736-378q29 15 46.5 43.5T800-272v112H160Zm80-80h480v-32q0-11-5.5-20T700-306q-54-27-109-40.5T480-360q-56 0-111 13.5T260-306q-9 5-14.5 14t-5.5 20v32Zm240-320q33 0 56.5-23.5T560-640q0-33-23.5-56.5T480-720q-33 0-56.5 23.5T400-640q0 33 23.5 56.5T480-560Zm0-80Zm0 400Z"/></svg>Profile</a></li>
                <li><a href="change_password"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M520-120q-74 0-138.5-27.5T268-223l57-57q38 37 88 58.5T520-200q116 0 198-82t82-198q0-116-82-198t-198-82q-116 0-198 82t-82 198v7l73-73 57 56-170 170L30-490l57-56 73 74v-8q0-75 28.5-140.5t77-114q48.5-48.5 114-77T520-840q75 0 140.5 28.5t114 77q48.5 48.5 77 114T880-480q0 150-105 255T520-120Zm-80-200q-17 0-28.5-11.5T400-360v-120q0-17 11.5-28.5T440-520v-40q0-33 23.5-56.5T520-640q33 0 56.5 23.5T600-560v40q17 0 28.5 11.5T640-480v120q0 17-11.5 28.5T600-320H440Zm40-200h80v-40q0-17-11.5-28.5T520-600q-17 0-28.5 11.5T480-560v40Z"/></svg>Change Password</a></li>

                <li><a href="logout"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h280v80H200v560h280v80H200Zm440-160-55-58 102-102H360v-80h327L585-622l55-58 200 200-200 200Z"/></svg>Logout</a></li>
            </ul>
            <ul class="bar">
                <li><a href="#">Picture</a></li>
                <li><a href="home">Home</a></li>
                <li><a href="#">Schedule</a></li>
                <li><a href="#">Attendent Report</a></li>
                <li><a href="#">Mark Report</a></li>
                <li><a href="#">Feedback</a></li>
                <li onclick=showSidebar()><a href="#"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M120-240v-80h720v80H120Zm0-200v-80h720v80H120Zm0-200v-80h720v80H120Z"/></svg></a></li>
            </ul>
        </nav>


        <section class="attendance">
            <div class="attendance-list">
                <h1>SUBJECT LIST</h1>
                <form action="subject_list" method="post">   
                    <div class="checkbox-container">
                        <div class="checkbox-item">

                            <c:choose>
                                <c:when test="${major eq null}">
                                    <input type="checkbox" id="all" name="major" value="all" checked>
                                </c:when>
                                <c:otherwise>
                                    <input type="checkbox" id="all" name="major" value="all">
                                </c:otherwise>
                            </c:choose>
                            <label for="all">All</label>
                        </div>

                        <div class="checkbox-item">
                            <input type="checkbox" id="se" name="major" value="se">
                            <label for="se">SE</label>
                        </div>

                        <div class="checkbox-item">
                            <input type="checkbox" id="ai" name="major" value="ai">
                            <label for="ai">AI</label>
                        </div>

                        <div class="checkbox-item">
                            <input type="checkbox" id="mkt" name="major" value="mkt">
                            <label for="mkt">MKT</label>
                        </div>

                        <input type="submit" value="Search">
                    </div>
                </form>
                <table class="table" style="margin: auto">

                    <thead>
                        <tr>
                            <th>Subject Code</th>
                            <th>Subject Name</th>
                            <th>Slot</th>
                            <th>Details</th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach items="${subject}" var="item">
                            <tr>
                                <td>${item.SubjectCode}</td>
                                <td>${item.Name}</td>
                                <td>${item.SlotLearning}</td>
                                <td>View</td>                               
                            </tr>
                        </c:forEach>  
                    </tbody>
                </table>
            </div>
        </section>
                <script>
                    function showSidebar() {
                        const sidebar = document.querySelector('.sidebar');
                        sidebar.style.display = 'flex';
                    }
                    function closeSidebar() {
                        const sidebar = document.querySelector('.sidebar');
                        sidebar.style.display = 'none';
                    }
                </script>
                </body>
                </html>
