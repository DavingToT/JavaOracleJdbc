-------------------�����û�����ȸ
commit;

select * from vwCheckStudentManager;
CREATE OR REPLACE VIEW vwCheckStudentmanager
AS
SELECT 
e.seq AS "�����ȣ",
rpad(e.name, 50, ' ') AS "�����",
d.salary AS "����",
to_char(d.deadline, 'yyyy-mm-dd') AS "������",
rpad(d.course, 66, ' ') AS "�䱸����",
d.major AS "��������",
a.name AS "�л���",
rpad(g.name, 66, ' ') AS "������",
to_char(c.application_date, 'yyyy-mm-dd') AS "��û��"
FROM Student A

INNER JOIN  OpenCourseStudent B     ON A.seq = B.student_seq
INNER JOIN  NoticeApplication C     ON B.seq =  c.opencoursestudent_seq
INNER JOIN  Notice D                ON D.seq = c.notice_seq
INNER JOIN  Company E               ON e.seq = d.company_seq
INNER JOIN  OpenCourse F            ON B.opencourse_seq = f.seq
INNER JOIN  Course G                ON g.seq = f.course_seq;