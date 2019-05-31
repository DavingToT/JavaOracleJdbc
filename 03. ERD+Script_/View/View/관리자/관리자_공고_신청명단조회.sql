-------------------공고신청명단조회
commit;

select * from vwCheckStudentManager;
CREATE OR REPLACE VIEW vwCheckStudentmanager
AS
SELECT 
e.seq AS "기업번호",
rpad(e.name, 50, ' ') AS "기업명",
d.salary AS "연봉",
to_char(d.deadline, 'yyyy-mm-dd') AS "마감일",
rpad(d.course, 66, ' ') AS "요구과정",
d.major AS "전공여부",
a.name AS "학생명",
rpad(g.name, 66, ' ') AS "과정명",
to_char(c.application_date, 'yyyy-mm-dd') AS "신청일"
FROM Student A

INNER JOIN  OpenCourseStudent B     ON A.seq = B.student_seq
INNER JOIN  NoticeApplication C     ON B.seq =  c.opencoursestudent_seq
INNER JOIN  Notice D                ON D.seq = c.notice_seq
INNER JOIN  Company E               ON e.seq = d.company_seq
INNER JOIN  OpenCourse F            ON B.opencourse_seq = f.seq
INNER JOIN  Course G                ON g.seq = f.course_seq;