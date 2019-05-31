CREATE TABLE Notice
(
    seq number primary key,
    company_seq number
        references Company(seq),
    salary number,
    deadline varchar2(30),
    course varchar2(200),
    major varchar2(30),
    opencoursestudent_seq number 
        references OpenCourseStudent(seq)
);

-- ������ ��� ���� �ۼ� -- 
INSERT INTO Notice (salary,deadline,course) VALUES (/*�޿�*/20000000 , '������', '�䱸����', '�䱸 ��������');

-- ������ ��� ���� ���� -- 
DELETE FROM Notice WHERE seq = �Է� ���� ���� ��ȣ;




-- ������ �л� ��û ��� ��ȸ -- 
-- [�����ȣ][�����][����][������][�䱸����][��������][�л���][����]

SELECT 
e.seq AS "�����ȣ",
e.name AS "�����",
d.salary AS "����",
d.deadline AS "������",
d.course AS "�䱸����",
d.major AS "��������",
a.name AS "�л���",
g.name AS "������"
FROM Student A

INNER JOIN  OpenCourseStudent B     ON  A.seq = B.student_seq
INNER JOIN  NoticeApplication C     ON B.seq =  c.opencoursestudent_seq
INNER JOIN  Notice D                ON D.seq = c.notice_seq
INNER JOIN  Company E               ON e.seq = d.company_seq
INNER JOIN  OpenCourse F            ON B.opencourse_seq = f.seq
INNER JOIN  Course G                ON g.seq = f.course_seq;





