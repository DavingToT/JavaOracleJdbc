--------------------------
-- ���� ���� ���
-- ���� �������� ��� ������ ��ȸ -- �����Ϸ�
-- [�л���] [�ֹι�ȣ] [�ʱ�] [�Ǳ�] -- ������ ���� ���� �� ���������� ��� ���
drop view vwAllSubjectScore;
commit;
select * from vwAllSubjectScore;

create or replace view vwAllSubjectScore
as
select 

distinct
stu.name as �л���,
stu.ssn as �ֹι�ȣ,
s.seq as �����ȣ,
sr.written_test as �ʱ�,
sr.performance_test as �Ǳ�

from Student stu
inner join OpenCourseStudent ocs on stu.seq = ocs.student_seq
inner join Score sr              on ocs.student_seq = sr.opencoursestudent_seq
inner join OpenCourse oc         on ocs.opencourse_seq = oc.seq
inner join OpenSubject os        on oc.seq = os.opencourse_seq
inner join Course c              on c.seq = oc.course_seq
inner join CourseSubject cs      on c.seq = cs.course_seq
inner join Subject s             on s.seq = cs.subject_seq;