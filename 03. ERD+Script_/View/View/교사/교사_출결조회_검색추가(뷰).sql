-- 일자별 출결조회    
CREATE OR REPLACE VIEW vwTeacher_4
AS 
SELECT 
    DISTINCT
    e.seq AS "과정번호", 
    h.seq AS "교육생 번호", 
    h.name AS "교육생 이름", 
    k.status AS "상태", 
    i.geuntae_date AS "날짜" 
FROM Teacher A

INNER JOIN          LecturableSubject B       ON A.seq = B.teacher_seq
INNER JOIN          Subject C                 ON B.subject_seq = C.seq
INNER JOIN          CourseSubject D           ON C.seq = D.subject_seq
INNER JOIN          Course E                  ON D.course_seq = E.seq
INNER JOIN          OpenCourse F              ON E.seq = F.course_seq
INNER JOIN          OpenCourseStudent G       ON F.seq = G.opencourse_seq
INNER JOIN          Student H                 ON G.student_seq = H.seq
INNER JOIN          Geuntae I                 ON G.seq = I.opencoursestudent_seq
INNER JOIN          Attendance J              ON I.seq = J.geuntae_seq
LEFT OUTER JOIN     Status K                  ON J.status_seq = K.seq
WHERE i.geuntae_date = '2019-01-03' --날짜 입력
ORDER BY h.seq;



-- 과목별 출결조회    
CREATE OR REPLACE VIEW vwTeacher_5
AS 
SELECT 
    DISTINCT
    e.seq AS "과정번호", 
    h.seq AS "교육생 번호", 
    h.name AS "교육생 이름", 
    k.status AS "상태", 
    i.geuntae_date AS "날짜" 
FROM Teacher A

INNER JOIN          LecturableSubject B       ON A.seq = B.teacher_seq
INNER JOIN          Subject C                 ON B.subject_seq = C.seq
INNER JOIN          CourseSubject D           ON C.seq = D.subject_seq
INNER JOIN          Course E                  ON D.course_seq = E.seq
INNER JOIN          OpenCourse F              ON E.seq = F.course_seq
INNER JOIN          OpenCourseStudent G       ON F.seq = G.opencourse_seq
INNER JOIN          Student H                 ON G.student_seq = H.seq
INNER JOIN          Geuntae I                 ON G.seq = I.opencoursestudent_seq
INNER JOIN          Attendance J              ON I.seq = J.geuntae_seq
LEFT OUTER JOIN     Status K                  ON J.status_seq = K.seq
WHERE c.seq = 1 -- 과목 입력
ORDER BY h.seq;


   
CREATE OR REPLACE VIEW vwTeacher_6
AS 
SELECT 
    DISTINCT
    e.seq AS "과정번호", 
    h.seq AS "교육생 번호", 
    h.name AS "교육생 이름", 
    k.status AS "상태", 
    i.geuntae_date AS "날짜" 
FROM Teacher A

INNER JOIN          LecturableSubject B       ON A.seq = B.teacher_seq
INNER JOIN          Subject C                 ON B.subject_seq = C.seq
INNER JOIN          CourseSubject D           ON C.seq = D.subject_seq
INNER JOIN          Course E                  ON D.course_seq = E.seq
INNER JOIN          OpenCourse F              ON E.seq = F.course_seq
INNER JOIN          OpenCourseStudent G       ON F.seq = G.opencourse_seq
INNER JOIN          Student H                 ON G.student_seq = H.seq
INNER JOIN          Geuntae I                 ON G.seq = I.opencoursestudent_seq
INNER JOIN          Attendance J              ON I.seq = J.geuntae_seq
LEFT OUTER JOIN     Status K                  ON J.status_seq = K.seq
WHERE h.name = '한준희'
ORDER BY h.seq;