---------------------------------------
-- A-007-1
-- 시험관리
-- 과목별 시험정보
-- 과정 선택
===================
SEQ   과정명            시작일                  종료일    	   강의실번호   
1   java&python      19/01/28  	   19/08/21	         2
2  	C++	  19/02/14	   19/07/15                   3
3	….	       ….
4	….	       ….

===================



select 

c.name as 과정명,
oc.start_date as 시작일,
oc.end_date as 종료일,
cr.name as 강의실명



from Classroom cr
inner join OpenCourse oc            on cr.seq = oc.classroom_seq
inner join Course c                 on oc.course_seq = c.seq
inner join CourseSubject cs         on c.seq = cs.course_seq
inner join OpenSubject os           on cs.seq = os.coursesubject_seq
inner join Subject s                on cs.subject_seq = s.seq
inner join WrittenTest wr           on os.seq = wr.opensubject_seq
inner join PerformanceTest pf       on os.seq = pf.opensubject_seq
inner join OpenCourseStudent ocs    on oc.seq = ocs.opencourse_seq
inner join Student stu              on ocs.student_seq = stu.seq;



--------------------------------
-- A-007-2 
-- 과목별 성적 출력
-- 과목 선택 부분

=============
개설된 과목 중 하나를 선택해주세요.
[개설 과정명]		   [개설 과정기간]		[개설과목명]	[강의실명]    	[교사명] 	 	[학생명]         	 [교재명]
Java&python		  19/01/28 ~19/08/21	  오라클   	   2	     	히히히		홍길동    오라클로 배우는 데이터베이스 입문
응용SW개발자 양성 과정        19/03/02 ~19/05/13	  오라클 	     	   4		우우우		흐흐흐    오라클로 배우는 데이터베이스 입문
…..
…..


select

c.name as 개설과정명,
oc.start_date ||'~'|| oc.end_date as 개설과정기간,
os.start_date ||'~'|| os.end_date as 개설과목기간,
s.name as 개설과목명,
cr.name as 강의실명,
t.name as 교사명,
stu.name as 학생명,
tx.name as 교재명


from Student stu
inner join OpenCourseStudent ocs    on stu.seq = ocs.student_seq
inner join Score sr                 on ocs.seq = sr.opencoursestudent_seq
inner join OpenCourse oc            on ocs.opencourse_seq = oc.seq
inner join Teacher t                on oc.teacher_seq = t.seq
inner join Classroom cr             on oc.classroom_seq = cr.seq
inner join Course c                 on oc.course_seq = c.seq
inner join LecturableSubject ls     on t.seq = ls.teacher_seq
inner join Subject s                on ls.subject_seq = s.seq
inner join Textbook tx              on s.text_seq = tx.seq
inner join CourseSubject cs         on c.seq = cs.course_seq
inner join OpenSubject os           on cs.seq = os.coursesubject_seq;


----------------------------------------------------
-- A-007-2-2
-- 과목별 성적 출력
-- 과목별 성적으로 모든 교육생 조회
===============
이 과목을 수강한 교육생 목록
교육생 이름	SSN	  필기	   실기
흐흐흐		1152312   35	    40
가가가		2141511	   23	    30
…		….	   …	    ….
…
======================

select 

stu.name as 학생명,
stu.ssn as 주민번호,
sr.written_test as 필기,
sr.performance_test as 실기

from Student stu
inner join OpenCourseStudent ocs    on stu.seq = ocs.student_seq
inner join Score sr                 on ocs.seq = sr.opencoursestudent_seq
inner join OpenCourse oc            on ocs.opencourse_seq = oc.seq
inner join Teacher t                on oc.teacher_seq = t.seq
inner join Classroom cr             on oc.classroom_seq = cr.seq
inner join Course c                 on oc.course_seq = c.seq
inner join LecturableSubject ls     on t.seq = ls.teacher_seq
inner join Subject s                on ls.subject_seq = s.seq
inner join Textbook tx              on s.text_seq = tx.seq
inner join CourseSubject cs         on c.seq = cs.course_seq
inner join OpenSubject os           on cs.seq = os.coursesubject_seq;

---------------------------------------------------
-- A-007-3
-- 개인별 성적 출력
-- 개인별 성적 전체조회

==================
교육생 이름	SSN	  	개설과정명		개설과정기간		교사명		강의실명
하하하		1152312	           Java&python		19/01/28 ~ 19/08/21	홍길동		    2
가가가		2141511      응용SW개발자 양성 과정 	            19/03/02 ~ 19/05/11           흐흐흐		    4
….
….
====================
select 


stu.name as 학생명,
stu.ssn as 주민번호,
c.name as 개설과정명,
oc.start_date ||'~'|| oc.end_date as 개설과정기간,
t.name as 교사명,
cr.name as 강의실명


from Student stu
inner join OpenCourseStudent ocs    on stu.seq = ocs.student_seq
inner join Score sr                 on ocs.seq = sr.opencoursestudent_seq
inner join OpenCourse oc            on ocs.opencourse_seq = oc.seq
inner join Teacher t                on oc.teacher_seq = t.seq
inner join Classroom cr             on oc.classroom_seq = cr.seq
inner join Course c                 on oc.course_seq = c.seq
inner join LecturableSubject ls     on t.seq = ls.teacher_seq
inner join Subject s                on ls.subject_seq = s.seq
inner join Textbook tx              on s.text_seq = tx.seq
inner join CourseSubject cs         on c.seq = cs.course_seq
inner join OpenSubject os           on cs.seq = os.coursesubject_seq;

---------------------------------
-- A-007-3-2
-- 개인별 성적 출력
-- 개인별 성적 세부조회
================

개설 과목명	개설 과목 기간		교사명	출력	 필기	 실기
자바		19/01/28 ~ 19/03/02	홍길동   	 20	  24 	  20
오라클	19/03/03 ~ 19/05/01	홍길동	 18	  20	  35
…
=================

select 


s.name as 개설과목명,
os.start_date ||'~'|| os.end_date as 개설과목기간,
t.name as 교사명,
sr.attendance as 출결,
sr.written_test as 필기,
sr.performance_test as 실기

from Student stu
inner join OpenCourseStudent ocs    on stu.seq = ocs.student_seq
inner join Score sr                 on ocs.seq = sr.opencoursestudent_seq
inner join OpenCourse oc            on ocs.opencourse_seq = oc.seq
inner join Teacher t                on oc.teacher_seq = t.seq
inner join Classroom cr             on oc.classroom_seq = cr.seq
inner join Course c                 on oc.course_seq = c.seq
inner join LecturableSubject ls     on t.seq = ls.teacher_seq
inner join Subject s                on ls.subject_seq = s.seq
inner join Textbook tx              on s.text_seq = tx.seq
inner join CourseSubject cs         on c.seq = cs.course_seq
inner join OpenSubject os           on cs.seq = os.coursesubject_seq;


------------------------------
-- A-008-1
-- 출결 관리 및 조회
-- 과정 선택하기
-- 과정별 출결 조회
=========================
[번호]		[과정]
1		Java&python
2		응용SW개발자 양성 과정
…
…


=========================


select

c.name as 개설과정명


from Course c
inner join OpenCourse oc            on c.seq = oc.course_seq
inner join OpenCourseStudent ocs    on oc.seq = ocs.opencourse_seq
inner join Student stu              on ocs.student_seq = stu.seq
inner join Geuntae g                on ocs.seq = g.opencoursestudent_seq
inner join Attendance at            on g.seq = at.geuntae_seq
inner join Status sta               on at.status_seq = sta.seq;


---------------------------------------


-- A-008-1
-- 출결 관리 및 조회
-- 과정별 출결 조회

========================
[날짜]  		[과정]			[정상] 	  [지각]	  [조퇴]	[외출]    [[병가] 	
2019-03-01	     Java&python 		  20           3	    0          0           0
2019-03-02	     Java&python 		  23           0           0         0           0
…


=======================



???????????????????????????


-------------------
-- A-008-2
-- 출결 관리 및 조회
-- 기간별 출결 조회

=================
[날짜]  		[과정]				[이름] 		  [출결]		   [근태상황]
2019-03-01	Java&python			김동성		   출석		     지각
2019-03-01	응용SW개발자 양성 과정	            최다빈		  출석		     조퇴
....

=================

select

c.name as 개설과정명,
stu.name as 학생명,
sta.status as 상태


from Course c
inner join OpenCourse oc            on c.seq = oc.course_seq
inner join OpenCourseStudent ocs    on oc.seq = ocs.opencourse_seq
inner join Student stu              on ocs.student_seq = stu.seq
inner join Geuntae g                on ocs.seq = g.opencoursestudent_seq
inner join Attendance at            on g.seq = at.geuntae_seq
inner join Status sta               on at.status_seq = sta.seq;

----------------------------------

-- A-008-3
-- 출결 관리 및 조회 -- 개인별 출결조회
-- 학생 검색
====================
[검색 결과]
[번호]		 [이름] 	[전화번호]
1		홍길동	010-1111-1111
2 		하하하	010-2222-3333

====================

select

stu.name as 학생명,
stu.tel as 전화번호


from Course c
inner join OpenCourse oc            	 on c.seq = oc.course_seq
inner join OpenCourseStudent ocs      on oc.seq = ocs.opencourse_seq
inner join Student stu               	 on ocs.student_seq = stu.seq
inner join Geuntae g                	 on ocs.seq = g.opencoursestudent_seq
inner join Attendance at            	 on g.seq = at.geuntae_seq
inner join Status sta               	 on at.status_seq = sta.seq;

--------------------------------------
-- A-008-3
-- 출결 관리 및 조회
-- 학생 검색
-- 개인별 출결 조회

=================
[날짜]  		[과정]		 [이름] 	        [출결]		[근태상황]
2019-03-01	Java&python         홍길동	         출석		   지각
2019-03-02	Java&python	홍길동	         출석		   지각
…


=================

select

c.name as 과정명,
stu.name as 학생명,
sta.status as 근태상황


from Course c
inner join OpenCourse oc            on c.seq = oc.course_seq
inner join OpenCourseStudent ocs    on oc.seq = ocs.opencourse_seq
inner join Student stu              on ocs.student_seq = stu.seq
inner join Geuntae g                on ocs.seq = g.opencoursestudent_seq
inner join Attendance at            on g.seq = at.geuntae_seq
inner join Status sta               on at.status_seq = sta.seq;





