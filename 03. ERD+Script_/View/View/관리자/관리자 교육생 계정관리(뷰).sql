

/*

[ ������ ���� ���� ]

- ���̺� ���
 1. ������, Student
 2. ����������������, OpenCourseStudent
 3. ��������, OpenCourse
 4. ���ǽ�, Classroom

*/

-- ������ ���̺� ����
CREATE TABLE Student
(
    seq number primary key,
    name varchar2(30) not null,
    ssn varchar2(30) not null,
    tel varchar2(13),
    regdate varchar2(30) not null,
    major varchar2(30)
);

-- ������ ��ȣ ����
CREATE SEQUENCE student_seq;

-- { �ű� ������ ��� }
INSERT INTO (seq, name, ssn, tel, regdate, major) VALUES (��������ȣ, '�̸�', '�ֹε�ϵ��ڸ�', '��ȭ��ȣ', SYSDATE, '����/������/����');


-- { ������ ���� ��ȸ }

-- ��ü ������


CREATE OR REPLACE VIEW vwAllStudent
AS
SELECT * FROM Student
    INNER JOIN OpenCourseStudent    ON Student.seq = OpenCoursestudent.student_seq
    INNER JOIN OpenCourse           ON OpenCoursestudent.opencourse_seq = OpenCourse.seq
    INNER JOIN Classroom            ON OpenCourse.classroom_seq = Classroom.seq;


-- ������ �˻�
CREATE OR REPLACE VIEW vwStudentSearch
AS
SELECT * FROM Student
    INNER JOIN OpenCourseStudent    ON Student.seq = OpenCoursestudent.student_seq
    INNER JOIN OpenCourse           ON OpenCoursestudent.opencourse_seq = OpenCourse.seq
    INNER JOIN Classroom            ON OpenCourse.classroom_seq = Classroom.seq
-- �̸�/��ȣ���� �˻�
WHERE Student.name = '�Է� ���� �̸�' OR Student.seq = �Է� ���� ����; -- ���� �� �غ���



-- { ������ ���� ���� }
UPDATE Student SET name = '�����Ұ�' WHERE seq = ������ ��ȣ;
UPDATE Student SET ssn = '�����Ұ�' WHERE seq = ������ ��ȣ;
UPDATE Student SET tel = '�����Ұ�' WHERE seq = ������ ��ȣ;
UPDATE Student SET major = '�����Ұ�' WHERE seq = ������ ��ȣ;

-- { ������ ���� }
DELETE FROM Student WHERE seq = �Է¹��� ������ ��ȣ; 
 


