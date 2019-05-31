---------------------------------
-- A-008-1
-- ��� ���� �� ��ȸ
-- ������ ��� ��ȸ


-------------

--[��¥]  		[����]			[����] 	  [����]	  [����]	[����]    [[����] 	
--2019-03-01	Java&python 	 20	        0     	     0        0           0
--2019-03-02    Java&python 	 23         0            0        0           0
--..
--2019-04-02
drop table vwCourseAttendance;

commit;
select * from vwCourseAttendance where ������ȣ = 5;

create or replace view vwCourseAttendance
as
SELECT


    to_char(g.geuntae_date, 'yyyy-mm-dd') AS ��¥,
    c.seq as ������ȣ,
    rpad(c.name, 66, ' ') AS ������,
    COUNT(CASE
        WHEN status_seq = 1 THEN 1
    END) AS ����,
    COUNT(CASE
        WHEN status_seq = 2 THEN 1
    END) AS ����,
    COUNT(CASE
        WHEN status_seq = 3 THEN 1
    END) AS ����,
    COUNT(CASE
        WHEN status_seq = 4 THEN 1
    END) AS ����

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
