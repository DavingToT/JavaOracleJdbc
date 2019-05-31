select * from vwEvaluationTeacher;
CREATE OR REPLACE VIEW vwEvaluationTeacher
AS
 SELECT  
 f.name AS "학생명",
 e.name AS "선생님명",
 rpad(d.name, 66, ' ') AS "과정명", 
 c.end_date - c.start_date AS "과정기간",
 a.seq AS "번호",
 a.plan_score AS "강의계획서 이행 점수",
 a.content_score AS "강의내용 이해 점수",
 a.communication_score AS "교사 소통점수",
 a.benefit_score AS "강의 유익성 점수",
 a.satisfaction_score AS "전반적 만족도",
 a.suggestion AS "건의사항"
 
 FROM TeacherEvaluation A
 
 INNER JOIN OpenCourseStudent B         ON B.seq = A.opencoursestudent_seq
 INNER JOIN OpenCourse C                ON C.seq = B.opencourse_seq
 INNER JOIN Teacher E                   ON E.seq = c.teacher_seq
 INNER JOIN Course D                    ON D.seq = C.course_seq
 INNER JOIN student F                   ON b.student_seq = f.seq;

 commit;
select * from notice;
