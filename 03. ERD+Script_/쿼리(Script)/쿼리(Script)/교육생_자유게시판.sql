
--1. 자유게시판
/* 
교육생 테이블에서 학생번호를 가지고 자유게시판
    교육생 번호와 작성자 join
*/
select * from Student;

select 
    Board.seq as 글번호,
    Student.name as 작성자,
    Board.regdate as 날짜,
    Board.title as 제목,
    Board.content as 내용  
    
from Student 
    inner join  Board on student.seq = Board.student_seq;

--------------------------------------------

-- 질문 작성 -- 
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (10000, 1, '테스트', '테스트', to_date('2019-02-01' , 'yyyy-mm-dd'));

-- 질문 글 삭제 -- 
DELETE FROM Board WHERE seq = 글번호;

-- 게시 글 수정 --

UPDATE Board SET title = '수정할 제목' WHERE seq = 글번호;
UPDATE Board SET content = '수정할 내용' WHERE seq = 글번호;




commit;