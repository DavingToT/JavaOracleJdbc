-- 교사평가조회_Query.sql

-- 1. 교사 평가 조회 

--[과정번호][과정명][과정기간]
select  oc.seq as course_num,
        c.name as course_name, 
        oc.start_date||'~'||oc.end_date as course_period
    
from teacher t, opencourse oc, course c
    where t.seq = oc.teacher_seq
        and c.seq = oc.course_seq
        and t.seq = 1; -- 1번 선생님이 가지고 있는 과정

-- 이 과정들 중에 번호 선택 ex) 2번

--[수강인원][평가인원][평가참여율]

-- 수강인원
select count(*) as course_people
       
from student s, opencoursestudent ocs, opencourse oc, teacher t
    where s.seq = ocs.student_seq
        and oc.seq = ocs.opencourse_seq
        and t.seq = oc.teacher_seq
       and t.seq = 1 --1번 선생님
       and oc.seq = 1; --1번 과정
    
-- 평가인원
select count(*) as evaluation_people

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
        and te.suggestion is not null; --1번 과정 듣는 교육생들; --1번 과정
        
    


update teacherevaluation set suggestion = '건의사항 테스트10' where seq = 10;
  

-- 평가참여율
select (select count(*) as course_people
       
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
       and oc.seq = 1) * 100))||'%' as evaluation_participation_rate from opencourse where teacher_seq = 1;


select * from opencourse;



    
--[익명1][과정 수료여부][강의계획서 이행 점수][강의내용 전달 및 이해 점수][교사 소통 점수][강의의 유익성 점수][전반적인 만족도][건의사항] 0~10


-- 외부조인 선택한 과정에서 모든 교육생의 평가정보 불러옴 
select  '익명'||rownum as anonymous, 
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
        and t.seq(+) = oc.teacher_seq        
        and t.seq = 1
        and oc.seq = 1;

--내부조인 선택한 과정에서 평가 입력한 교육생의 평가정보 불러옴        
select '익명'||rownum as anonymous, 
        ocs.status as status,
        te.plan_score as plan_score,
        te.content_score as content_score,
        te.communication_score as communication_score,
        te.benefit_score as benefit_score,
        te.satisfaction_score as satisfaction_score,
        te.suggestion as suggestion
        
from student s, opencoursestudent ocs, teacherevaluation te, opencourse oc, course c, teacher t
    where s.seq = ocs.student_seq
        and ocs.seq = te.opencoursestudent_seq
        and oc.seq = ocs.opencourse_seq
        and c.seq = oc.course_seq
        and t.seq = oc.teacher_seq
        and t.seq = 1
        and oc.seq = 2
        order by anonymous;        

insert into teacherevaluation(seq, plan_score, content_score, communication_score, benefit_score, satisfaction_score, suggestion, opencoursestudent_seq)
    values(1, 5,6,7,8,9, '재밌게 가르쳐 주셔서 감사합니다.' ,1);


select * from teacherevaluation;
     

