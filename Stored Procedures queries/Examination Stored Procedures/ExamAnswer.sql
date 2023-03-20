/*Exam-Answers procedure*/

USE [ExaminationSystem]
GO 

CREATE PROC ExamAnswer
			@student_Id INT,
			@exam_Id INT,
			@question_ID INT,
			@Student_Answer VARCHAR(50)=null
WITH ENCRYPTION
AS 
	INSERT INTO Stud_Answers (St_Id,Ex_Id,Q_Id,Answer)
	VALUES(@student_Id,@exam_Id,@question_ID,@Student_Answer)
	
GO

/*Exec examAnswer @student_Id=2,@exam_Id=1,@question_ID=6,@Student_Answer="true";*/