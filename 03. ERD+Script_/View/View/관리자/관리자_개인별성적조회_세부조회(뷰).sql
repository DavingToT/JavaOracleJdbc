---------------------------------
-- A-007-3-2
-- 개인별 성적 출력
-- 개인별 성적 세부조회 - ㅇ 
-- [개설과목명] [개설과목기간] [교사명] [출결] [필기] [실기]
drop view vwPersonalScoreDetail;

commit;
select * from vwpersonalscoredetail;

create or replace view vwPersonalScoreDetail
as
select 

distinct

stu.name as 학생명,
rpad(s.name, 66, ' ') as 개설과목명,
os.start_date ||'~'|| os.end_date as 개설과목기간,
t.name as 교사명,
sr.attendance as 출결,
sr.written_test as 필기,
sr.performance_test as 실기

from Student stu
inner join OpenCourseStudent ocs    on stu.seq = ocs.student_seq
inner join Score sr                 on ocs.seq = sr.opencoursestudent_seq
inner join OpenCourse oc            on ocs.opencourse_seq = oc.seq
inner join Teacher t                on oc.teacher_seq = t.seq
inner join Classroom cr             on oc.classroom_seq = cr.seq
inner join Course c                 on oc.course_seq = c.seq
inner join LecturableSubject ls     on t.seq = ls.teacher_seq
inner join Subject s                on ls.subject_seq = s.seq
inner join Textbook tx              on s.text_seq = tx.seq
inner join CourseSubject cs         on c.seq = cs.course_seq
inner join OpenSubject os           on cs.seq = os.coursesubject_seq;
