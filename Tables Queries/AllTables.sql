create database ExaminationSystem 
use ExaminationSystem 

/*Department table*/
create table Department (
	Dept_Id int identity(1,1) primary key,
	Dept_Name varchar(20)
);

/*Register table*/
create table Register (
	Rgst_Id int identity(1,1) primary key not null,
	Rgst_Email varchar(50) not null,
	Rgst_Name varchar(50) not null,
	Rgst_password nchar(50) not null,
	Rgst_Type varchar(20)  null
);

/*Student table*/
create table Student
(
	St_Id int  identity(1,1) primary key,
	St_Fname varchar(20) not null,
	St_Lname varchar(20) not null,
	St_Age   int ,
	St_Address varchar(100),
	Dept_Id int foreign key references Department(Dept_Id),
	Rgst_Id int foreign key references Register(Rgst_Id)
); 

/*instructor table*/
create table Instructor (
	Inst_Id int identity(1,1) primary key,
	Inst_fName varchar(20),
	Inst_lName varchar(20),
	Inst_Age int,
	Inst_Address varchar(50),
	Rgst_Id int foreign key references Register(Rgst_Id)
);

/*course table*/
create table Course (
	Crs_Id int identity(1,1) primary key,
	Crs_Name varchar(20),
	Inst_Id int foreign key references Instructor(Inst_Id),
	Dept_Id int foreign key references Department(Dept_Id)
);

/*course topic*/
create table Topic (
	T_Id int identity(1,1) primary key,
	T_Name varchar(20),
	Crs_Id int foreign key references Course(Crs_Id)
);

/*course question*/
create table Question (
	Q_Id int identity(1,1) primary key,
	Q_Text varchar(200),
	Q_Type varchar(10),
	Q_ModelAns varchar(50),
	Crs_Id int foreign key references Course(Crs_Id)
);

/*Exam table*/
create table Exam
(
	Ex_Id int identity(1,1) primary key,
	St_Id int foreign key references Student(St_Id),
	Crs_Id int foreign key references Course(Crs_Id)
);
 /*Realtions*/
 /* Question Exam*/
 create table Exam_Ques (
	Ex_Id int foreign key references Exam(Ex_Id),
	Q_Id int foreign key references Question(Q_Id),
	PRIMARY KEY (Q_Id,Ex_Id)
);
/* Student Answer*/
 create table Stud_Answers (
	St_Id int foreign key references Student(St_Id),
	Q_Id int foreign key references Question(Q_Id),
	Ex_Id int foreign key references Exam(Ex_Id),
	Grade int,
	Answer varchar(50),
	PRIMARY KEY (St_Id,Q_Id,Ex_Id)
); 
/* Student Exam*/
 create table Stud_Exam (
	St_Id int foreign key references Student(St_Id),
	Ex_Id int foreign key references Exam(Ex_Id),
	Crs_Id int foreign key references Course(Crs_Id),
	Grade int,
	ExDate datetime,
	PRIMARY KEY (St_Id,Ex_Id,Crs_Id)
); 
/* Student Course*/
 create table Stud_Course (
	St_Id int foreign key references Student(St_Id),
	Crs_Id int foreign key references Course(Crs_Id),
	FullGrade int,
	Progress varchar(50),
	PRIMARY KEY (St_Id,Crs_Id)
); 