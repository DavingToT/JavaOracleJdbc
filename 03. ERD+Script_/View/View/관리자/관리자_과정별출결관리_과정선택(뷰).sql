----------------------------------
-- A-008-1
-- ��� ���� �� ��ȸ
-- ���� �����ϱ�
-- ������ ��� ��ȸ
drop view vwCourseAttendanceSelect;

select * from vwCourseAttendanceSelect;

create or replace view vwCourseAttendanceSelect
as
select

distinct
c.seq as ������ȣ,
c.name as ����������


from Course c
inner join OpenCourse oc            on c.seq = oc.course_seq
inner join OpenCourseStudent ocs    on oc.seq = ocs.opencourse_seq
inner join Student stu              on ocs.student_seq = stu.seq
inner join Geuntae g                on ocs.seq = g.opencoursestudent_seq
inner join Attendance at            on g.seq = at.geuntae_seq
inner join Status sta               on at.status_seq = sta.seq
order by c.seq asc;
