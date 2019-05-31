--강의 조회 

--선생님 이름 / 날짜 / 과목

CREATE OR REPLACE VIEW vwTeacher_1
AS 
SELECT 
    DISTINCT 
    a.seq AS "교사번호",
    a.name AS "교사" ,
    SYSDATE AS "날짜",
    c.name AS "과목명" 
FROM Teacher A

INNER JOIN          LecturableSubject B       ON A.seq = B.teacher_seq
INNER JOIN          Subject C                 ON B.subject_seq = C.seq
INNER JOIN          Textbook Z                ON Z.seq = C.text_seq
INNER JOIN          CourseSubject D           ON C.seq = D.subject_seq
INNER JOIN          OpenSubject E             ON D.seq = E.coursesubject_seq
INNER JOIN          OpenCourse F              ON F.seq = E.opencourse_seq
INNER JOIN          Course G                  ON F.course_seq = G.seq
INNER JOIN          OpenCourseStudent H       On F.seq = H.opencourse_seq
INNER JOIN          Student I                 ON I.seq = H.student_seq
WHERE SYSDATE BETWEEN e.start_date AND e.end_date
ORDER BY a.seq; 


CREATE OR REPLACE VIEW vwTeacher_2
AS
SELECT
    DISTINCT
    Teacher.seq AS "교사 번호",
    Teacher.name AS "교사 이름",
    Course.name AS "배정된 과정명",
    TO_CHAR(OpenCourse.start_date, 'yy/mm/dd') AS "과정 시작일",
    TO_CHAR(OpenCourse.end_date, 'yy/mm/dd') AS "과정 종료일",
    subject.name AS "배정 개설과목명",
    TO_CHAR(OpenSubject.start_date, 'yy/mm/dd') AS "과목 시작일",
    TO_CHAR(OpenSubject.end_date,'yy/mm/dd') AS "과목 종료일",
    Classroom.name AS "강의실명",
    Textbook.name AS "교재명",
    (SELECT 
        COUNT(*)    
    FROM OpenCourseStudent
    GROUP BY OpenCourseStudent.opencourse_seq
        HAVING OpenCourseStudent.opencourse_seq = OpenCourse.seq) AS "인원수"
FROM Teacher
    INNER JOIN OpenCourse           ON Teacher.seq = OpenCourse.teacher_seq
    INNER JOIN OpenSubject          ON OpenCourse.seq = OpenSubject.opencourse_seq
    INNER JOIN CourseSubject        ON OpenSubject.coursesubject_seq = CourseSubject.seq
    INNER JOIN Subject              ON CourseSubject.subject_seq = Subject.seq
    INNER JOIN Textbook             ON Subject.text_seq = Textbook.seq
    INNER JOIN Classroom            ON Classroom.seq = OpenCourse.classroom_seq
    INNER JOIN Course               ON OpenCourse.course_seq = Course.seq
    ORDER BY Teacher.seq;