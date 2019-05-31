
-- A-007-1
-- 시험관리
-- 과목별 시험정보
-- 과정 선택
---- [과정명] [시작일] [종료일] [강의실명] --ㅇㅇ
DROP VIEW vwTestManage;

select * from vwTestManage where 과정번호 =1;

COMMIT;

CREATE OR REPLACE VIEW vwTestManage
AS


select 
distinct
c.seq as 과정번호,
rpad(c.name, 66, ' ') as 과정명,
to_char(oc.start_date, 'yyyy-mm-dd') as 시작일,
to_char(oc.end_date, 'yyyy-mm-dd') as 종료일,
cr.name as 강의실명

from course c
inner join OpenCourse oc              on c.seq = oc.course_seq
inner join Classroom cr               on cr.seq = oc.classroom_seq
order by c.seq asc;
