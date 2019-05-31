-- 교사_배점입출력 뷰.sql

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
        

--2. 배점정보조회 뷰

create or replace view vwAllotInformation
as
--[과정명][과정기간][강의실][과목명][과목기간][교재명][출석배점][필기배점][실기배점]       
(select c.name as course_name, 
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
       and os.seq = a.opensubject_seq);

   
--3. 필기시험정보 뷰
create or replace view vwWrittenTestInformation
as
(select rownum as num,
       wt.question as quesion,
       wt.answer as answer
from  writtentest wt, opensubject os, opencourse oc, teacher t
where os.seq = wt.opensubject_seq
    and oc.seq = os.opencourse_seq
    and t.seq = oc.teacher_seq
    and t.seq = 1
    and oc.seq = 1
    and os.seq = 1);


--4. 실기시험정보 뷰
create or replace view vwPerformanceTestInformation
as
(select rownum as num,
       pt.question as quesion,
       pt.answer as answer
from  performancetest pt, opensubject os, opencourse oc, teacher t
where os.seq = pt.opensubject_seq
    and oc.seq = os.opencourse_seq
    and t.seq = oc.teacher_seq
    and t.seq = 1
    and oc.seq = 1
    and os.seq = 1);
    

select * from vwCourseinformation;
select * from vwAllotInformation;
select * from vwWrittenTestInformation;
select * from vwPerformanceTestInformation;