-- 교사_성적입출력 뷰.sql

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
        

--2. 과목정보조회 뷰

create or replace view vwSubjectInformation
as

--[과목번호][과목명][과목기간][강의실][교재명][출결배점][필기배점][실기배점]
(select os.seq as subject_num,
       s.name as subject_name,
       os.start_date||'~'||os.end_date as subject_period,
       cr.name as classroom,
       tb.name as textbook_name,
       a.attendance_allot as attendance_allot,
       a.writtentest_allot as writtentest_allot,
       a.performancetest_allot as performancetest_allot

from textbook tb, subject s, coursesubject cs, opensubject os, opencourse oc, classroom cr, teacher t, allot a
    where tb.seq = s.text_seq
        and s.seq = cs.subject_seq
        and cs.seq = os.coursesubject_seq
        and oc.seq = os.opencourse_seq
        and cr.seq = oc.classroom_seq
        and t.seq = oc.teacher_seq
        and os.seq = a.opensubject_seq);

-- 3. 성적정보조회 뷰 

create or replace view vwScoreInformation
as
--[번호][과목명][교육생명][중퇴여부][출결][필기][실기][합계]
(select rownum as num, 
       sd.name as name,
       sb.name as subject_name,
       ocs.status as quit_school,
       round(sc.attendance / 5) as attendance,
       round(sc.written_test /2.5) as writtentest_score,
       round(sc.performance_test /2.5) as performancetest_score,
       (round(sc.attendance / 5) + round(sc.written_test / 2.5) + round(sc.performance_test / 2.5)) as total

from student sd , opencoursestudent ocs, opencourse oc, opensubject os, coursesubject cs , subject sb, teacher t, score sc
    where sd.seq = ocs.student_seq
        and oc.seq = ocs.opencourse_seq
        and oc.seq = os.opencourse_seq
        and cs.seq = os.coursesubject_seq
        and sb.seq = cs.subject_seq
        and t.seq = oc.teacher_seq
        and os.seq = sc.opensubject_seq
        and ocs.seq = opencoursestudent_seq);
        
select * from vwCourseInformation;
select * from vwSubjectInformation;
select * from vwScoreInformation;
