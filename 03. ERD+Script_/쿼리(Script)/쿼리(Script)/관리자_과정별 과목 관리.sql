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