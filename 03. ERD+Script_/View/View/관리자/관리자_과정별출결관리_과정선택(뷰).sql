----------------------------------
-- A-008-1
-- 출결 관리 및 조회
-- 과정 선택하기
-- 과정별 출결 조회
drop view vwCourseAttendanceSelect;

select * from vwCourseAttendanceSelect;

create or replace view vwCourseAttendanceSelect
as
select

distinct
c.seq as 과정번호,
c.name as 개설과정명


from Course c
inner join OpenCourse oc            on c.seq = oc.course_seq
inner join OpenCourseStudent ocs    on oc.seq = ocs.opencourse_seq
inner join Student stu              on ocs.student_seq = stu.seq
inner join Geuntae g                on ocs.seq = g.opencoursestudent_seq
inner join Attendance at            on g.seq = at.geuntae_seq
inner join Status sta               on at.status_seq = sta.seq
order by c.seq asc;
