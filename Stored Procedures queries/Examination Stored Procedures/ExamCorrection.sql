create proc ExamCorrection --exec EXAM_RESULT 1,1
@StID INT,
@ExID INT,
@CrsID INT
AS
BEGIN
-----------------compare MODEL ANS and STUDENT answer--------------------
Declare @correctAns Table (Qid int, ModelAns varchar(100),stu_Ans varchar(100))
Insert @correctAns (Qid, ModelAns, stu_Ans)
Select s.Q_Id,Q_ModelAns,Answer
From Stud_Answers as s
inner join Question as q
ON s.Q_Id = q.Q_Id 
where St_Id=@stID And Ex_Id=@ExID

-----------------------------SET STUDENT DEGREE---------
Update Stud_Answers
set Grade=1
where Q_Id IN
(
SELECT Qid from @correctAns
where ModelAns =stu_Ans
)
Update Stud_Answers
set Grade=0
where Q_Id IN
(
SELECT Qid from @correctAns
where ModelAns !=stu_Ans
)
---------------------CALC DEGREE-----------
Declare @stuDegree Float =(Select sum(GRADE) FROM Stud_Answers
WHERE St_Id=@StID AND Ex_Id=@ExID)
Declare @FinalDegree Float =(Select Count(GRADE) FROM Stud_Answers
WHERE St_Id=@StID AND Ex_Id=@ExID)
Declare @stuPer Float =(@stuDegree/@FinalDegree)*100
IF (@stuPer IS NULL)
Begin
Select 'student did not take the exam'
Return
END
Select @stuPer AS 'student degree'
insert into Stud_Exam(St_Id,Ex_Id,Grade,ExDate,Crs_Id) values (@StID,@ExID,@stuPer,GETDATE(),@CrsID)
END