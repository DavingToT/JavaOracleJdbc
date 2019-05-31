--���� ��ȸ 

--������ �̸� / ��¥ / ���� 

SELECT 
    a.name AS "������" ,
    SYSDATE AS "��¥",
    c.name AS "�����" 
FROM Teacher A

INNER JOIN          LecturableSubject B       ON A.seq = B.teacher_seq
INNER JOIN          Subject C                 ON B.subject_seq = C.seq
INNER JOIN          Textbook Z                ON Z.seq = C.text_seq
INNER JOIN          CourseSubject D           ON C.seq = D.subject_seq
INNER JOIN          OpenSubject E             ON D.seq = E.coursesubject_seq
INNER JOIN          OpenCourse F              ON F.seq = E.opencourse_seq
INNER JOIN          Course G                  ON F.course_seq = G.seq
INNER JOIN          OpenCourseStudent H       On F.seq = H.opencourse_seq
INNER JOIN          Student I                 ON I.seq = H.student_seq; 


-- [������] [�����] | [����Ⱓ : ���� �� ���� ~ �� �� ����] | [���� ��] | [������ ����ο�]

SELECT 
    g.name AS "������",
    c.name AS "�����", 
    e.start_date AS "������",
    e.end_date AS "������", 
    z.name AS "�����" 
FROM Teacher A

INNER JOIN          LecturableSubject B       ON A.seq = B.teacher_seq
INNER JOIN          Subject C                 ON B.subject_seq = C.seq
INNER JOIN          Textbook Z                ON Z.seq = C.text_seq
INNER JOIN          CourseSubject D           ON C.seq = D.subject_seq
INNER JOIN          OpenSubject E             ON D.seq = E.coursesubject_seq
INNER JOIN          OpenCourse F              ON F.seq = E.opencourse_seq
INNER JOIN          Course G                  ON F.course_seq = G.seq
INNER JOIN          OpenCourseStudent H       On F.seq = H.opencourse_seq
INNER JOIN          Student I                 ON I.seq = H.student_seq;


-- ������ ī��Ʈ
SELECT COUNT(*) FROM OpenCourseStudent;
