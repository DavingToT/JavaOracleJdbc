-- 배점_입출력_Query.sql

select * from user_tables;


--1. 배점 조회

--[과정번호][과정명][과정기간]
select  oc.seq as course_num,
        c.name as course_name, 
        oc.start_date||'~'||oc.end_date as course_period
    
from teacher t, opencourse oc, course c
    where t.seq = oc.teacher_seq
        and c.seq = oc.course_seq
        and t.seq = 1; -- 1번 선생님이 가지고 있는 과정


--[과정명][과정기간][강의실][과목명][과목기간][교재명][출석배점][필기배점][실기배점]       
select c.name as course_name, 
       oc.start_date||'~'||oc.end_date as course_period,  
       cr.name as classroom, s.name as subject_name,
       os.start_date||'~'||os.end_date as subject_period,
       tb.name as textbook_name,
       a.attendance_allot as attendance_allot,
       a.writtentest_allot as writtentest_allot,
       a.performancetest_allot as performancetest_allot
      
       from teacher t, opencourse oc, course c, classroom cr, opensubject os, coursesubject cs, subject s, textbook tb, allot a
       where t.seq = oc.teacher_seq 
       and c.seq = oc.course_seq 
       and cr.seq = oc.classroom_seq 
       and oc.seq = os.opencourse_seq
       and cs.seq = os.coursesubject_seq 
       and s.seq = cs.subject_seq 
       and tb.seq = s.text_seq 
       and os.seq = a.opensubject_seq
       and t.seq = 1
       and oc.seq = 1;
       
       -- 1번 선생님 1번 과정 배점 조회
        

--2. 배점 입력

--[번호][출석배점][필기배점][실기배점][개설과목번호]

-- 1번 개설 과목의 배점 입력
insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(6, 20,35,45, 6);
-- 1번 개설 과목의 배점 입력    
insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(2, 30,30,40, 1);

update allot set attendance_allot = 20, writtentest_allot = 40, performancetest_allot = 40 where seq = 6;
select * from allot;    
    
--3. 배점 수정

--[출석배점][필기배점][실기배점][개설과목번호]

update allot set attendance_allot = 25, writtentest_allot = 35, performancetest_allot = 40 where opensubject_seq = 1;
update allot set attendance_allot = 15, writtentest_allot = 25, performancetest_allot = 60 where opensubject_seq = 2;

select * from allot;


-- 4. 시험 등록(시험 문제, 시험 날짜)
select * from writtentest;
select * from performancetest;


-- 필기시험 입력(등록 날짜는 자바로 처리)
insert into writtentest(seq, question, answer, opensubject_seq)
    values(1,'릴레이션에 포함되어 있는 튜플의 수는?   1.Cardinality,  2. Schema,  3.Type,  4. Degree', 1 , 1);

-- 실기시험 입력(등록 날짜는 자바로 처리)
insert into performancetest(seq, question, answer, opensubject_seq)
    values(1,'It is a software module that encapsulates data and functions for processing data it has status and behavior has a name that can be distinguished from other (   )s and has a certain memory location.', 'object' , 1);

-- 필기시험 수정
update writtentest set question = '릴레이션에 포함되어 있는 튜플의 수는?   1.Cardinality,  2. Schema,  3.Type,  4. Degree' where seq = 1;

-- 실기시험 수정
update performance set answer = 'OBJECT' where seq = 1;

--5. 시험 조회

-- 필기 시험 조회

select rownum as num,
       wt.question as quesion,
       wt.answer as answer
from  writtentest wt, opensubject os, opencourse oc, teacher t
where os.seq = wt.opensubject_seq
    and oc.seq = os.opencourse_seq
    and t.seq = oc.teacher_seq
    and t.seq = 1
    and oc.seq = 1
    and os.seq = 1;
    
    -- 1번 선생님 1번 과정 1번 과목 필기시험문제 조회

-- 실기 시험 조회

select rownum as num,
       pt.question as quesion,
       pt.answer as answer
from  performancetest pt, opensubject os, opencourse oc, teacher t
where os.seq = pt.opensubject_seq
    and oc.seq = os.opencourse_seq
    and t.seq = oc.teacher_seq
    and t.seq = 1
    and oc.seq = 1
    and os.seq = 1;
    
    -- 1번 선생님 1번 과정 1번 과목 실기시험문제 조회
    
    
    

