---------------------------------
-- A-007-3-2
-- ���κ� ���� ���
-- ���κ� ���� ������ȸ - �� 
-- [���������] [��������Ⱓ] [�����] [���] [�ʱ�] [�Ǳ�]
drop view vwPersonalScoreDetail;

commit;
select * from vwpersonalscoredetail;

create or replace view vwPersonalScoreDetail
as
select 

distinct

stu.name as �л���,
rpad(s.name, 66, ' ') as ���������,
os.start_date ||'~'|| os.end_date as ��������Ⱓ,
t.name as �����,
sr.attendance as ���,
sr.written_test as �ʱ�,
sr.performance_test as �Ǳ�

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
