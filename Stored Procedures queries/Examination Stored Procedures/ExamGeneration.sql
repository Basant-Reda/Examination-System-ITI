create proc ExamGeneration @stID int, @courseID int=1, @tfNum int=5, @mcqNum int=5
as 
exec InsertIntoExam @sid=@stID,@cid=@courseID
declare @ExID int = (SELECT TOP 1 Ex_Id FROM Exam ORDER BY Ex_Id DESC)
-- check mcq questions
declare @Nmcq int = (select count(*) from Question where Crs_Id = @courseID and Q_Type='MCQ')
		if(@Nmcq < @mcqNum)
			begin 
				select 'MCQ questions are not enough'
				return
			end
-- check true false questions
declare @Ntf int = (select count(*) from Question where Crs_Id = @courseID and Q_Type='tf')
		if(@Ntf < @tfNum)
			begin 
				select 'True&False questions are not enough'
				return
			end
-- insert into table
insert into Exam_Ques (Q_Id,Ex_Id) select TOP(@mcqNum) Q_Id,@ExID from Question 
where Crs_Id=@courseID  and Q_Type='mcq'
ORDER BY NEWID() 
insert into Exam_Ques (Q_Id,Ex_Id) select TOP(@tfNum) Q_Id,@ExID from Question 
where Crs_Id=@courseID  and Q_Type='tf'
ORDER BY NEWID() 
--output questions randomly
select Q_text , Q_Type from Question q 
inner join Exam_Ques eq on q.Q_Id=eq.Q_Id
where Ex_Id=@ExID