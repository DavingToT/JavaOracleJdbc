--------------------------------------
-- A-007-2 
-- 과목별 성적 조회
-- 과목 선택 부분 --ㅇ (추가부분)
commit;

select * from vwSubjectSelect;

Create or replace view vwSubjectSelect 
as

select 
distinct
s.seq as 과목번호,
s.name as 과목명
from subject s
inner join CourseSubject cs on s.seq = cs.subject_seq
inner join Course c on c.seq = cs.course_seq
inner join Opensubject os on cs.seq = os.coursesubject_seq
inner join OpenCourse oc on oc.seq = os.opencourse_seq
order by s.seq asc;
