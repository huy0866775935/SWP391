Use master
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'AttendenceReport_Data')
DROP DATABASE AttendenceReport_Data;
GO

CREATE DATABASE AttendenceReport_Data;
GO

USE AttendenceReport_Data;
GO




-- Create User table
CREATE TABLE [User] (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    UserName NVARCHAR(255) UNIQUE NOT NULL,
    Password NVARCHAR(255) NOT NULL, -- Ensure passwords are hashed
    Role NVARCHAR(50) CHECK (Role IN ('Student', 'Teacher', 'Admin')) NOT NULL,
    Email NVARCHAR(255) UNIQUE NOT NULL,
);
GO
insert into [User] values('admin', '123', 'Admin', 'admin@gmail.com');
insert into [User] values('teacher','123','Teacher','teacher@gmail.com')
insert into [User] values('student', '123', 'Student', 'student@gmail.com');
insert into [User] values('teacher2','123','Teacher','teacher2@gmail.com');
GO
-- Create Subject table
CREATE TABLE Subject (
    SubjectID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Description NVARCHAR(MAX)
);
GO
Insert into Subject values('SWP391', 'OK');
Insert into Subject values('SWR302', 'ok')
-- Create TimeSlot table
CREATE TABLE TimeSlot (
    TimeSlotID INT IDENTITY(1,1) PRIMARY KEY,
    Name Nvarchar(50)
);
GO
insert into TimeSlot values('Slot 1');
insert into TimeSlot values('Slot 2');
insert into TimeSlot values('Slot 3');
insert into TimeSlot values('Slot 4');
insert into TimeSlot values('Slot 5');
-- Create Room table
CREATE TABLE Room (
    RoomID INT IDENTITY(1,1) PRIMARY KEY,
    RoomName NVARCHAR(50) UNIQUE NOT NULL
);
GO
insert into Room values ('BE101'); 
insert into Room values ('BE102')
GO
-- Create Class table
CREATE TABLE Class (
    ClassID INT IDENTITY(1,1) PRIMARY KEY,
	ClassName nvarchar(50),
   
);
GO
INSERT INTO Class (ClassName) VALUES ('SE1601');
INSERT INTO Class (ClassName) VALUES ('SE1602');
INSERT INTO Class (ClassName) VALUES ('SE1603');
GO

CREATE TABLE ClassSubject (
    ClassID INT,
    SubjectID INT,
    PRIMARY KEY (ClassID, SubjectID),
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID),
    FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID)
);
GO
INSERT INTO ClassSubject (ClassID, SubjectID) VALUES (1, 1);  
INSERT INTO ClassSubject (ClassID, SubjectID) VALUES (2, 2);

GO
-- Create ClassRoom junction table
CREATE TABLE ClassRoom (
    ClassID INT,
    RoomID INT,
    TimeSlotID INT,
	Date date,
    PRIMARY KEY (ClassID, RoomID, TimeSlotID),
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID),
    FOREIGN KEY (TimeSlotID) REFERENCES TimeSlot(TimeSlotID),
    CONSTRAINT UQ_ClassRoom UNIQUE (RoomID, TimeSlotID)
);
GO
INSERT INTO ClassRoom (ClassID, RoomID, TimeSlotID, Date) VALUES (1, 1, 1, '2024-02-26');
INSERT INTO ClassRoom (ClassID, RoomID, TimeSlotID, Date) VALUES (2, 2, 2, '2024-02-27');
INSERT INTO ClassRoom (ClassID, RoomID, TimeSlotID, Date) VALUES (3, 1, 2, '2024-02-28');

GO
-- Create StudentClass junction table for students enrolled in classes
CREATE TABLE StudentClass (
	StudentClassID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT,
    ClassID INT,
	TeacherID INT,
    FOREIGN KEY (StudentID) REFERENCES [User](UserID),
	FOREIGN KEY (TeacherID) REFERENCES [User](UserID),
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);
GO
INSERT INTO StudentClass (StudentID, ClassID, TeacherID) VALUES (3, 1, 2);
INSERT INTO StudentClass (StudentID, ClassID, TeacherID) VALUES (3, 2, 2);
GO
-- Create Attendance table
CREATE TABLE Attendance (
    AttendanceID INT IDENTITY(1,1) PRIMARY KEY,
    StudentClassID INT,
    Date DATE NOT NULL,
    Status NVARCHAR(50) CHECK (Status IN ('Attendant', 'Absent')) NOT NULL,
    FOREIGN KEY (StudentClassID) REFERENCES StudentClass(StudentClassID)
);
GO
INSERT INTO Attendance (StudentClassID, Date, Status) VALUES (1, '2024-02-26', 'Attendant');
INSERT INTO Attendance (StudentClassID, Date, Status) VALUES (2, '2024-02-26', 'Absent');

GO

-- Create Feedback table
CREATE TABLE Feedback (
    FeedbackID INT IDENTITY(1,1) PRIMARY KEY,
    SenderID INT,
    ReceiverID INT,
    Content NVARCHAR(MAX) NOT NULL,
    Timestamp DATETIME2 NOT NULL,
    FOREIGN KEY (SenderID) REFERENCES [User](UserID),
    FOREIGN KEY (ReceiverID) REFERENCES [User](UserID)
);
GO
USE [AttendenceReport_Data]
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [Password], [Role], [Email]) VALUES (1, N'admin', N'123', N'Admin', N'admin@gmail.com')
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Role], [Email]) VALUES (2, N'teacher', N'123', N'Teacher', N'teacher@gmail.com')
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Role], [Email]) VALUES (3, N'student', N'123', N'Student', N'student@gmail.com')
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Role], [Email]) VALUES (4, N'teacher2', N'123', N'Teacher', N'teacher2@gmail.com')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (1, N'SE1601')
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (2, N'SE1602')
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (3, N'SE1603')
SET IDENTITY_INSERT [dbo].[Class] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentClass] ON 

INSERT [dbo].[StudentClass] ([StudentClassID], [StudentID], [ClassID], [TeacherID]) VALUES (1, 3, 1, 2)
INSERT [dbo].[StudentClass] ([StudentClassID], [StudentID], [ClassID], [TeacherID]) VALUES (2, 3, 2, 2)
SET IDENTITY_INSERT [dbo].[StudentClass] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([SubjectID], [Name], [Description]) VALUES (1, N'SWP391', N'OK')
INSERT [dbo].[Subject] ([SubjectID], [Name], [Description]) VALUES (2, N'SWR302', N'ok')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
INSERT [dbo].[ClassSubject] ([ClassID], [SubjectID]) VALUES (1, 1)
INSERT [dbo].[ClassSubject] ([ClassID], [SubjectID]) VALUES (2, 2)
GO
SET IDENTITY_INSERT [dbo].[Attendance] ON 

INSERT [dbo].[Attendance] ([AttendanceID], [StudentClassID], [Date], [Status]) VALUES (1, 1, CAST(N'2024-02-26' AS Date), N'Attendant')
INSERT [dbo].[Attendance] ([AttendanceID], [StudentClassID], [Date], [Status]) VALUES (2, 2, CAST(N'2024-02-26' AS Date), N'Absent')
INSERT [dbo].[Attendance] ([AttendanceID], [StudentClassID], [Date], [Status]) VALUES (3, 1, CAST(N'2024-02-25' AS Date), N'Attendant')
INSERT [dbo].[Attendance] ([AttendanceID], [StudentClassID], [Date], [Status]) VALUES (4, 2, CAST(N'2024-02-25' AS Date), N'Absent')
INSERT [dbo].[Attendance] ([AttendanceID], [StudentClassID], [Date], [Status]) VALUES (5, 1, CAST(N'2024-02-27' AS Date), N'Attendant')
SET IDENTITY_INSERT [dbo].[Attendance] OFF
GO
INSERT [dbo].[ClassRoom] ([ClassID], [RoomID], [TimeSlotID], [Date]) VALUES (1, 1, 1, CAST(N'2024-02-26' AS Date))
INSERT [dbo].[ClassRoom] ([ClassID], [RoomID], [TimeSlotID], [Date]) VALUES (2, 2, 2, CAST(N'2024-02-27' AS Date))
INSERT [dbo].[ClassRoom] ([ClassID], [RoomID], [TimeSlotID], [Date]) VALUES (3, 1, 2, CAST(N'2024-02-28' AS Date))
INSERT [dbo].[ClassRoom] ([ClassID], [RoomID], [TimeSlotID], [Date]) VALUES (1, 1, 1, CAST(N'2024-02-27' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([RoomID], [RoomName]) VALUES (1, N'BE101')
INSERT [dbo].[Room] ([RoomID], [RoomName]) VALUES (2, N'BE102')
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[TimeSlot] ON 

INSERT [dbo].[TimeSlot] ([TimeSlotID], [Name]) VALUES (1, N'Slot 1')
INSERT [dbo].[TimeSlot] ([TimeSlotID], [Name]) VALUES (2, N'Slot 2')
INSERT [dbo].[TimeSlot] ([TimeSlotID], [Name]) VALUES (3, N'Slot 3')
INSERT [dbo].[TimeSlot] ([TimeSlotID], [Name]) VALUES (4, N'Slot 4')
INSERT [dbo].[TimeSlot] ([TimeSlotID], [Name]) VALUES (5, N'Slot 5')
SET IDENTITY_INSERT [dbo].[TimeSlot] OFF
GO