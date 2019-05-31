��� Ȯ�� ǥ  -> [������ȣ] [������ID] [�������̸�] [��Ῡ��] [��] [��] [��]

*/


SELECT 
    e.seq AS "������ȣ", 
    h.seq AS "������ ��ȣ", 
    h.name AS "������ �̸�", 
    k.status AS "����", 
    i.geuntae_date AS "��¥" 
FROM Teacher A

INNER JOIN          LecturableSubject B       ON A.seq = B.teacher_seq
INNER JOIN          Subject C                 ON B.subject_seq = C.seq
INNER JOIN          CourseSubject D           ON C.seq = D.subject_seq
INNER JOIN          Course E                  ON D.course_seq = E.seq
INNER JOIN          OpenCourse F              ON E.seq = F.course_seq
INNER JOIN          OpenCourseStudent G       ON F.seq = G.opencourse_seq
INNER JOIN          Student H                 ON G.student_seq = H.seq
INNER JOIN          Geuntae I                 ON G.seq = I.opencoursestudent_seq
INNER JOIN          Attendance J              ON I.seq = J.geuntae_seq
LEFT OUTER JOIN     Status K                  ON J.status_seq = K.seq;