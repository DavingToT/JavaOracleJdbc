-- [3-1] 과정 등록 및 삭제
-- [과정 정보] 
SELECT seq, name FROM Course WHERE status = 1;

-- [3-1-1] 과정 검색
SELECT seq, name FROM Course WHERE lower(name) LIKE '%' || lower(?) || '%' AND status = 1 ORDER BY seq;

-- [3-1-2] 과정 등록
INSERT INTO Course (seq, name) VALUES (COURSE_SEQ.nextval, '?Python & Java 응용SW실무개발자  양성 과정'); -- **

-- 과정 재등록
UPDATE Course SET status = 1 WHERE seq = ? AND status = 0;

-- [3-1-3] 과정명 수정 
UPDATE Course SET name = '?파이썬과 자바 응용SW실무개발자 양성 과정' 
    WHERE seq = 3; -- ?

-- [3-1-4] 과정 삭제
UPDATE Course SET status = 0 WHERE seq = 3; -- ?

-- [3-2] 과목 CRUD
-- [과목 정보] 
SELECT sseq, sname, tname FROM vwSubjectTextbook
    WHERE sstatus = 1
    ORDER BY sseq;

-- [3-2-1] 과목 검색
SELECT sseq, sname, tname FROM vwSubjectTextbook
    WHERE lower(sname) LIKE '%' || lower(?) || '%' AND sstatus = 1
    ORDER BY sseq;

-- [3-2-2] 과목 등록 -- 1. 교재도 등록
INSERT INTO Subject (seq, name, text_seq) VALUES (subject_seq.nextVal, '?CSS3', 1); -- ? 

-- [등록 가능한 교재 목록]
SELECT seq, name, publisher, author FROM Textbook WHERE status = 1 ORDER BY seq;

-- [3-2-2] 과목 등록 -- 2. 교재 미등록
INSERT INTO Subject (seq, name, textbook_seq) VALUES (subject_seq.nextVal, '?Java Programming', ?);

-- 과목 재등록
UPDATE Subject SET status = 1 WHERE seq = ? AND status = 0;


-- [3-2-3] 과목 수정
-- [과목 정보]
SELECT s.seq AS sseq, s.name AS sname, t.name AS tname FROM Subject s, Textbook t
    WHERE s.text_seq = t.seq(+)
    AND s.status = 1;

-- [수정 가능한 교재 목록]
SELECT tseq, tname, tauthor, tpublisher FROM vwSubjectTextbook WHERE sseq = ? AND tstatus = 1; 

-- 1. 과목 수정
UPDATE Subject SET name = ?, text_seq = ? WHERE seq = ?;

UPDATE Subject SET text_seq = 1 WHERE seq = 1; -- ?, ?

-- [3-2-4] 과목 삭제
UPDATE Subject SET status = 0 WHERE seq = 2; -- ?

-- [3-3] 강의실 CRUD
-- [강의실 정보] 
SELECT seq, name, capacity FROM Classroom WHERE lower(name) LIKE '%' || lower(?) || '%' AND status = 1 ORDER BY seq;

-- [3-3-1] 강의실 검색
SELECT seq, name, capacity FROM Classroom WHERE name LIKE '%' || ? || '%' AND status = 1 ORDER BY seq;

-- [3-3-2] 강의실 등록
INSERT INTO Classroom (seq, name, capacity) VALUES (classroom_seq.nextVal, '?제 1강의실', 30); -- ?

-- 강의실 재등록
UPDATE Classroom SET status = 1 WHERE seq = ? AND status = 0;

-- [3-3-3] 강의실 삭제
UPDATE Classroom SET status = 0 WHERE seq = 2; -- ?

-- [3-4] 교재 CRUD
-- [교재 정보] 
SELECT seq, name, author, publisher FROM Textbook WHERE status = 1 ORDER BY seq;

-- [3-4-1] 교재 검색
SELECT seq, name, author, publisher FROM Textbook WHERE lower(name) LIKE '%' || lower(?) || '%' AND status = 1 ORDER BY seq;

-- [3-4-2] 교재 등록
INSERT INTO Textbook (seq, name, publisher, author) VALUES
    (textbook_seq.nextVal, '?Do it! 자바 프로그래밍 입문', '?이지스퍼블리싱', '?박은종');

-- 교재 재등록
UPDATE Textbook SET status = 1 WHERE seq = ? AND status = 0;

-- [3-4-3] 교재 정보 수정 -- 1. 교재명 수정
UPDATE Textbook SET name = '?생활코딩! HTML+CSS+자바스크립트'
    WHERE seq = 2; -- ?
UPDATE Textbook SET author = '?이고잉'
    WHERE seq = 2; -- ?
UPDATE Textbook SET publisher = '?위키북스'
    WHERE seq = 2; -- ?
    
-- [3-4-4] 교재 삭제
UPDATE Textbook SET status = 0 WHERE seq = 2; -- ?



