-- 교사_QnA관리 뷰.sql

-- VIEW

-- 1. 교육생 질문정보 뷰

-- [번호][교육생명][질문날짜][질문제목][질문내용]
create or replace view vwStudentQuestionInformation
as
(select rownum as num,
       s.name as student_name,
       qa.question_date as question_date,
       qa.question_title as question_title,
       qa.question_content as question_content
 
from QnA qa, opencoursestudent ocs, opencourse oc, student s, teacher t
    where ocs.seq = qa.opencoursestudent_seq
        and s.seq = ocs.student_seq
        and oc.seq = ocs.opencourse_seq
        and t.seq = oc.teacher_seq
        and oc.seq =1
        and qa.question_title is not null);
    
-- 2. 교사 답변정보 뷰
create or replace view vwTeacherAnswerInformation
as

-- [번호][교육생명][교사명][[질문날짜][질문제목][질문내용]
(select rownum as num,
       s.name as student_name,
       t.name as teacher_name,
       qa.answer_date as answer_date,
       qa.answer_title as answer_title,
       qa.answer_content as answer_content
 
from QnA qa, opencoursestudent ocs, opencourse oc, student s, teacher t
    where ocs.seq = qa.opencoursestudent_seq
        and s.seq = ocs.student_seq
        and oc.seq = ocs.opencourse_seq
        and t.seq = oc.teacher_seq
        and oc.seq =1
        and qa.answer_title is not null);
        

select * from vwstudentquestioninformation;
select * from vwteacheranswerinformation;
