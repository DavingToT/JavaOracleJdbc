-- 성적_입출력_Query.sql


SELECT table_name FROM USER_TABLES;

--[과정번호][과정명][과정기간]
select  oc.seq as course_num,
        c.name as course_name, 
        oc.start_date||'~'||oc.end_date as course_period
    
from teacher t, opencourse oc, course c
    where t.seq = oc.teacher_seq
        and c.seq = oc.course_seq
        and t.seq = 1; -- 1번 선생님이 가지고 있는 과정

select * from course;
-- 여기서 과정들 중에 과정 선택: ex) 1번

--[과목번호][과목명][과목기간][강의실][교재명][출결배점][필기배점][실기배점]

select os.seq as subject_num,
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
        and os.seq = a.opensubject_seq
        and t.seq = 1;


-- 1. 성적 조회

--[번호][과목명][교육생명][중퇴여부][출결][필기][실기][합계]


select rownum as num, 
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
        and ocs.seq = opencoursestudent_seq
        and t.seq = 1
        and oc.seq = 1
        and os.seq = 1;
    

-- 2. 성적 입력
insert into score(seq, opensubject_seq, attendance, written_test, performance_test, opencoursestudent_seq)
    values (1,1,25,35,40,1);
insert into score(seq, opensubject_seq, attendance, written_test, performance_test, opencoursestudent_seq)
    values (2,2,15,20,37,2);
insert into score(seq, opensubject_seq, attendance, written_test, performance_test, opencoursestudent_seq)
    values (3,2,11,23,25,3);


-- 3. 성적 수정

-- 출결, 필기, 실기
update score set attendance = 20, written_test = 30, performance_test = 40 where opencoursestudent_seq = 3;

commit;


