
--QnA 
/*    
교육생T , 개설과정별 교육생T , 개설과정T ,  교사T
*/              
-- 질문날짜 , 질문제목 , 질문내용

CREATE OR REPLACE VIEW vwStudentQna
AS
select 
    student.name as 학생이름,
    QnA.question_date as 질문날짜,
    QnA.question_title as 질문제목,
    QnA.question_content as 질문내용,
    teacher.name as 교사이름,
    qna.answer_date as 답변날짜,
    qna.answer_title as 답변제목,
    qna.answer_content as 답변내용
from student 

    inner join OpenCourseStudent    on student.seq = OpenCourseStudent.student_seq
    inner join OpenCourse           on OpenCourseStudent.opencourse_seq = OpenCourse.seq
    inner join Teacher              on OpenCourse.teacher_seq = Teacher.seq
    inner join QnA                  on OpenCourseStudent.seq = QnA.OpenCourseStudent_seq
order by QnA.question_date;
----------------------------------------------------------------------------------------- 

SELECT * FROM qna order by seq;


CREATE TABLE QnA
(
    seq number primary key,
    opencoursestudent_seq number
        references OpenCourseStudent(seq) not null,
    teacher varchar2(30) not null,
    question_title varchar2(100),
    question_content varchar2(2000),
    question_date date,
    answer_title varchar2(100),
    answer_content varchar2(2000),
    answer_date date
);

--- 1:1 교육생 QNA 작성
INSERT INTO QnA (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date)
    VALUES (101, '테스트', 1,  '테스트' , '테스트', to_date('2019-01-03' , 'yyyy-mm-dd'));
	
    
--- 1:1 교육생 QNA 수정
UPDATE QnA SET question_title = '수정할 제목', question_content = '수정할 내용' WHERE seq = 101;



--- 1:1 교사 QNA 삭제
DELETE FROM student WHERE seq = 게시판 글 번호;


