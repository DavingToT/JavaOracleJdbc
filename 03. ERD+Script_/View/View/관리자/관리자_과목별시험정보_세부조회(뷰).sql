----------------------------------------
-- A-007-1-2
-- �������
-- ���� ��������
----[������ ����]  [���� ��� ����] [���� ���� ���� ��Ͽ���] --��
DROP VIEW vwTestManageDetail;

select * from vwTestManageDetail where ���������� = '18/10/01';

commit;

CREATE OR REPLACE VIEW vwTestManageDetail
AS
select 
DISTINCT
rpad(s.name, 30, ' ') as ����������,
to_char(oc.start_date, 'yyyy-mm-dd') as ����������,

    CASE
        WHEN wr.question IS NOT NULL AND wr.answer IS NOT NULL THEN 'O'
    ELSE 'X'
END as ���蹮�����ϵ�Ͽ���,

    CASE
        WHEN sr.written_test IS NOT NULL AND sr.performance_test IS NOT NULL THEN 'O'
    ELSE 'X'
END as ������Ͽ���

from Textbook tx
inner join Subject s                  on tx.seq = s.text_seq
inner join CourseSubject cs           on s.seq = cs.subject_seq
inner join OpenSubject os             on cs.seq = os.coursesubject_seq
inner join Score sr                   on os.seq = sr.opensubject_seq
inner join WrittenTest wr             on os.seq = wr.opensubject_seq
inner join Course c                   on c.seq = cs.course_seq
inner join OpenCourse oc              on c.seq = oc.course_seq;

select * from subject;
