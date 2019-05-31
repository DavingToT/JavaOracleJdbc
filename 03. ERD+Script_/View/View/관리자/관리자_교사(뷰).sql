
-- 교사 전체 목록 출력 뷰 
CREATE OR REPLACE VIEW vwAllTeacher
AS
SELECT
    DISTINCT
    Teacher.seq AS "교사번호",
    teacher.name AS "교사명",
    teacher.ssn AS "주민번호뒷자리",
    teacher.tel AS "전화번호",
    teacher.status AS "상태"
FROM Teacher
    LEFT OUTER JOIN LecturableSubject    ON Teacher.seq = LecturableSubject.teacher_seq
    LEFT OUTER JOIN Subject              ON LecturableSubject.subject_seq = Subject.seq
ORDER BY Teacher.seq;

SELECT * FROM vwAllTeacher;

commit;

-- 특정 교사 선택시
CREATE OR REPLACE VIEW vwSelectedTeacher
AS
SELECT
    DISTINCT
    Teacher.seq AS "교사번호",
    Teacher.name AS "교사이름",
    Course.name AS "배정된과정명",
    TO_CHAR(OpenCourse.start_date, 'yyyy-mm-dd') AS "과정시작일",
    TO_CHAR(OpenCourse.end_date, 'yyyy-mm-dd') AS "과정종료일",
--    RPAD(subject.name,20,' ') AS "배정개설과목명",
    subject.name AS "배정개설과목명",
    TO_CHAR(OpenSubject.start_date, 'yyyy-mm-dd') AS "과목시작일",
    TO_CHAR(OpenSubject.end_date, 'yyyy-mm-dd') AS "과목종료일",
    Classroom.name AS "강의실명",
    Textbook.name AS "교재명"
FROM Teacher
    INNER JOIN OpenCourse           ON Teacher.seq = OpenCourse.teacher_seq
    INNER JOIN OpenSubject          ON OpenCourse.seq = OpenSubject.opencourse_seq
    INNER JOIN CourseSubject        ON OpenSubject.coursesubject_seq = CourseSubject.seq
    INNER JOIN Subject              ON CourseSubject.subject_seq = Subject.seq
    INNER JOIN Textbook             ON Subject.text_seq = Textbook.seq
    INNER JOIN Classroom            ON Classroom.seq = OpenCourse.classroom_seq
    INNER JOIN Course               ON OpenCourse.course_seq = Course.seq;
    
    
SELECT * FROM vwSelectedTeacher;    
    
-- 특정 교사 선택    
SELECT * FROM vwSelectedTeacher
    WHERE 교사번호 = 입력받은숫자;


-- 교사 검색



commit;


