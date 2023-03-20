/*1- Student Stored Procedure*/
/*select*/
create proc SelectStudent
as
select *
from Student
/*insert*/
create proc InsertIntoStudent @fname varchar(20),@lname varchar(20)=null,@age int=null,@address varchar(100)=null,@did int=null,@rid int=null
as
insert into Student(St_Fname,St_Lname,St_Age,St_Address,Dept_Id,Rgst_Id) 
		values(@fname,@lname,@age,@address,@did,@rid);
/*update*/
create proc UpdateStudent @id int, @newFname varchar(20)=null,@newLname varchar(20)=null,@newAge int=null, @newAddress varchar(100)=null,@newDid int=null,@newRid int=null
as
update Student
set 
St_Fname =  isnull( @newFname, St_Fname),
St_Lname =	isnull( @newLname, St_Lname),
St_Age   =  isnull( @newAge, St_Age ),
St_Address= isnull( @newAddress, St_Address),
Dept_Id= isnull( @newDid, Dept_Id),
Rgst_Id= isnull( @newRid, Rgst_Id)
where St_Id=@id

/*delete*/
create proc DeleteStudent @id int
as
delete from Student where St_Id= @id

/*2- Exam Stored Procedure*/
/*select*/
create proc SelectExam
as
select*
from Exam;

/*insert*/
create proc InsertIntoExam @sid int,@cid int=null
as
insert into Exam(St_Id,Crs_Id) values(@sid,@cid);
/*update*/
create proc UpdateExam @id int, @sid int=null,@cid int=null
as
update Exam
set 
St_Id =  isnull( @sid, St_Id),
Crs_Id =  isnull( @cid, St_Id)
where Ex_Id=@id 

/*delete*/
create proc DeleteExam @id int
as
delete from Exam where Ex_Id= @id


/*3- Topic Stored Procedure*/
/*select*/
create proc SelectTopic
as
select*
from Topic

/*insert*/
create proc InsertIntoTopic @tname varchar(20),@cid int=null
as
insert into Topic(T_name,Crs_Id) values(@tname,@cid);

/*update*/
create proc UpdateTopic @id int, @newtname varchar(20)=null,@newcid int=null
as
update Topic
set 
T_name = isnull( @newtname, T_Name),
Crs_Id = isnull( @newcid, Crs_Id)
where T_Id=@id

/*delete*/
create proc DeleteTopic @id int
as
delete from Topic where T_Id= @id

/*4- Department Stored Procedure*/
/*select*/
create proc SelectDept
as
select*
from Department

/*insert*/
create proc InsertIntoDepartment @Dept_name varchar(20)
as
insert into Department(Dept_name) values(@Dept_name);

/*update*/
create proc UpdateDepartment @id int, @newDeptname varchar(20)
as
update Department
set 
Dept_name = isnull(@newDeptname,Dept_Name)
where Dept_Id=@id

/*delete*/
create proc DeleteDepartment @id int
as
delete from Department where Dept_Id= @id

/*5- Courses Stored Procedure*/
/*select*/
create proc SelectCourse
as
select*
from Course

/*insert*/
create proc InsertIntoCourse @Crs_name varchar(20), @inst_Id int=null, @dept_Id int=null
as
insert into Course(Crs_name,Inst_Id,Dept_Id) values(@Crs_name,@inst_Id,@dept_Id);

/*update*/
create proc UpdateCourse @id int, @newCrsname varchar(20)=null, @newInst_Id int=null,@newDept_Id int=null
as
update Course
set 
Crs_name = isnull(@newCrsname,Crs_Name),
Inst_Id = isnull(@newInst_Id,Inst_Id),
Dept_Id = isnull(@newDept_Id,Dept_Id)
where Crs_Id=@id

/*delete*/
create proc DeleteCourse @id int
as
delete from Course where Crs_Id= @id

/*6- Register Stored Procedure*/
/*select*/
create proc SelectRegister
as
select*
from Register

/*insert*/
create proc InsertIntoRegister @email varchar(50)=null, @name varchar(50)=null, @password varchar(50)=null,@type varchar(20)=null
as
insert into Register(Rgst_Email,Rgst_Name,Rgst_password,Rgst_Type) values(@email,@name,@password,@type);

/*update*/
create proc UpdateRegister @id int, @newemail varchar(50)=null, @newname varchar(50)=null, @newpassword varchar(50)=null,@newtype varchar(20)=null
as
update Register
set 
Rgst_Email = isnull(@newemail,Rgst_Email),
Rgst_Name = isnull(@newname,Rgst_Name),
Rgst_password = isnull(@newpassword,Rgst_password),
Rgst_Type = isnull(@newtype,Rgst_Type)
where Rgst_Id=@id

/*delete*/
create proc DeleteRegister @id int
as
delete from Register where Rgst_Id= @id

/*------------------------------------7-Instructor Stored Procedure---------------------------------------------------*/
--Select
create proc SelectInstructor
as
select*
from Instructor
--Insert
create proc InsertIntoInstructor @Fname varchar(20),@Lname varchar(20)=null,@age int=null,@address varchar(50)=null,@rid int =null
as
insert into Instructor(Inst_fName,Inst_lName,Inst_Age,Inst_Address,Rgst_Id) values(@Fname,@Lname,@age,@address,@rid);
--Update
create proc UpdateInstructor @id int, @newFname varchar(20)=null,@newLname varchar(20)=null,@newAge int=null, @newAddress varchar(100)=null,@newRid int=null
as
update Instructor
set 
Inst_fName =  isnull( @newFname, Inst_fName),
Inst_lName =	isnull( @newLname, Inst_lName),
Inst_Age   =  isnull( @newAge, Inst_Age ),
Inst_Address= isnull( @newAddress, Inst_Address),
Rgst_Id= isnull( @newRid, Rgst_Id)
where Inst_Id=@id
--Delete
create proc DeleteInstructor @id int
as
delete from Instructor where Inst_Id= @id

/*-----------------------------------------------8-Question Stored Procedure------------------------------------------------------*/
--Select
create proc SelectQuestion
as
select*
from Question
--Insert
create proc InsertIntoQuestion @text varchar(200),@type varchar(10)=null,@ModelAnswer varchar(50)=null,@Cid int =null
as
insert into Question(Q_Text,Q_Type,Q_ModelAns,Crs_Id) values(@text,@type,@ModelAnswer,@Cid);
--Update
create proc UpdateQuestion @id int, @text varchar(200)=null,@type varchar(10)=null,@ModelAnswer varchar(50)=null,@Cid int =null
as
update Question
set 
Q_Text =  isnull( @text, Q_Text),
Q_Type =	isnull( @type, Q_Type),
Q_ModelAns   =  isnull( @ModelAnswer, Q_ModelAns ),
Crs_Id= isnull( @Cid, Crs_Id)
where Q_Id=@id
--Delete
create proc DeleteQuestion @id int
as
delete from Question where Q_Id= @id

/*9- Stud-Course Stored Procedure*/
/*select*/
create proc SelectStud_Course
as
select*
from Stud_Course

/*insert*/
create proc InsertIntoStud_Course @stId int ,@crsId int, @grade int=null,@progress varchar(50)=null
as
insert into Stud_Course (St_Id,Crs_Id,FullGrade,Progress) values(@stId,@crsId,@grade,@progress);

/*update*/
create proc UpdateStud_Course @stId int=null, @crsId int=null, @newGrade int=null,@newProgress varchar(50)=null
as
update Stud_Course
set 
FullGrade =  isnull( @newGrade, FullGrade),
Progress =  isnull( @newProgress,Progress )
where St_Id=@stId And Crs_Id= @crsId

/*delete*/
create proc DeleteStud_Course @stId int, @crsId int
as
delete from Stud_Course where St_Id=@stId And Crs_Id= @crsId