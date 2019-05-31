--강의 조회 

--선생님 이름 / 날짜 / 과목 

SELECT 
    DISTINCT 
    a.seq AS "교사번호",
    a.name AS "교사" ,
    SYSDATE AS "날짜",
--    e.start_date AS "과목시작일",
--    e.end_date AS "과목종료일",
    c.name AS "과목명" 
FROM Teacher A

INNER JOIN          LecturableSubject B       ON A.seq = B.teacher_seq
INNER JOIN          Subject C                 ON B.subject_seq = C.seq
INNER JOIN          Textbook Z                ON Z.seq = C.text_seq
INNER JOIN          CourseSubject D           ON C.seq = D.subject_seq
INNER JOIN          OpenSubject E             ON D.seq = E.coursesubject_seq
INNER JOIN          OpenCourse F              ON F.seq = E.opencourse_seq
INNER JOIN          Course G                  ON F.course_seq = G.seq
INNER JOIN          OpenCourseStudent H       On F.seq = H.opencourse_seq
INNER JOIN          Student I                 ON I.seq = H.student_seq
WHERE SYSDATE BETWEEN e.start_date AND e.end_date
ORDER BY a.seq; 


-- [과정명] [과목명] | [과목기간 : 시작 년 월일 ~ 끝 년 월일] | [교재 명] | [교육생 등록인원]

SELECT 
    DISTINCT
    a.seq AS "교사번호",
    a.name AS "교사명",
    g.name AS "과정명",
    c.name AS "과목명", 
    e.start_date AS "시작일",
    e.end_date AS "종료일", 
    z.name AS "교재명" 
FROM Teacher A

INNER JOIN          LecturableSubject B       ON A.seq = B.teacher_seq
INNER JOIN          Subject C                 ON B.subject_seq = C.seq
INNER JOIN          Textbook Z                ON Z.seq = C.text_seq
INNER JOIN          CourseSubject D           ON C.seq = D.subject_seq
INNER JOIN          OpenSubject E             ON D.seq = E.coursesubject_seq
INNER JOIN          OpenCourse F              ON F.seq = E.opencourse_seq
INNER JOIN          Course G                  ON F.course_seq = G.seq
INNER JOIN          OpenCourseStudent H       On F.seq = H.opencourse_seq
INNER JOIN          Student I                 ON I.seq = H.student_seq
WHERE SYSDATE BETWEEN e.start_date AND e.end_date
ORDER BY a.seq;

-- 교육생 카운트
SELECT COUNT(*) FROM OpenCourseStudent;
