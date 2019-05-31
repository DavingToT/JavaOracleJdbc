-- Project_Query_HJ



/*

[ 교사 계정 관리 ]

- 테이블 목록
 1. 교사, Teacher
 2. 강의가능과목, LecturableSubject
 3. 과목, Subject
 4. 교재, Textbook
 5. 개설과정, OpenCourse
 6. 개설과목, OpenSubject
 7. 강의실, Classroom

*/

-- { 교사 테이블 생성 }
CREATE TABLE Teacher
(
    seq number primary key,
    name varchar2(30) not null,
    ssn varchar2(30) not null,
    tel varchar2(30)
);
-- 교사 번호 생성
CREATE SEQUENCE teacher_seq;
DROP SEQUENCE teacher_seq;

-- 교사 테이블 조회
SELECT * FROM Teacher;


-- { 신규 교사 등록 }
INSERT INTO Teacher (seq, name, ssn, tel) VALUES (교사번호, '김동성', '1212121','010-1212-3262');


-- { 교사 정보 조회 }

-- 교사 전체 목록에 출력
SELECT
    DISTINCT
    Teacher.seq AS "교사번호",
    teacher.name AS "교사명",
    teacher.ssn AS "주민번호뒷자리",
    teacher.tel AS "전화번호"
FROM Teacher
    LEFT OUTER JOIN LecturableSubject    ON Teacher.seq = LecturableSubject.teacher_seq
    LEFT OUTER JOIN Subject              ON LecturableSubject.subject_seq = Subject.seq
ORDER BY Teacher.seq;


-- 특정 교사 선택시
SELECT
    DISTINCT Teacher.name AS "교사 이름",
    Course.name AS "배정된 과정명",
    OpenCourse.start_date AS "과정 시작일",
    OpenCourse.end_date AS "과정 종료일",
    subject.name AS "배정 개설과목명",
    OpenSubject.start_date AS "과목 시작일",
    OpenSubject.end_date AS "과목 종료일",
    Classroom.name AS "강의실명",
    Textbook.name AS "교재명"
FROM Teacher
    INNER JOIN OpenCourse           ON Teacher.seq = OpenCourse.teacher_seq
    INNER JOIN OpenSubject          ON OpenCourse.seq = OpenSubject.opencourse_seq
    INNER JOIN CourseSubject        ON OpenSubject.coursesubject_seq = CourseSubject.seq
    INNER JOIN Subject              ON CourseSubject.subject_seq = Subject.seq
    INNER JOIN Textbook             ON Subject.text_seq = Textbook.seq
    INNER JOIN Classroom            ON Classroom.seq = OpenCourse.classroom_seq
    INNER JOIN Course               ON OpenCourse.course_seq = Course.seq
WHERE Teacher.name LIKE '%김동%'
ORDER BY OpenSubject.start_date;


-- 강의 가능 과목
SELECT 
    Teacher.seq AS "교사번호",
    Teacher.name AS "교사명",
    Subject.name AS "과목명"
FROM lecturablesubject
    INNER JOIN Subject              ON lecturablesubject.subject_seq = Subject.seq
    INNER JOIN Teacher              ON lecturablesubject.teacher_seq = Teacher.seq;



-- { 교사 정보 수정 }
UPDATE Teacher SET name = '수정할값' WHERE seq = 교사 번호;
UPDATE Teacher SET ssn = '수정할값' WHERE seq = 교사 번호;
UPDATE Teacher SET tel = '수정할값' WHERE seq = 교사 번호;

    
-- 교사 검색
SELECT * FROM Teacher
    INNER JOIN LecturableSubject    ON Teacher.seq = LecturableSubject.teacher_seq
    INNER JOIN Subject              ON LecturableSubject.subject_seq = Subject.seq
    INNER JOIN Textbook             ON Subject.text_seq = Textbook.seq
    INNER JOIN OpenCourse           ON Teacher.seq = OpenCourse.teacher_seq
    INNER JOIN OpenSubject          ON OpenCourse.seq = OpenSubject.opencourse_seq
    INNER JOIN Classroom            ON Classroom.seq = OpenCourse.classroom_seq)
-- 이름/번호로 검색
WHERE Teacher.name = '입력 받은 이름' OR Teacher.seq = 입력 받은 숫자;



-- { 교사 삭제 }
DELETE FROM Teacher WHERE seq = 입력 받은 교사 번호;
    


