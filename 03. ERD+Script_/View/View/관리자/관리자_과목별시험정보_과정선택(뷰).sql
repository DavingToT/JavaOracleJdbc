
-- A-007-1
-- �������
-- ���� ��������
-- ���� ����
---- [������] [������] [������] [���ǽǸ�] --����
DROP VIEW vwTestManage;

select * from vwTestManage where ������ȣ =1;

COMMIT;

CREATE OR REPLACE VIEW vwTestManage
AS


select 
distinct
c.seq as ������ȣ,
rpad(c.name, 66, ' ') as ������,
to_char(oc.start_date, 'yyyy-mm-dd') as ������,
to_char(oc.end_date, 'yyyy-mm-dd') as ������,
cr.name as ���ǽǸ�

from course c
inner join OpenCourse oc              on c.seq = oc.course_seq
inner join Classroom cr               on cr.seq = oc.classroom_seq
order by c.seq asc;
