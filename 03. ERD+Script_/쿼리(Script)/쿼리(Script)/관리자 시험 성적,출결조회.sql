---------------------------------------
-- A-007-1
-- �������
-- ���� ��������
-- ���� ����
===================
SEQ   ������            ������                  ������    	   ���ǽǹ�ȣ   
1   java&python      19/01/28  	   19/08/21	         2
2  	C++	  19/02/14	   19/07/15                   3
3	��.	       ��.
4	��.	       ��.

===================



select 

c.name as ������,
oc.start_date as ������,
oc.end_date as ������,
cr.name as ���ǽǸ�



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
-- ���� ���� ���
-- ���� ���� �κ�

=============
������ ���� �� �ϳ��� �������ּ���.
[���� ������]		   [���� �����Ⱓ]		[���������]	[���ǽǸ�]    	[�����] 	 	[�л���]         	 [�����]
Java&python		  19/01/28 ~19/08/21	  ����Ŭ   	   2	     	������		ȫ�浿    ����Ŭ�� ���� �����ͺ��̽� �Թ�
����SW������ �缺 ����        19/03/02 ~19/05/13	  ����Ŭ 	     	   4		����		������    ����Ŭ�� ���� �����ͺ��̽� �Թ�
��..
��..


select

c.name as ����������,
oc.start_date ||'~'|| oc.end_date as ���������Ⱓ,
os.start_date ||'~'|| os.end_date as ��������Ⱓ,
s.name as ���������,
cr.name as ���ǽǸ�,
t.name as �����,
stu.name as �л���,
tx.name as �����


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
-- ���� ���� ���
-- ���� �������� ��� ������ ��ȸ
===============
�� ������ ������ ������ ���
������ �̸�	SSN	  �ʱ�	   �Ǳ�
������		1152312   35	    40
������		2141511	   23	    30
��		��.	   ��	    ��.
��
======================

select 

stu.name as �л���,
stu.ssn as �ֹι�ȣ,
sr.written_test as �ʱ�,
sr.performance_test as �Ǳ�

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
-- ���κ� ���� ���
-- ���κ� ���� ��ü��ȸ

==================
������ �̸�	SSN	  	����������		���������Ⱓ		�����		���ǽǸ�
������		1152312	           Java&python		19/01/28 ~ 19/08/21	ȫ�浿		    2
������		2141511      ����SW������ �缺 ���� 	            19/03/02 ~ 19/05/11           ������		    4
��.
��.
====================
select 


stu.name as �л���,
stu.ssn as �ֹι�ȣ,
c.name as ����������,
oc.start_date ||'~'|| oc.end_date as ���������Ⱓ,
t.name as �����,
cr.name as ���ǽǸ�


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
-- ���κ� ���� ���
-- ���κ� ���� ������ȸ
================

���� �����	���� ���� �Ⱓ		�����	���	 �ʱ�	 �Ǳ�
�ڹ�		19/01/28 ~ 19/03/02	ȫ�浿   	 20	  24 	  20
����Ŭ	19/03/03 ~ 19/05/01	ȫ�浿	 18	  20	  35
��
=================

select 


s.name as ���������,
os.start_date ||'~'|| os.end_date as ��������Ⱓ,
t.name as �����,
sr.attendance as ���,
sr.written_test as �ʱ�,
sr.performance_test as �Ǳ�

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
-- ��� ���� �� ��ȸ
-- ���� �����ϱ�
-- ������ ��� ��ȸ
=========================
[��ȣ]		[����]
1		Java&python
2		����SW������ �缺 ����
��
��


=========================


select

c.name as ����������


from Course c
inner join OpenCourse oc            on c.seq = oc.course_seq
inner join OpenCourseStudent ocs    on oc.seq = ocs.opencourse_seq
inner join Student stu              on ocs.student_seq = stu.seq
inner join Geuntae g                on ocs.seq = g.opencoursestudent_seq
inner join Attendance at            on g.seq = at.geuntae_seq
inner join Status sta               on at.status_seq = sta.seq;


---------------------------------------


-- A-008-1
-- ��� ���� �� ��ȸ
-- ������ ��� ��ȸ

========================
[��¥]  		[����]			[����] 	  [����]	  [����]	[����]    [[����] 	
2019-03-01	     Java&python 		  20           3	    0          0           0
2019-03-02	     Java&python 		  23           0           0         0           0
��


=======================



???????????????????????????


-------------------
-- A-008-2
-- ��� ���� �� ��ȸ
-- �Ⱓ�� ��� ��ȸ

=================
[��¥]  		[����]				[�̸�] 		  [���]		   [���»�Ȳ]
2019-03-01	Java&python			�赿��		   �⼮		     ����
2019-03-01	����SW������ �缺 ����	            �ִٺ�		  �⼮		     ����
....

=================

select

c.name as ����������,
stu.name as �л���,
sta.status as ����


from Course c
inner join OpenCourse oc            on c.seq = oc.course_seq
inner join OpenCourseStudent ocs    on oc.seq = ocs.opencourse_seq
inner join Student stu              on ocs.student_seq = stu.seq
inner join Geuntae g                on ocs.seq = g.opencoursestudent_seq
inner join Attendance at            on g.seq = at.geuntae_seq
inner join Status sta               on at.status_seq = sta.seq;

----------------------------------

-- A-008-3
-- ��� ���� �� ��ȸ -- ���κ� �����ȸ
-- �л� �˻�
====================
[�˻� ���]
[��ȣ]		 [�̸�] 	[��ȭ��ȣ]
1		ȫ�浿	010-1111-1111
2 		������	010-2222-3333

====================

select

stu.name as �л���,
stu.tel as ��ȭ��ȣ


from Course c
inner join OpenCourse oc            	 on c.seq = oc.course_seq
inner join OpenCourseStudent ocs      on oc.seq = ocs.opencourse_seq
inner join Student stu               	 on ocs.student_seq = stu.seq
inner join Geuntae g                	 on ocs.seq = g.opencoursestudent_seq
inner join Attendance at            	 on g.seq = at.geuntae_seq
inner join Status sta               	 on at.status_seq = sta.seq;

--------------------------------------
-- A-008-3
-- ��� ���� �� ��ȸ
-- �л� �˻�
-- ���κ� ��� ��ȸ

=================
[��¥]  		[����]		 [�̸�] 	        [���]		[���»�Ȳ]
2019-03-01	Java&python         ȫ�浿	         �⼮		   ����
2019-03-02	Java&python	ȫ�浿	         �⼮		   ����
��


=================

select

c.name as ������,
stu.name as �л���,
sta.status as ���»�Ȳ


from Course c
inner join OpenCourse oc            on c.seq = oc.course_seq
inner join OpenCourseStudent ocs    on oc.seq = ocs.opencourse_seq
inner join Student stu              on ocs.student_seq = stu.seq
inner join Geuntae g                on ocs.seq = g.opencoursestudent_seq
inner join Attendance at            on g.seq = at.geuntae_seq
inner join Status sta               on at.status_seq = sta.seq;





