CREATE TABLE Notice
(
    seq number primary key,
    company_seq number
        references Company(seq),
    salary number,
    deadline varchar2(30),
    course varchar2(200),
    major varchar2(30),
    opencoursestudent_seq number 
        references OpenCourseStudent(seq)
);

-- 관리자 기업 공고 작성 -- 
INSERT INTO Notice (salary,deadline,course) VALUES (/*급여*/20000000 , '마감일', '요구과정', '요구 전공여부');

-- 관리자 기업 공고 삭제 -- 
DELETE FROM Notice WHERE seq = 입력 받은 교사 번호;




-- 관리자 학생 신청 명단 조회 -- 
-- [기업번호][기업명][연봉][마감일][요구과정][전공여부][학생명][과정]

SELECT 
e.seq AS "기업번호",
e.name AS "기업명",
d.salary AS "연봉",
d.deadline AS "마감일",
d.course AS "요구과정",
d.major AS "전공여부",
a.name AS "학생명",
g.name AS "과정명",
c.application_date AS "신청일"
FROM Student A

INNER JOIN  OpenCourseStudent B     ON A.seq = B.student_seq
INNER JOIN  NoticeApplication C     ON B.seq =  c.opencoursestudent_seq
INNER JOIN  Notice D                ON D.seq = c.notice_seq
INNER JOIN  Company E               ON e.seq = d.company_seq
INNER JOIN  OpenCourse F            ON B.opencourse_seq = f.seq
INNER JOIN  Course G                ON g.seq = f.course_seq;




