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