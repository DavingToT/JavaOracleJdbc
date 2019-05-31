-----------------------------------
-- A-008-3
-- 출결 관리 및 조회 -- 개인별 출결조회
-- 학생 검색
-- [학생명] [전화번호]
drop view vwPersonalAttendance;

select * from vwPersonalAttendance;

create or replace view vwPersonalAttendance
as
select


name as 학생명,
tel as 전화번호

from student;
