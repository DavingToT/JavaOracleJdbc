-- 교사평가조회 뷰.sql

-- VIEW

--1. 과정정보조회 뷰

create or replace view vwCourseInformation
as

--[과정번호][과정명][과정기간]
(select  oc.seq as course_num,
        c.name as course_name, 
        oc.start_date||'~'||oc.end_date as course_period
    
from teacher t, opencourse oc, course c
    where t.seq = oc.teacher_seq
        and c.seq = oc.course_seq); 


--2. 평가참여율정보 뷰 


create or replace view vwEvaluationRate
as

--[수강인원][평가인원][평가참여율]
(select (select count(*) as course_people
       
from student s, opencoursestudent ocs, opencourse oc, teacher t
    where s.seq = ocs.student_seq
        and oc.seq = ocs.opencourse_seq
        and t.seq = oc.teacher_seq
       and t.seq = 1 
       and oc.seq = 1) as course_people , 
       
(select count(*) as evaluation_people

from student s, opencoursestudent ocs, opencourse oc, teacher t, teacherevaluation te
    where s.seq = ocs.student_seq
        and ocs.seq = te.opencoursestudent_seq
        and oc.seq = ocs.opencourse_seq
        and t.seq = 1 --1번 선생님
        and oc.seq = 1
        and te.plan_score is not null
        and te.content_score is not null
        and te.communication_score is not null
        and te.benefit_score is not null
        and te.satisfaction_score is not null
        and te.suggestion is not null) as evaluation_people,
            
round(((select count(*) as evaluation_people

from student s, opencoursestudent ocs, opencourse oc, teacher t, teacherevaluation te
    where s.seq = ocs.student_seq
        and ocs.seq = te.opencoursestudent_seq
        and oc.seq = ocs.opencourse_seq
        and t.seq = 1 --1번 선생님
        and oc.seq = 1
        and te.plan_score is not null
        and te.content_score is not null
        and te.communication_score is not null
        and te.benefit_score is not null
        and te.satisfaction_score is not null
        and te.suggestion is not null)  /
            
(select count(*) as course_people
       
from student s, opencoursestudent ocs, opencourse oc, teacher t
    where s.seq = ocs.student_seq
        and oc.seq = ocs.opencourse_seq
        and t.seq = oc.teacher_seq
       and t.seq = 1 
       and oc.seq = 1) * 100))||'%' as evaluation_participation_rate from opencourse where teacher_seq = 1);
  
  
            
--3. 교사평가정보 뷰            


create or replace view vwTeacherEvaluationInformation
as

--[익명1][과정 수료여부][강의계획서 이행 점수][강의내용 전달 및 이해 점수][교사 소통 점수][강의의 유익성 점수][전반적인 만족도][건의사항] 0~10

(select  '익명'||rownum as anonymous, 
        ocs.status as status,
        te.plan_score as plan_score,
        te.content_score as content_score,
        te.communication_score as communication_score,
        te.benefit_score as benefit_score,
        te.satisfaction_score as satisfaction_score,
        te.suggestion as suggestion
        
from student s, opencoursestudent ocs, teacherevaluation te, opencourse oc, course c, teacher t
    where s.seq = ocs.student_seq
        and ocs.seq = te.opencoursestudent_seq(+)
        and oc.seq = ocs.opencourse_seq
        and c.seq = oc.course_seq(+)
        and t.seq(+) = oc.teacher_seq);
        

select * from vwCourseInformation;
select * from vwEvaluationRate;
select * from vwTeacherEvaluationInformation;
        