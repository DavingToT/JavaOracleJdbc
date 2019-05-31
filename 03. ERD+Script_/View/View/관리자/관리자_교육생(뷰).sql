
-- 전체 교육생 목록 출력 뷰
CREATE OR REPLACE VIEW vwAllStudent
AS
SELECT
    seq AS "교육생번호",
    name AS "이름", 
    ssn AS "주민번호뒷자리",
    tel AS "전화번호",
    major AS "전공여부"
FROM Student
    WHERE status = 1;

SELECT * FROM vwAllStudent;


-- 특정 교육생 선택 시 출력 뷰
CREATE OR REPLACE VIEW vwSelectedStudent
AS
SELECT
    DISTINCT
    Student.seq AS 교육생번호,
    Student.name AS 이름, 
    Student.ssn AS 주민번호뒷자리,
    Student.tel AS 전화번호,
    Student.regdate AS 등록일,
    Student.major AS 전공여부,
    OpenCourseStudent.status AS 수강상태,
    Course.name AS 과정명,
    TO_CHAR(OpenCourse.start_date, 'yyyy-mm-dd') AS 과정시작일,
    TO_CHAR(OpenCourse.end_date, 'yyyy-mm-dd') AS 과정종료일,
    Classroom.name AS 강의실
FROM Student
    LEFT OUTER JOIN OpenCourseStudent    ON Student.seq = OpenCoursestudent.student_seq
    LEFT OUTER JOIN OpenCourse           ON OpenCoursestudent.opencourse_seq = OpenCourse.seq
    LEFT OUTER JOIN Classroom            ON OpenCourse.classroom_seq = Classroom.seq
    LEFT OUTER JOIN Course               ON OpenCourse.course_seq = Course.seq
ORDER BY Student.seq;

-- 교육생 선택   
SELECT * FROM vwSelectedStudent
    WHERE 교육생번호 = ;


-- 교육생 검색





