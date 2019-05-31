--------------------------------------
-- A-007-2 
-- ���� ���� ��ȸ
-- ���� ���� �κ� --�� (�߰��κ�)
commit;

select * from vwSubjectSelect;

Create or replace view vwSubjectSelect 
as

select 
distinct
s.seq as �����ȣ,
s.name as �����
from subject s
inner join CourseSubject cs on s.seq = cs.subject_seq
inner join Course c on c.seq = cs.course_seq
inner join Opensubject os on cs.seq = os.coursesubject_seq
inner join OpenCourse oc on oc.seq = os.opencourse_seq
order by s.seq asc;
