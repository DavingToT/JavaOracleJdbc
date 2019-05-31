-- QnA_관리Query.sql

-- 질문 및 답변 시간 자바로 sysdate로 처리

insert into qna(seq, opencoursestudent_seq, teacher, question_title, question_content, question_date)
    values(1,1,'박세인', 'JDBC Conn 클래스','conn 클래스가 무엇인가요?','19/04/08');

select * from qna;
select * from opencoursestudent;

-- 교사의 해당 과정 학생들의 질문 목록을 보여준다.

-- [번호][교육생명][질문날짜][질문제목][질문내용]
select rownum as num,
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
        and qa.question_title is not null;

    -- 1번 과정 교육생들의 질문

-- 교사의 해당 과정 학생들의 대한 답변 목록을 보여준다.
-- [번호][교육생명][교사명][[질문날짜][질문제목][질문내용]
select rownum as num,
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
        and qa.answer_title is not null;

        
--1. 질문 답변 입력

--1번 질문 답변
insert into qna(seq, opencoursestudent_seq, teacher, answer_title, answer_content, answer_date)
    values(2,1, '박세인', 'JDBC Conn 클래스 질문 답변입니다.','conn 클래스란 자바에서 DB와 연동하기 위한 요소들을 모아놓은 클래스 입니다.','19/04/09');


--2. 답변 수정
update qna set answer_title = 'conn 클래스 질문 답변 제목 수정입니다.', answer_content = 'conn 클래스 질문 답변 내용 수정입니다.', answer_date = '19/04/11' where seq = 2;


--3. 답변 삭제
delete qna where seq = 2;


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
