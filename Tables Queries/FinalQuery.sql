/*Generate Exam*/
exec ExamGeneration @stID=1,@courseID=1,@tfNum=4,@mcqNum=6
select * from Exam
select * from Exam_Ques

/*Answer Exam*/
Exec examAnswer @student_Id=1,@exam_Id=0,@question_ID=17,@Student_Answer='b'
Exec examAnswer @student_Id=1,@exam_Id=0,@question_ID=19,@Student_Answer='d'
Exec examAnswer @student_Id=1,@exam_Id=0,@question_ID=21,@Student_Answer='b'
Exec examAnswer @student_Id=1,@exam_Id=0,@question_ID=22,@Student_Answer='a'
Exec examAnswer @student_Id=1,@exam_Id=0,@question_ID=25,@Student_Answer='c'
Exec examAnswer @student_Id=1,@exam_Id=0,@question_ID=26,@Student_Answer='b'
Exec examAnswer @student_Id=1,@exam_Id=0,@question_ID=30,@Student_Answer='b'
Exec examAnswer @student_Id=1,@exam_Id=0,@question_ID=31,@Student_Answer='c'
Exec examAnswer @student_Id=1,@exam_Id=0,@question_ID=33,@Student_Answer='d'
Exec examAnswer @student_Id=1,@exam_Id=0,@question_ID=34,@Student_Answer='b'
Select * from Stud_Answers
/*Correct Exam*/
exec ExamCorrection @StID=1,@ExID=0, @CrsID=1

Select * from Stud_Exam
