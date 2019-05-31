-----------------------------------
-- A-008-2
-- 출결 관리 및 조회
-- 기간별 출결 조회
-- [개설과정명] [학생명] [상태]

drop view vwPeriodAttendance;

commit;
select * from vwPeriodAttendance;

create or replace view vwPeriodAttendance
as

select

distinct
to_char(g.geuntae_date, 'yyyy-mm-dd') as 날짜,
rpad(c.name, 66, ' ') as 개설과정명,
stu.name as 학생명,
sta.status as 상태


from Course c
inner join OpenCourse oc            on c.seq = oc.course_seq
inner join OpenCourseStudent ocs    on oc.seq = ocs.opencourse_seq
inner join Student stu              on ocs.student_seq = stu.seq
inner join Geuntae g                on ocs.seq = g.opencoursestudent_seq
inner join Attendance at            on g.seq = at.geuntae_seq
inner join Status sta               on at.status_seq = sta.seq;