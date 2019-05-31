-- 교육생 출결관리 및 출결 조회

CREATE OR REPLACE VIEW vwStudentScheduler
AS
SELECT  
    Student.seq as 학생번호,
    Student.name as 학생명,
    Course.name as 수강한과정명,
    classroom.name as 강의실,
    geuntae.geuntae_date as 날짜,
    status.status as 출결상태
FROM student 
    INNER join OpenCourseStudent    on student.seq = OpenCourseStudent.student_seq
    INNER join OpenCourse           on OpenCourseStudent.opencourse_seq = OpenCourse.seq
    INNER join Geuntae              on OpenCourseStudent.seq = Geuntae.opencoursestudent_seq
    INNER join Attendance           on Geuntae.seq = Attendance.geuntae_seq
    INNER join Status               on Attendance.status_seq = Status.seq
    INNER join classroom            on OpenCourse.classroom_seq = Classroom.seq
    INNER join Course               on OpenCourse.course_seq = Course.seq
order by geuntae.geuntae_date ASC;

select * from classroom;
select * from status;
SELECT * FROM attendance;

CREATE OR REPLACE VIEW vwStudentStartend
AS
select
    seq AS 근태번호,
    opencoursestudent_seq AS 학생번호,
    TO_CHAR(geuntae_date, 'yyyy-mm-dd') AS 날짜,
    TO_CHAR(check_in, 'hh24:mi') AS 입실시간,
    TO_CHAR(check_out, 'hh24:mi') AS 퇴실시간
from geuntae where seq = 1;


-- 교육생 입실 -- 
INSERT INTO Geuntae (seq, opencoursestudent_seq, geuntae_date, check_in) VALUES (1, 1, TO_DATE(SYSDATE, 'yyyy-mm-dd'), TO_DATE(SYSDATE, 'hh24:mi'));

-- 교육생 퇴실 -- 
UPDATE Geuntae SET check_out = TO_DATE(SYSDATE, 'hh24:mi') WHERE geuntae_date = TO_DATE(SYSDATE, 'yyyy-mm-dd') AND opencoursestudent_seq = 로그인한학생번호;





