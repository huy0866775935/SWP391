<%-- 
    Document   : home2
    Created on : Feb 22, 2024, 3:28:38 PM
    Author     : huy08
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/navbar.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <nav>
            <ul class="sidebar">
                <li onclick=closeSidebar()><a href="#"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z"/></svg></a></li>
                <li><a href="#">Home</a></li>
                <li><a href="#">Schedule</a></li>
                <li><a href="#">Attendent Report</a></li>
                <li><a href="profile"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M480-480q-66 0-113-47t-47-113q0-66 47-113t113-47q66 0 113 47t47 113q0 66-47 113t-113 47ZM160-160v-112q0-34 17.5-62.5T224-378q62-31 126-46.5T480-440q66 0 130 15.5T736-378q29 15 46.5 43.5T800-272v112H160Zm80-80h480v-32q0-11-5.5-20T700-306q-54-27-109-40.5T480-360q-56 0-111 13.5T260-306q-9 5-14.5 14t-5.5 20v32Zm240-320q33 0 56.5-23.5T560-640q0-33-23.5-56.5T480-720q-33 0-56.5 23.5T400-640q0 33 23.5 56.5T480-560Zm0-80Zm0 400Z"/></svg>Profile</a></li>
                <li><a href="change_password"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M520-120q-74 0-138.5-27.5T268-223l57-57q38 37 88 58.5T520-200q116 0 198-82t82-198q0-116-82-198t-198-82q-116 0-198 82t-82 198v7l73-73 57 56-170 170L30-490l57-56 73 74v-8q0-75 28.5-140.5t77-114q48.5-48.5 114-77T520-840q75 0 140.5 28.5t114 77q48.5 48.5 77 114T880-480q0 150-105 255T520-120Zm-80-200q-17 0-28.5-11.5T400-360v-120q0-17 11.5-28.5T440-520v-40q0-33 23.5-56.5T520-640q33 0 56.5 23.5T600-560v40q17 0 28.5 11.5T640-480v120q0 17-11.5 28.5T600-320H440Zm40-200h80v-40q0-17-11.5-28.5T520-600q-17 0-28.5 11.5T480-560v40Z"/></svg>Change Password</a></li>

                <li><a href="logout"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h280v80H200v560h280v80H200Zm440-160-55-58 102-102H360v-80h327L585-622l55-58 200 200-200 200Z"/></svg>Logout</a></li>
            </ul>
            <ul class="bar">
                <li><a href="#">Picture</a></li>
                <li style="background-color: darkturquoise"><a href="#">Home</a></li>
                <li><a href="#">Schedule</a></li>
                <li><a href="#">Attendent Report</a></li>
                <li><a href="#">Mark Report</a></li>
                <li><a href="#">Feedback</a></li>
                <li onclick=showSidebar()><a href="#"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M120-240v-80h720v80H120Zm0-200v-80h720v80H120Zm0-200v-80h720v80H120Z"/></svg></a></li>
            </ul>
        </nav>
        <div onclick="closeSidebar()">

            <style>
                body {
                    font-family: Arial, sans-serif;
                }
                table {
                    border-collapse: collapse;
                    width: 100%;
                }
                th, td {
                    border: 1px solid #ddd;
                    padding: 8px;
                    text-align: center;
                }
                th {
                    background-color: #f2f2f2;
                }
            </style>

            <body>
                <h1>LỊCH HỌC</h1>
                <table class="outer_table">
                    <tr>
                        <th>Năm học<br>
                            Ngày
                        </th>
                        <th style="padding:0">
                            <table class="onto_table">
                                <tr>
                                    <th>Thứ Hai</th>
                                    <th>Thứ Ba</th>
                                    <th>Thứ Tư</th>
                                    <th>Thứ Năm</th>
                                    <th>Thứ Sáu</th>
                                    <th>Thứ Bảy</th>
                                    <th>Chủ Nhật</th>
                                </tr>
                                <tr>
                                    <th>Time</th>
                                    <th>Time</th>
                                    <th>Time</th>
                                    <th>Time</th>
                                    <th>Time</th>
                                    <th>Time</th>
                                    <th>Time</th>
                                </tr>

                            </table>
                        </th>
                    </tr>


                    <tr>

                        <td>Slot1</td>
                        <td style="padding:0">
                            <table class="onto_table">
                                <th>Time</th>
                                <th>Time</th>
                                <th>Time</th>
                                <th>Time</th>
                                <th>Time</th>
                                <th>Time</th>
                                <th>Time</th>
                            </table>
                        </td>
                    </tr>
                    <tr>

                        <td>Slot2</td>

                    </tr>
                    <tr>

                        <td>Slot3</td>

                    </tr>
                    <tr>

                        <td>Slot4</td>

                    </tr>
                    <tr>

                        <td>Slot5</td>

                    </tr>
                </table>
            </body>
</html>

</div>
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
<style>
    .outer_table{
        padding: 10px;
    }
    .onto_table th{
        width: 10%;
    }
</style>
</body>

</html>
