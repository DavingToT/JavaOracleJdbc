 - ������ ����
[������], [�����Ⱓ], [�����ο�], [���ο�], [��������], [��ȣ], [�͸�1], [���� ���Ῡ��], [���ǰ�ȹ�� ���� ����], 
[������ ���ǳ��� ���� �� ���� ����], [������ ���� ����], [������ ���ͼ� ����], [�������� ������], [���ǻ���]

  
 
 SELECT 
 
 d.name AS "������", 
 c.start_date - c.end_date AS "�����Ⱓ",
 a.seq AS "��ȣ",
 a.complete AS "���� ���Ῡ��",
 a.plan_score AS "���ǰ�ȹ�� ���� ����",
 a.content_score AS "���ǳ��� ���� ����",
 a.communication_score AS "������ ��������",
 a.benefit_score AS "������ ���ͼ� ����",
 a.satisfaction_score AS "�������� ������",
 a.suggestion AS "���ǻ���"
 
 FROM TeacherEvaluation A
 
 INNER JOIN OpenCourseStudent B         ON B.seq = A.opencoursestudent_seq
 INNER JOIN OpenCourse C                ON C.seq = B.opencourse_seq
 INNER JOIN Course D                    ON D.seq = C.course_seq;
 
 