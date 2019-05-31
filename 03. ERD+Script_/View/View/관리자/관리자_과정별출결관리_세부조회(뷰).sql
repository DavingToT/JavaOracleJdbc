---------------------------------
-- A-008-1
-- 출결 관리 및 조회
-- 과정별 출결 조회


-------------

--[날짜]  		[과정]			[정상] 	  [지각]	  [조퇴]	[외출]    [[병가] 	
--2019-03-01	Java&python 	 20	        0     	     0        0           0
--2019-03-02    Java&python 	 23         0            0        0           0
--..
--2019-04-02
drop table vwCourseAttendance;

commit;
select * from vwCourseAttendance where 과정번호 = 5;

create or replace view vwCourseAttendance
as
SELECT


    to_char(g.geuntae_date, 'yyyy-mm-dd') AS 날짜,
    c.seq as 과정번호,
    rpad(c.name, 66, ' ') AS 과정명,
    COUNT(CASE
        WHEN status_seq = 1 THEN 1
    END) AS 정상,
    COUNT(CASE
        WHEN status_seq = 2 THEN 1
    END) AS 지각,
    COUNT(CASE
        WHEN status_seq = 3 THEN 1
    END) AS 외출,
    COUNT(CASE
        WHEN status_seq = 4 THEN 1
    END) AS 병가

FROM Course c

inner join OpenCourse oc            on c.seq = oc.course_seq
inner join OpenCourseStudent ocs    on oc.seq = ocs.opencourse_seq
inner join Student stu              on ocs.student_seq = stu.seq
inner join Geuntae g                on ocs.seq = g.opencoursestudent_seq
inner join Attendance at            on g.seq = at.geuntae_seq
inner join Status sta               on at.status_seq = sta.seq
    GROUP BY to_char(g.geuntae_date, 'yyyy-mm-dd'), g.geuntae_date, 'yyyy-mm-dd', 
    c.seq, 
    rpad(c.name , 66, ' '), c.name, 66, ' ', rpad(c.name, 66, ' ')
    order by g.geuntae_date asc;
