-- [3] 개설 과정 관리
-- [개설 과정 정보] -- 6개 
SELECT DISTINCT oc.seq AS ocseq, c.name AS cname, oc.start_date || ' ~ ' || oc.end_date AS period, cr.name AS crname, '과목 이름' || ' 외 ' || 2 || '과목' AS subject, t.name AS tname, 0 || '명' AS student_num 
FROM opencourse oc, Course c, Classroom cr, CourseSubject cs, Subject s, Teacher t
WHERE oc.classroom_seq = cr.seq AND oc.course_seq = c.seq AND c.seq = cs.course_seq AND cs.subject_seq = s.seq AND oc.teacher_seq = t.seq
AND oc.status = 1;
-- 과목 이름 ?Java Programming
SELECT s.name FROM Subject s, CourseSubject cs, Course c, OpenCourse oc
WHERE cs.subject_seq = s.seq AND cs.course_seq = c.seq AND oc.course_seq = c.seq
AND oc.course_seq = 2 AND ROWNUM = 1 -- ?
ORDER BY s.name DESC;
-- 해당 과목수 2 - 1
SELECT count(*) - 1
FROM OpenCourse oc, Course c, CourseSubject cs
WHERE oc.course_seq = c.seq AND c.seq = cs.course_seq
AND oc.seq = 3; -- ?
-- 등록인원수 0
SELECT count(*) 
FROM OpenCourse oc, OpenCourseStudent ocs
WHERE oc.seq = ocs.opencourse_seq
AND oc.seq = 3; -- ?

-- [3-2] 개설 과정 등록
-- [등록 가능한 과정 목록]
SELECT seq, name FROM Course
where status = 1
AND seq = 2; -- ?

-- [등록된 과목 목록]
SELECT rownum, s.name
FROM Course c, courseSubject cs, Subject s
WHERE c.seq = cs.course_seq AND cs.subject_seq = s.seq
AND c.seq = 2 AND s.status = 1;

-- [과정 기간] -- 1. N개월
-- 6개월 후 2019-11-01
SELECT to_char((SELECT add_months('2019-05-01', 6) FROM dual), 'yyyy-mm-dd') FROM dual; -- ?, ?

-- [과정 기간] -- 2. 직접 입력
SELECT to_char(to_date('2019-11-01'), 'yyyy-mm-dd') FROM dual; -- ?

-- [등록 가능한 강의실 목록]
SELECT seq, name, capacity FROM ClassRoom
WHERE status = 1
AND seq = 2; -- ?

-- [등록 가능한 교사 목록]
SELECT seq, name, ssn, tel FROM Teacher
WHERE status = 1
AND seq = 2; -- ?

-- [입력 정보 확인]
SELECT '?Python & Java 응용SW실무개발자 양성 과정' AS cname, -- ?
'2019-05-01' || ' ~ ' || '2019-11-01' AS period, -- ?, ?
'?제 1강의실' AS crname, -- ?
'?Java Programming' || ' 외 ' || 1 || '과목' AS subject, -- ?, ?
'박세인' AS tname -- ?
FROM dual;

-- 1. 개설 과정 등록
INSERT INTO OpenCourse (seq, course_seq, start_date, end_date, classroom_seq, teacher_seq) VALUES (opencourse_seq.nextVal, 2, '2019-05-01', '2019-11-01', 2, 2); -- ?, ?, ?, ?

-- [3-3] 개설 과정 정보 수정 -- 등록과 절차가 비슷
-- [수정 가능 개설 과정 정보]
SELECT DISTINCT oc.seq AS ocseq, c.name AS cname, oc.start_date || ' ~ ' || oc.end_date AS period, cr.name AS crname, '과목 이름' || ' 외 ' || 2 || '과목' AS subject, t.name AS tname, 0 || '명' AS student_num 
FROM opencourse oc, Course c, Classroom cr, CourseSubject cs, Subject s, Teacher t
WHERE oc.classroom_seq = cr.seq AND oc.course_seq = c.seq AND c.seq = cs.course_seq AND cs.subject_seq = s.seq AND oc.teacher_seq = t.seq
AND oc.status = 1;

-- 교육생이 등록되었는지 확인
SELECT count(student_seq) AS cnt FROM OpenCourseStudent WHERE opencourse_seq = ?) = 0;

-- [등록된 과목 목록]
SELECT rownum, s.name
FROM OpenCourse oc, Course c, courseSubject cs, Subject s
WHERE oc.course_seq = c.seq AND c.seq = cs.course_seq AND cs.subject_seq = s.seq
AND s.status = 1 AND oc.seq = 21; -- ?

-- [과정 기간] -- 1. N개월
-- 6개월 후 2019-11-01
SELECT to_char((SELECT add_months('2019-05-01', 6) FROM dual), 'yyyy-mm-dd') FROM dual; -- ?, ?

-- [과정 기간] -- 2. 직접 입력
SELECT to_char(to_date('2019-11-01'), 'yyyy-mm-dd') FROM dual; -- ?

-- [등록 가능한 강의실 목록]
SELECT seq, name, capacity FROM ClassRoom
WHERE status = 1
AND seq = 2; -- ?

-- [등록 가능한 교사 목록]
SELECT seq, name, ssn, tel FROM Teacher
WHERE status = 1
AND seq = 2; -- ?

-- [수정할 정보 확인]
SELECT '?Python & Java 응용SW실무개발자 양성 과정' AS cname, -- ?
'2019-05-01' || ' ~ ' || '2019-11-01' AS period, -- ?, ?
'?제 1강의실' AS crname, -- ?
'?Java Programming' || ' 외 ' || 1 || '과목' AS subject, -- ?, ?
'박세인' AS tname -- ?
FROM dual;

-- 1. 개설 과정 수정
UPDATE OpenCourse SET course_seq = 2, start_date = '2019-05-01', end_date = '2019-11-01', classroom_seq = 2, teacher_seq = 2 -- ?, ?, ?, ?, ?
WHERE seq = 21; -- ?

-- [3-4] 개설 과정 삭제
-- [삭제 가능 개설 과정 정보]
SELECT DISTINCT oc.seq AS ocseq, c.name AS cname, oc.start_date || ' ~ ' || oc.end_date AS period, cr.name AS crname, '과목 이름' || ' 외 ' || 2 || '과목' AS subject, t.name AS tname, 0 || '명' AS student_num 
FROM opencourse oc, Course c, Classroom cr, CourseSubject cs, Subject s, Teacher t
WHERE oc.classroom_seq = cr.seq AND oc.course_seq = c.seq AND c.seq = cs.course_seq AND cs.subject_seq = s.seq AND oc.teacher_seq = t.seq
AND oc.status = 1;

-- 1. 개설 과정 정보 삭제
-- 연결된 자식(os, ocs) 있을 경우
UPDATE OpenCourse SET status = 0 WHERE seq = 22; -- ?
-- 연결된 자식(os, ocs) 없을 경우 
DELETE FROM OpenCourse WHERE seq = 22;

-- [3-5] 개설 과정 별 과목 정보 보기
-- [개설 과정 정보]
SELECT DISTINCT oc.seq AS ocseq, c.name AS cname, oc.start_date || ' ~ ' || oc.end_date AS period, cr.name AS crname, '과목 이름' || ' 외 ' || 2 || '과목' AS subject, t.name AS tname, 0 || '명' AS student_num 
FROM opencourse oc, Course c, Classroom cr, CourseSubject cs, Subject s, Teacher t
WHERE oc.classroom_seq = cr.seq AND oc.course_seq = c.seq AND c.seq = cs.course_seq AND cs.subject_seq = s.seq AND oc.teacher_seq = t.seq
AND oc.status = 1;

-- [3-5-1] 개설 과정 별 과목 정보 보기 -- 7개 조인
-- [개설 과목 목록]
SELECT os.seq AS osseq, s.name AS sname, to_char(os.start_date, 'yyyy-mm-dd') || ' ~ ' || to_char(os.end_date, 'yyyy-mm-dd') AS period, tb.name AS tbname, t.name AS tname
FROM OpenSubject os, OpenCourse oc, Course c, CourseSubject cs, Subject s, Textbook tb, Teacher t
WHERE oc.course_seq = c.seq AND c.seq = cs.course_seq AND os.coursesubject_seq = cs.seq AND os.opencourse_seq(+) = oc.seq AND cs.subject_seq = s.seq AND s.text_seq = tb.seq AND t.seq = oc.teacher_seq
AND oc.status = 1;

-- [3-5-2] 개설 과목별 기간 등록하기
-- [등록 가능 개설 과정 정보]
SELECT DISTINCT oc.seq AS ocseq, c.name AS cname, to_char(oc.start_date, 'yyyy-mm-dd') || ' ~ ' || to_char(oc.end_date, 'yyyy-mm-dd') AS period, cr.name AS crname, '과목 이름' || ' 외 ' || 2 || '과목' AS subject, t.name AS tname, 0 || '명'
FROM OpenCourse oc, Classroom cr, Course c, Teacher t, CourseSubject cs, Subject s, OpenCourseStudent ocs
WHERE oc.course_seq = c.seq AND c.seq = cs.course_seq AND cs.subject_seq = s.seq AND oc.seq = ocs.opencourse_seq AND oc.classroom_seq = c.seq AND oc.teacher_seq = t.seq
AND oc.status = 1;

-- [개설 과목 정보]
SELECT s.seq AS sseq, s.name AS sname, s.text_seq AS stext_seq
FROM OpenCourse oc, Course c, CourseSubject cs, Subject s
WHERE oc.course_seq = c.seq AND c.seq = cs.course_seq AND s.seq = cs.subject_seq
AND oc.seq = 1; -- ?

-- 개설 과목 등록 -- ** 과목 수만큼 반복
INSERT INTO OpenSubject (seq, opencourse_seq, coursesubject_seq, start_date, end_date)
    VALUES (opensubject_seq.nextVal, 1, 1, '2019-05-01', '2019-05-28'); -- ?, ?
-- cs.seq 번호 출력 1
SELECT cs.seq FROM CourseSubject cs, Course c, OpenCourse oc
WHERE oc.course_Seq = c.seq AND c.seq = cs.course_seq
AND oc.seq = 1 AND cs.subject_seq = 1; -- ?

-- [3-5-3] 개설 과목 기간 정보 삭제하기
-- [삭제 가능 개설 과정 정보]
SELECT DISTINCT oc.seq AS ocseq, c.name AS cname, to_char(oc.start_date, 'yyyy-mm-dd') || ' ~ ' || to_char(oc.end_date, 'yyyy-mm-dd') AS period, cr.name AS crname, '과목 이름' || ' 외 ' || 2 || '과목' AS subject, t.name AS tname, 0 || '명'
FROM OpenCourse oc, Classroom cr, Course c, Teacher t, CourseSubject cs, Subject s, OpenCourseStudent ocs
WHERE oc.course_seq = c.seq AND c.seq = cs.course_seq AND cs.subject_seq = s.seq AND oc.seq = ocs.opencourse_seq AND oc.classroom_seq = c.seq AND oc.teacher_seq = t.seq
AND oc.status = 1 AND (개설과정 번호 1인 과정의 학생 수) = 0; -- ?
-- 개설과정 번호 1인 과정의 학생 수
SELECT count(*) FROM OpencourseStudent
WHERE opencourse_seq = 1; -- ?

-- [개설 과목 정보]
SELECT os.seq AS osseq, s.name AS sname, to_char(os.start_date, 'yyyy-mm-dd') || ' ~ ' || to_char(os.end_date, 'yyyy-mm-dd') AS period
FROM OpenSubject os, CourseSubject cs, Subject s
WHERE os.coursesubject_seq = cs.seq AND cs.subject_seq = s.seq
AND os.opencourse_seq = 1; -- ?

-- 1. 개설 과목 기간 정보 일괄 삭제
DELETE FROM OpenSubject WHERE opencourse_seq = 1; -- ?

-------------------****

-- [3-6] 개설 과정 별 수강생 정보 보기
-- [3-6-1] 개설 과정 별 수강생 정보 보기
-- [개설 과정 정보]
SELECT DISTINCT oc.seq AS ocseq, c.name AS cname, oc.start_date || ' ~ ' || oc.end_date AS period, cr.name AS crname, '과목 이름' || ' 외 ' || 2 || '과목' AS subject, t.name AS tname, 0 || '명' AS student_num 
FROM opencourse oc, Course c, Classroom cr, CourseSubject cs, Subject s, Teacher t
WHERE oc.classroom_seq = cr.seq AND oc.course_seq = c.seq AND c.seq = cs.course_seq AND cs.subject_seq = s.seq AND oc.teacher_seq = t.seq
AND oc.status = 1;

-- 1. 개설 과정 별 수강생 정보 보기
-- [교육생 목록]
SELECT s.seq AS sseq, s.name AS sname, s.ssn AS sssn, s.tel AS stel, s.regdate AS sregdate, s.major AS smajor, ocs.status AS ocsstatus
FROM OpenCourse oc, OpenCourseStudent ocs, Student s
WHERE ocs.opencourse_seq = oc.seq AND ocs.student_seq = s.seq
AND s.status = 1 AND oc.seq = 21;

-- [3-6-2] 교육생 등록
-- [등록 가능 개설 과정 정보]
SELECT DISTINCT oc.seq AS ocseq, c.name AS cname, oc.start_date || ' ~ ' || oc.end_date AS period, cr.name AS crname, '과목 이름' || ' 외 ' || 2 || '과목' AS subject, t.name AS tname, 0 || '명' AS student_num 
FROM opencourse oc, Course c, Classroom cr, CourseSubject cs, Subject s, Teacher t
WHERE oc.classroom_seq = cr.seq AND oc.course_seq = c.seq AND c.seq = cs.course_seq AND cs.subject_seq = s.seq AND oc.teacher_seq = t.seq
AND oc.status = 1 AND oc.start_date > SYSDATE;

-- [교육생 목록]
SELECT seq, name, ssn, tel, to_char(regdate, 'yyyy-mm-dd') AS regdate, major FROM Student
WHERE status = 1;

-- 1. 개설 과정별 교육생 등록
INSERT INTO OpenCourseStudent (seq, student_seq, opencourse_seq) VALUES (opencoursestudent_seq.nextVal, 2, 1); -- ?, ?

-- [3-6-3] 교육생 삭제
-- [삭제 가능 개설 과정 정보]
SELECT DISTINCT oc.seq AS ocseq, c.name AS cname, oc.start_date || ' ~ ' || oc.end_date AS period, cr.name AS crname, '과목 이름' || ' 외 ' || 2 || '과목' AS subject, t.name AS tname, 0 || '명' AS student_num 
FROM opencourse oc, Course c, Classroom cr, CourseSubject cs, Subject s, Teacher t
WHERE oc.classroom_seq = cr.seq AND oc.course_seq = c.seq AND c.seq = cs.course_seq AND cs.subject_seq = s.seq AND oc.teacher_seq = t.seq
AND oc.status = 1 AND oc.start_date > SYSDATE
ORDER BY period DESC;

-- 1. 개설 과정별 교육생 삭제
-- [해당 과정 교육생 목록]
SELECT s.seq AS sseq, s.name AS sname, s.ssn AS sssn, s.tel AS stel, to_char(s.regdate, 'yyyy-mm-dd') AS regdate, s.major AS smajor, ocs.status AS opsstatus
FROM Student s, OpenCourseStudent ocs
WHERE s.seq = ocs.student_seq
AND s.status = 1 AND ocs.opencourse_seq = 1 -- ?
ORDER BY regdate DESC;

-- 1. 개설 과정별 교육생 삭제
DELETE FROM OpenCourseStudent WHERE seq = 1; -- ?
-- 해당 ocs.seq 번호 1
SELECT seq FROM OpenCourseStudent
WHERE student_seq = 2 AND opencourse_seq = 1; -- ?, ?

-- [3-6-4] 교육 현황 정보 수정
-- [수정 가능 개설 과정 정보]
SELECT DISTINCT oc.seq AS ocseq, c.name AS cname, to_char(oc.start_date, 'yyyy-mm-dd') || ' ~ ' || to_char(oc.end_date, 'yyyy-mm-dd') AS period, cr.name AS crname, '과목 이름' || ' 외 ' || 2 || '과목' AS subject, t.name AS tname, 0 || '명' AS student_num 
FROM opencourse oc, Course c, Classroom cr, CourseSubject cs, Subject s, Teacher t
WHERE oc.classroom_seq = cr.seq AND oc.course_seq = c.seq AND c.seq = cs.course_seq AND cs.subject_seq = s.seq AND oc.teacher_seq = t.seq
AND oc.status = 1 AND oc.start_date < SYSDATE AND oc.end_date > SYSDATE
ORDER BY period DESC;

-- [해당 과정 교육생 목록]
SELECT s.seq AS sseq, s.name AS sname, s.ssn AS sssn, s.tel AS stel, to_char(s.regdate, 'yyyy-mm-dd') AS regdate, s.major AS smajor, ocs.status AS opsstatus
FROM Student s, OpenCourseStudent ocs
WHERE s.seq = ocs.student_seq
AND s.status = 1 AND ocs.opencourse_seq = 2 -- ?
ORDER BY regdate DESC;

-- 1. 개설 과정별 교육생의 교육 현황 정보 수정
UPDATE OpenCourseStudent SET status = '중도탈락'
WHERE student_seq = 2 AND opencourse_seq = 2; -- ?, ?
-- 교육진행 현황 > 진행중으로 정보 수정
UPDATE OpenCourseStudent SET status = NULL
WHERE student_seq = 2 AND opencourse_seq = 2; -- ?, ?

-- [4] 과정별 과목 관리
-- [과정 정보]
SELECT seq, name FROM Course
WHERE status = 1;

-- [4-1] 과목 등록
-- [과목 정보]
SELECT cs.seq AS csseq, s.name AS sname, tb.name AS tbname
FROM Subject s, CourseSubject cs, Textbook tb
WHERE s.seq = cs.subject_seq AND tb.seq(+) = s.text_seq
AND cs.course_seq = 1; -- ?

-- 1. 과목 등록
INSERT INTO CourseSubject (seq, course_seq, subject_seq) VALUES (coursesubject_seq.nextVal, 1, 2); -- ?, ?

-- [4-2] 과목 삭제
-- [과목 정보]
SELECT cs.seq AS csseq, s.name AS sname, tb.name AS tbname
FROM Subject s, CourseSubject cs, Textbook tb
WHERE s.seq = cs.subject_seq AND tb.seq(+) = s.text_seq
AND cs.course_seq = 1 AND s.status = 1; -- ?

-- 1. 과목 삭제
DELETE FROM CourseSubject WHERE seq = 3; -- ?

-- [5] 과목별 교재 관리
-- [과목 정보] 
SELECT s.seq AS sseq, s.name AS sname, tb.name AS tbname
FROM Subject s, Textbook tb
WHERE tb.seq(+) = s.text_seq
AND s.status = 1;

-- [5-1] 교재 등록
-- [교재 정보]
SELECT seq, name FROM Textbook
WHERE status = 1;

-- 1. 교재 등록
UPDATE Subject SET text_seq = 1 -- ?
WHERE seq = 1; -- ?

-- [5-2] 교재 삭제
UPDATE Subject SET text_seq = NULL
WHERE seq = 1; -- ?












