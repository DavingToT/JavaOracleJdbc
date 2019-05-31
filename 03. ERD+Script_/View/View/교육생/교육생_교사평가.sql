--6. 교사평가
/*
[메인] > [로그인] > [교육생] > [교사평가]]
*/
-- 교육생 -> 교사평가하기 (조회) 
CREATE OR REPLACE VIEW vwStudentTeacherTest
AS
SELECT
    F.seq AS 번호,
    b.status AS 과정수료여부,
    F.plan_score AS 강의계획서이행점수,
    F.content_score AS 강의이해점수,
    F.communication_score AS 교사의소통점수,
    F.benefit_score AS 강의유익성점수,
    F.satisfaction_score AS 통합만족도점수,
    F.suggestion AS 건의사항
    
FROM Student A

    INNER JOIN OpenCourseStudent B   ON A.seq = B.student_seq
    INNER JOIN OpenCourse C         ON C.seq = B.opencourse_seq
    INNER JOIN Course D             ON D.seq = C.course_seq
    INNER JOIN Teacher E            ON E.seq = C.teacher_seq
    INNER JOIN TeacherEvaluation F  ON B.seq = F.opencoursestudent_seq
    
WHERE a.seq = 본인번호;
   
   
CREATE TABLE TeacherEvaluation
(
    seq number primary key,
    complete varchar2(30),
    plan_score number,
    content_score number,
    communication_score number,
    benefit_score number,
    satisfaction_score number,
    suggestion varchar2(1000),
    opencoursestudent_seq number
        references OpenCourseStudent(seq) not null
);   
   
-- 교육생 -> 교사평가하기 (작성)     
INSERT INTO TeacherEvaluation (seq, complete, plan_score, content_score, communication_score, benefit_score ,satisfaction_score , suggestion, opencoursestudent_seq)
        VALUES (번호, NULL, 계획서이행점수, 이해및전달점수, 소통점수, 유익성점수, 통합만족도점수, '건의사항', 개설과정별교육생번호);
    
    
    
select * from TeacherEvaluation;    

delete from TeacherEvaluation where seq = 1000;


    