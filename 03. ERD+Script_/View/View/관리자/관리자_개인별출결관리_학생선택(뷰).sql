-----------------------------------
-- A-008-3
-- ��� ���� �� ��ȸ -- ���κ� �����ȸ
-- �л� �˻�
-- [�л���] [��ȭ��ȣ]
drop view vwPersonalAttendance;

select * from vwPersonalAttendance;

create or replace view vwPersonalAttendance
as
select


name as �л���,
tel as ��ȭ��ȣ

from student;
