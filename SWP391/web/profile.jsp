<%-- 
    Document   : profile
    Created on : Feb 25, 2024, 8:20:42 AM
    Author     : huy08
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link rel="stylesheet" href="CSS/student_profile.css"/>
        <link rel="stylesheet" href="CSS/student_profile2.css"/>
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
                <li><a href="#">Home</a></li>
                <li><a href="#">Schedule</a></li>
                <li><a href="#">Attendent Report</a></li>
                <li><a href="profile"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M480-480q-66 0-113-47t-47-113q0-66 47-113t113-47q66 0 113 47t47 113q0 66-47 113t-113 47ZM160-160v-112q0-34 17.5-62.5T224-378q62-31 126-46.5T480-440q66 0 130 15.5T736-378q29 15 46.5 43.5T800-272v112H160Zm80-80h480v-32q0-11-5.5-20T700-306q-54-27-109-40.5T480-360q-56 0-111 13.5T260-306q-9 5-14.5 14t-5.5 20v32Zm240-320q33 0 56.5-23.5T560-640q0-33-23.5-56.5T480-720q-33 0-56.5 23.5T400-640q0 33 23.5 56.5T480-560Zm0-80Zm0 400Z"/></svg>Profile</a></li>
                <li><a href="change_password"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M520-120q-74 0-138.5-27.5T268-223l57-57q38 37 88 58.5T520-200q116 0 198-82t82-198q0-116-82-198t-198-82q-116 0-198 82t-82 198v7l73-73 57 56-170 170L30-490l57-56 73 74v-8q0-75 28.5-140.5t77-114q48.5-48.5 114-77T520-840q75 0 140.5 28.5t114 77q48.5 48.5 77 114T880-480q0 150-105 255T520-120Zm-80-200q-17 0-28.5-11.5T400-360v-120q0-17 11.5-28.5T440-520v-40q0-33 23.5-56.5T520-640q33 0 56.5 23.5T600-560v40q17 0 28.5 11.5T640-480v120q0 17-11.5 28.5T600-320H440Zm40-200h80v-40q0-17-11.5-28.5T520-600q-17 0-28.5 11.5T480-560v40Z"/></svg>Change Password</a></li>

                <li><a href="#"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h280v80H200v560h280v80H200Zm440-160-55-58 102-102H360v-80h327L585-622l55-58 200 200-200 200Z"/></svg>Logout</a></li>
            </ul>
            <ul class="bar">
                <li><a href="#">Picture</a></li>
                <li><a href="#">Home</a></li>
                <li><a href="#">Schedule</a></li>
                <li><a href="#">Attendent Report</a></li>
                <li><a href="#">Mark Report</a></li>
                <li><a href="#">Feedback</a></li>
                <li onclick=showSidebar()><a href="#"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path d="M120-240v-80h720v80H120Zm0-200v-80h720v80H120Zm0-200v-80h720v80H120Z"/></svg></a></li>
            </ul>
        </nav>
        
        <div class="student-profile py-4">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="card shadow-sm">
                            <div class="card-header bg-transparent text-center">
                                <img class="profile_img" src="https://source.unsplash.com/600x300/?student" alt="student dp">
                                <h3>${Name}</h3>
                            </div>
                            <div class="card-body">
                                <p class="mb-0"><strong class="pr-1">Student ID:</strong>${StudentID}</p>
                                <p class="mb-0"><strong class="pr-1">Identity:</strong>${Personal_ID}</p>
                                <p class="mb-0"><strong class="pr-1">Major:</strong>Software Engineer</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card shadow-sm">
                            <div class="card-header bg-transparent border-0">
                                <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Student Information</h3>
                            </div>
                            <div class="card-body pt-0">
                                <table class="table table-bordered">
                                    <tr>
                                        <th width="30%">Date of Birth</th>
                                        <td width="2%">:</td>
                                        <td>${Dob}</td>
                                    </tr>
                                    
                                    <tr>
                                        <th width="30%">Gender</th>
                                        <td width="2%">:</td>
                                        <td>${Gender}</td>
                                    </tr>
                                    <tr>
                                        <th width="30%">Phone</th>
                                        <td width="2%">:</td>
                                        <td>${Phone}</td>
                                    </tr>
                                    <tr>
                                        <th width="30%">Address</th>
                                        <td width="2%">:</td>
                                        <td>${Address}</td>
                                    </tr>
                                    <tr>
                                        <th width="30%">Pesonal Email</th>
                                        <td width="2%">:</td>
                                        <td>${P_Email}</td>
                                    </tr>
                                    
                                    <tr>
                                        <th width="30%">Academic Year</th>
                                        <td width="2%">:</td>
                                        <td>${StartDate}</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div style="height: 26px"></div>
                        <div class="card shadow-sm">
                            <div class="card-header bg-transparent border-0">
                                <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Other Information</h3>
                            </div>
                            <div class="card-body pt-0">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
    </body>
</html>
