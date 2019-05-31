------------------------------------
-- A-008-3
-- ��� ���� �� ��ȸ
-- �л� �˻�
-- ���κ� ��� ��ȸ
-- [��¥] [������] [�л���] [���»�Ȳ] 
drop view vwPersonalAttendanceDetail;


commit;
select * from vwPersonalAttendanceDetail;

create or replace view vwPersonalAttendanceDetail
as

select

distinct

to_char(g.geuntae_date, 'yyyy-mm-dd') as ��¥,
rpad(c.name, 66, ' ') as ������,
stu.name as �л���,
sta.status as ���»�Ȳ

from Course c


inner join OpenCourse oc            on c.seq = oc.course_seq
inner join OpenCourseStudent ocs    on oc.seq = ocs.opencourse_seq
inner join Student stu              on ocs.student_seq = stu.seq
inner join Geuntae g                on ocs.seq = g.opencoursestudent_seq  --ocs.seq  ocs.seq = g.opencoursestudent_seq
inner join Attendance at            on g.seq = at.geuntae_seq
inner join Status sta               on at.status_seq = sta.seq
order by to_char(g.geuntae_date, 'yyyy-mm-dd') asc;

