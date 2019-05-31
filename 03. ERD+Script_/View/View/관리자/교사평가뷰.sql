select * from vwEvaluationTeacher;
CREATE OR REPLACE VIEW vwEvaluationTeacher
AS
 SELECT  
 f.name AS "�л���",
 e.name AS "�����Ը�",
 rpad(d.name, 66, ' ') AS "������", 
 c.end_date - c.start_date AS "�����Ⱓ",
 a.seq AS "��ȣ",
 a.plan_score AS "���ǰ�ȹ�� ���� ����",
 a.content_score AS "���ǳ��� ���� ����",
 a.communication_score AS "���� ��������",
 a.benefit_score AS "���� ���ͼ� ����",
 a.satisfaction_score AS "������ ������",
 a.suggestion AS "���ǻ���"
 
 FROM TeacherEvaluation A
 
 INNER JOIN OpenCourseStudent B         ON B.seq = A.opencoursestudent_seq
 INNER JOIN OpenCourse C                ON C.seq = B.opencourse_seq
 INNER JOIN Teacher E                   ON E.seq = c.teacher_seq
 INNER JOIN Course D                    ON D.seq = C.course_seq
 INNER JOIN student F                   ON b.student_seq = f.seq;

 commit;
select * from notice;
