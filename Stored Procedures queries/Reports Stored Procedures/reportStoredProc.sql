--------------------------------------------------------1--------------------------------------------
create Proc stud_info @DeptID int
with encryption
as
	Select s.St_Id as[student id] ,s.St_Fname+' '+s.St_Lname as [student name] ,s.St_Age as[student age] ,s.St_Address as[student address]
	from Student s ,Department d
	where  d.Dept_Id=s.Dept_Id and s.Dept_Id=@DeptID
	order by d.Dept_Id
GO
exec stud_info 1;
-----------------------------------------------------------2------------------------------------------
create Proc stud_grade @StudID int
with encryption
as
	Select sc.FullGrade as [full grade],c.Crs_Name as [course name] ,c.Crs_Id as [course id]
	from Stud_Course  sc,Course c
	where sc.St_Id=@StudID and  c.Crs_Id=sc.Crs_Id

GO
exec stud_grade 1;
----------------------------------------------------------3--------------------------------------------
create Proc NCourse_NumStud @InstID int
with encryption
as
	Select  c.Crs_Name as[course name] ,count(s.St_Id) as[number of students]
	from Course c ,Stud_Course s
	where  c.Inst_Id=@InstID and c.Crs_Id=s.Crs_Id
	group by c.Crs_Name

GO
exec NCourse_NumStud 1;
-------------------------------------------------------------4-------------------------------------------
create Proc topicName @CoureID int
with encryption
as
	Select t.T_Name as[course's topics]
	from Course c ,Topic t
	where  c.Crs_Id=@CoureID and c.Crs_Id=t.Crs_Id

GO

--------------------------------------------------------------5--------------------------------------
CREATE Proc questions @ExamID int
with encryption

as
	Select q.Q_Id as [questions id],q.Q_Text as[questions],q.Q_Type as[question type] 
	from Exam_Ques eq ,Question q
	where  eq.Ex_Id=@ExamID and eq.Q_Id=q.Q_Id

GO

--------------------------------------------------------------6--------------------------------------
CREATE Proc questions_studAnswer @ExamID int , @StudID int
with encryption
as
	Select q.Q_Text as[questions],sa.Answer as[student answer]
	from Question q , Stud_Answers sa
	where  sa.Ex_Id=@ExamID and sa.St_Id=@StudID and q.Q_Id=sa.Q_Id

GO
