
/*

[ 교육생 계정 관리 ]

- 테이블 목록
 1. 교육생, Student
 2. 개설과정별교육생, OpenCourseStudent
 3. 개설과정, OpenCourse
 4. 강의실, Classroom

*/

-- 교육생 테이블 생성
CREATE TABLE Student
(
    seq number primary key,
    name varchar2(30) not null,
    ssn varchar2(30) not null,
    tel varchar2(13),
    regdate varchar2(30) not null,
    major varchar2(30)
);

-- 교육생 번호 생성
CREATE SEQUENCE student_seq;

-- { 신규 교육생 등록 }
INSERT INTO (seq, name, ssn, tel, regdate, major) VALUES (교육생번호, '이름', '주민등록뒷자리', '전화번호', SYSDATE, '전공/비전공/고졸');


-- { 교육생 정보 조회 }

-- 전체 교육생
SELECT
    DISTINCT 
    Student.seq AS "교육생번호",
    Student.name AS "이름", 
    Student.ssn AS "주민번호뒷자리",
    Student.tel AS "전화번호",
    Student.major AS "전공여부"
FROM Student
    INNER JOIN OpenCourseStudent    ON Student.seq = OpenCoursestudent.student_seq
    INNER JOIN OpenCourse           ON OpenCoursestudent.opencourse_seq = OpenCourse.seq
    INNER JOIN Classroom            ON OpenCourse.classroom_seq = Classroom.seq
    INNER JOIN Course               ON OpenCourse.course_seq = Course.seq
ORDER BY Student.seq;


-- 교육생 검색
SELECT
    DISTINCT
    Student.seq AS 교육생번호,
    Student.name AS 이름, 
    Student.ssn AS 주민번호뒷자리,
    Student.tel AS 전화번호,
    Student.regdate AS 등록일,
    Student.major AS 전공여부,
    OpenCourseStudent.status AS 수강상태,
    Course.name AS 강의명,
    OpenCourse.start_date AS 강의시작일,
    OpenCourse.end_date AS 강의종료일,
    Classroom.name AS 강의실
FROM Student
    INNER JOIN OpenCourseStudent    ON Student.seq = OpenCoursestudent.student_seq
    INNER JOIN OpenCourse           ON OpenCoursestudent.opencourse_seq = OpenCourse.seq
    INNER JOIN Classroom            ON OpenCourse.classroom_seq = Classroom.seq
    INNER JOIN Course               ON OpenCourse.course_seq = Course.seq
-- 이름/번호으로 검색
WHERE Student.name LIKE '%김%'
ORDER BY Student.seq;


-- { 교육생 정보 수정 }
UPDATE Student SET name = '수정할값' WHERE seq = 교육생번호;
UPDATE Student SET ssn = '수정할값' WHERE seq = 교육생번호;
UPDATE Student SET tel = '수정할값' WHERE seq = 교육생번호;
UPDATE Student SET major = '수정할값' WHERE seq = 교육생번호;

-- { 교육생 삭제 }
DELETE FROM Student WHERE seq = 입력받은 교육생 번호; 
 


