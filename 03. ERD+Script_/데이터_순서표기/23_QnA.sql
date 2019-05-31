-- Q n A
CREATE TABLE QnA
(
    seq number primary key,
    opencoursestudent_seq number
        references OpenCourseStudent(seq) not null,
    teacher varchar2(30) not null,
    question_title varchar2(100),
    question_content varchar2(2000) not null,
    question_date date,
    answer_title varchar2(100),
    answer_content varchar2(2000),
    answer_date date
);
    --to_date('2019-01-03' , 'yyyy-mm-dd')
SELECT * FROM QNA;
    
DELETE FROM QNA WHERE seq BETWEEN 1 AND 1000;

INSERT INTO QnA (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (1, '김동성', 1,  '선생님 마음이 아프네요' , '요즘 봄을 타서 집에가고싶네요',to_date('2019-01-03' , 'yyyy-mm-dd'), '나도 마음이아프다', '나도 집에가고 싶다.',to_date('2019-01-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (2, '김동성', 2, '선생님 목소리가 거슬립니다' , '조금 작게 말해주세요',to_date('2019-01-03' , 'yyyy-mm-dd'), '알겠다.', '조금 작게 말하마',to_date('2019-01-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (3, '김동성', 3, '오늘 배운 java에서 생각이 잘안납니다.' , '오늘 배운 if문좀 다시 설명해 주세요.',to_date('2019-01-03' , 'yyyy-mm-dd'), '내일 아침에 일찍나오세요', '다시 설명해 드리겠습니다.',to_date('2019-01-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (4, '김동성', 4, '선생님' , '선생님이 너무 예뻐서 집중이 안됩니다.',to_date('2019-01-04' , 'yyyy-mm-dd'), '답변', '공부 열심히 하세요~',to_date('2019-01-04' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (5, '김동성', 5, '선생님' , '머리가 이상해서 집중이 안되요',to_date('2019-01-05' , 'yyyy-mm-dd'), '답변', '공부에 집중하세요.',to_date('2019-01-06' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (6, '김동성', 6, '오늘 배운 쿼리가 이해가 안가요' , '다시 설명해주세요',to_date('2019-01-07' , 'yyyy-mm-dd'), '오늘 쿼리는', '내일 끝나고 남으시면 다시 알려드릴께요.',to_date('2019-01-07' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (7, '김동성', 7, '오늘 쿼리 배울때 너무 대충배운것같습니다.' , '내일 다시 수업 가능하세요?',to_date('2019-01-07' , 'yyyy-mm-dd'), '죄송합니다.', '내일 다시 수업해드리겠습니다.',to_date('2019-01-08' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (8, '김동성', 8, '오늘 배운게 이해가안가요', '오늘 자바 배운게 이해가안갑니다.', to_date('2019-01-03' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요',to_date('2019-01-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (9, '김동성', 9, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-01-09' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요', to_date('2019-01-10' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (10, '김동성', 10, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-01-10' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요.',to_date('2019-01-11' , 'yyyy-mm-dd'));

--최다빈

INSERT INTO Qna (seq, teacher, opencoursestudent_seq, question_title, question_content, question_date, answer_title, answer_content, answer_date)
    VALUES (11, '최다빈', 11, '선생님 마음이 아프네요' , '요즘 봄을 타서 집에가고싶네요',to_date('2019-01-13' , 'yyyy-mm-dd'), '나도 마음이아프다', '나도 집에가고 싶다.',to_date('2019-01-13' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (12, '최다빈', 12, '선생님 목소리가 너무 멋있어요' , '사랑합니다',to_date('2019-01-14' , 'yyyy-mm-dd'), '알겠다.', '나도사랑해',to_date('2019-01-14' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (13, '최다빈', 13, '오늘 배운 java에서 생각이 잘안납니다.' , '오늘 배운 if문좀 다시 설명해 주세요.',to_date('2019-01-15' , 'yyyy-mm-dd'), '내일 아침에 일찍나오세요', '다시 설명해 드리겠습니다.',to_date('2019-01-15' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (14, '최다빈', 14, '선생님' , '선생님이 너무 잘생겨서 집중이 안됩니다.',to_date('2019-01-16' , 'yyyy-mm-dd'), '답변', '공부 열심히 하세요~',to_date('2019-01-16' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (15, '최다빈', 15, '선생님' , '머리가 이상해서 집중이 안되요',to_date('2019-01-18' , 'yyyy-mm-dd'), '답변', '공부에 집중하세요.',to_date('2019-01-18' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (16, '최다빈', 16, '오늘 배운 쿼리가 이해가 안가요' , '다시 설명해주세요',to_date('2019-01-19' , 'yyyy-mm-dd'), '오늘 쿼리는', '내일 끝나고 남으시면 다시 알려드릴께요.',to_date('2019-01-19' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (17, '최다빈', 17, '오늘 쿼리 배울때 너무 대충배운것같습니다.' , '내일 다시 수업 가능하세요?',to_date('2019-01-20' , 'yyyy-mm-dd'), '죄송합니다.', '내일 다시 수업해드리겠습니다.',to_date('2019-01-20' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (18, '최다빈', 18, '오늘 배운게 이해가안가요', '오늘 자바 배운게 이해가안갑니다.', to_date('2019-01-23' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요',to_date('2019-01-24' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (19, '최다빈', 19, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-01-25' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요', to_date('2019-01-26' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (20, '최다빈', 20, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-01-27' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요.',to_date('2019-01-27' , 'yyyy-mm-dd'));

--전지현

INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (21, '전지현', 21, '선생님 마음이 아프네요' , '요즘 봄을 타서 집에가고싶네요',to_date('2019-02-03' , 'yyyy-mm-dd'), '나도 마음이아프다', '나도 집에가고 싶다.',to_date('2019-02-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (22, '전지현', 22, '선생님 목소리가 거슬립니다' , '조금 작게 말해주세요',to_date('2019-02-03' , 'yyyy-mm-dd'), '알겠다.', '조금 작게 말하마',to_date('2019-02-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (23, '전지현', 23, '오늘 배운 java에서 생각이 잘안납니다.' , '오늘 배운 if문좀 다시 설명해 주세요.',to_date('2019-01-03' , 'yyyy-mm-dd'), '내일 아침에 일찍나오세요', '다시 설명해 드리겠습니다.',to_date('2019-01-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (24, '전지현', 24, '선생님' , '선생님이 너무 예뻐서 집중이 안됩니다.',to_date('2019-02-03' , 'yyyy-mm-dd'), '답변', '공부 열심히 하세요~',to_date('2019-02-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (25, '전지현', 25, '선생님' , '머리가 이상해서 집중이 안되요',to_date('2019-02-10' , 'yyyy-mm-dd'), '답변', '공부에 집중하세요.',to_date('2019-02-11' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (26, '전지현', 26, '오늘 배운 쿼리가 이해가 안가요' , '다시 설명해주세요',to_date('2019-02-12' , 'yyyy-mm-dd'), '오늘 쿼리는', '내일 끝나고 남으시면 다시 알려드릴께요.',to_date('2019-02-13' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (27, '전지현', 27, '오늘 쿼리 배울때 너무 대충배운것같습니다.' , '내일 다시 수업 가능하세요?',to_date('2019-02-14' , 'yyyy-mm-dd'), '죄송합니다.', '내일 다시 수업해드리겠습니다.',to_date('2019-02-14' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (28, '전지현', 28, '오늘 배운게 이해가안가요', '오늘 자바 배운게 이해가안갑니다.', to_date('2019-02-15' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요',to_date('2019-02-15' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (29, '전지현', 29, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-15' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요', to_date('2019-02-15' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (30, '전지현', 30, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-15' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요.',to_date('2019-02-15' , 'yyyy-mm-dd'));

    
--한예슬

INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (31, '한예슬', 31, '선생님 마음이 아프네요' , '요즘 봄을 타서 집에가고싶네요',to_date('2019-02-16' , 'yyyy-mm-dd'), '나도 마음이아프다', '나도 집에가고 싶다.',to_date('2019-02-16' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (32, '한예슬', 32, '선생님 목소리가 거슬립니다' , '조금 작게 말해주세요',to_date('2019-02-16' , 'yyyy-mm-dd'), '알겠다.', '조금 작게 말하마',to_date('2019-02-16' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (33, '한예슬', 33, '오늘 배운 java에서 생각이 잘안납니다.' , '오늘 배운 if문좀 다시 설명해 주세요.',to_date('2019-02-16' , 'yyyy-mm-dd'), '내일 아침에 일찍나오세요', '다시 설명해 드리겠습니다.',to_date('2019-02-16' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (34, '한예슬', 34, '선생님' , '선생님이 너무 예뻐서 집중이 안됩니다.',to_date('2019-02-17' , 'yyyy-mm-dd'), '답변', '공부 열심히 하세요~',to_date('2019-02-17' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (35, '한예슬', 35, '선생님' , '머리가 이상해서 집중이 안되요',to_date('2019-02-17' , 'yyyy-mm-dd'), '답변', '공부에 집중하세요.',to_date('2019-02-17' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (36, '한예슬', 36, '오늘 배운 쿼리가 이해가 안가요' , '다시 설명해주세요',to_date('2019-02-18' , 'yyyy-mm-dd'), '오늘 쿼리는', '내일 끝나고 남으시면 다시 알려드릴께요.',to_date('2019-02-18' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (37, '한예슬', 37, '오늘 쿼리 배울때 너무 대충배운것같습니다.' , '내일 다시 수업 가능하세요?',to_date('2019-02-19' , 'yyyy-mm-dd'), '죄송합니다.', '내일 다시 수업해드리겠습니다.',to_date('2019-02-19' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (38, '한예슬', 38, '오늘 배운게 이해가안가요', '오늘 자바 배운게 이해가안갑니다.', to_date('2019-01-03' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요',to_date('2019-01-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (39, '한예슬', 39, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-19' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요', to_date('2019-02-19' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (40, '한예슬', 40, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-19' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요.',to_date('2019-02-20' , 'yyyy-mm-dd'));
   
    
--임주엽

INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (41, '임주엽', 41, '선생님 마음이 아프네요' , '요즘 봄을 타서 집에가고싶네요',to_date('2019-02-20' , 'yyyy-mm-dd'), '나도 마음이아프다', '나도 집에가고 싶다.',to_date('2019-02-20' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (42, '임주엽', 42, '선생님 목소리가 거슬립니다' , '조금 작게 말해주세요',to_date('2019-02-20' , 'yyyy-mm-dd'), '알겠다.', '조금 작게 말하마',to_date('2019-02-20' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (43, '임주엽', 43, '오늘 배운 java에서 생각이 잘안납니다.' , '오늘 배운 if문좀 다시 설명해 주세요.',to_date('2019-02-21' , 'yyyy-mm-dd'), '내일 아침에 일찍나오세요', '다시 설명해 드리겠습니다.',to_date('2019-02-21' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (44, '임주엽', 44, '선생님' , '선생님이 너무 예뻐서 집중이 안됩니다.',to_date('2019-02-21' , 'yyyy-mm-dd'), '답변', '공부 열심히 하세요~',to_date('2019-02-21' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (45, '임주엽', 45, '선생님' , '머리가 이상해서 집중이 안되요',to_date('2019-02-21' , 'yyyy-mm-dd'), '답변', '공부에 집중하세요.',to_date('2019-02-22' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (46, '임주엽', 46, '오늘 배운 쿼리가 이해가 안가요' , '다시 설명해주세요',to_date('2019-02-22' , 'yyyy-mm-dd'), '오늘 쿼리는', '내일 끝나고 남으시면 다시 알려드릴께요.',to_date('2019-02-22' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (47, '임주엽', 47, '오늘 쿼리 배울때 너무 대충배운것같습니다.' , '내일 다시 수업 가능하세요?',to_date('2019-02-22' , 'yyyy-mm-dd'), '죄송합니다.', '내일 다시 수업해드리겠습니다.',to_date('2019-02-23' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (48, '임주엽', 48, '오늘 배운게 이해가안가요', '오늘 자바 배운게 이해가안갑니다.', to_date('2019-01-03' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요',to_date('2019-01-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (49, '임주엽', 49, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-23' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요', to_date('2019-02-23' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (50, '임주엽', 50, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-23' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요.',to_date('2019-02-23' , 'yyyy-mm-dd'));
  
    

--손흥민------------------------------

INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (51, '손흥민', 51, '선생님 마음이 아프네요' , '요즘 봄을 타서 집에가고싶네요',to_date('2019-02-03' , 'yyyy-mm-dd'), '나도 마음이아프다', '나도 집에가고 싶다.',to_date('2019-02-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (52, '손흥민', 52, '선생님 목소리가 거슬립니다' , '조금 작게 말해주세요',to_date('2019-02-03' , 'yyyy-mm-dd'), '알겠다.', '조금 작게 말하마',to_date('2019-02-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (53, '손흥민', 53, '오늘 배운 java에서 생각이 잘안납니다.' , '오늘 배운 if문좀 다시 설명해 주세요.',to_date('2019-01-03' , 'yyyy-mm-dd'), '내일 아침에 일찍나오세요', '다시 설명해 드리겠습니다.',to_date('2019-01-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (54, '손흥민', 54, '선생님' , '선생님이 너무 예뻐서 집중이 안됩니다.',to_date('2019-02-03' , 'yyyy-mm-dd'), '답변', '공부 열심히 하세요~',to_date('2019-02-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (55, '손흥민', 55, '선생님' , '머리가 이상해서 집중이 안되요',to_date('2019-02-10' , 'yyyy-mm-dd'), '답변', '공부에 집중하세요.',to_date('2019-02-11' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (56, '손흥민', 56, '오늘 배운 쿼리가 이해가 안가요' , '다시 설명해주세요',to_date('2019-02-12' , 'yyyy-mm-dd'), '오늘 쿼리는', '내일 끝나고 남으시면 다시 알려드릴께요.',to_date('2019-02-13' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (57, '손흥민', 57, '오늘 쿼리 배울때 너무 대충배운것같습니다.' , '내일 다시 수업 가능하세요?',to_date('2019-02-14' , 'yyyy-mm-dd'), '죄송합니다.', '내일 다시 수업해드리겠습니다.',to_date('2019-02-14' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (58, '손흥민', 58, '오늘 배운게 이해가안가요', '오늘 자바 배운게 이해가안갑니다.', to_date('2019-02-15' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요',to_date('2019-02-15' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (59, '손흥민', 59, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-15' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요', to_date('2019-02-15' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (60, '손흥민', 60, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-15' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요.',to_date('2019-02-15' , 'yyyy-mm-dd'));

    
--김성진
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (61, '김성진', 61, '선생님 마음이 아프네요' , '요즘 봄을 타서 집에가고싶네요',to_date('2019-02-20' , 'yyyy-mm-dd'), '나도 마음이아프다', '나도 집에가고 싶다.',to_date('2019-02-20' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (62, '김성진', 62, '선생님 목소리가 거슬립니다' , '조금 작게 말해주세요',to_date('2019-02-20' , 'yyyy-mm-dd'), '알겠다.', '조금 작게 말하마',to_date('2019-02-20' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (63, '김성진', 63, '오늘 배운 java에서 생각이 잘안납니다.' , '오늘 배운 if문좀 다시 설명해 주세요.',to_date('2019-02-21' , 'yyyy-mm-dd'), '내일 아침에 일찍나오세요', '다시 설명해 드리겠습니다.',to_date('2019-02-21' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (64, '김성진', 64, '선생님' , '선생님이 너무 예뻐서 집중이 안됩니다.',to_date('2019-02-21' , 'yyyy-mm-dd'), '답변', '공부 열심히 하세요~',to_date('2019-02-21' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (65, '김성진', 65, '선생님' , '머리가 이상해서 집중이 안되요',to_date('2019-02-21' , 'yyyy-mm-dd'), '답변', '공부에 집중하세요.',to_date('2019-02-22' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (66, '김성진', 66, '오늘 배운 쿼리가 이해가 안가요' , '다시 설명해주세요',to_date('2019-02-22' , 'yyyy-mm-dd'), '오늘 쿼리는', '내일 끝나고 남으시면 다시 알려드릴께요.',to_date('2019-02-22' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (67, '김성진', 67, '오늘 쿼리 배울때 너무 대충배운것같습니다.' , '내일 다시 수업 가능하세요?',to_date('2019-02-22' , 'yyyy-mm-dd'), '죄송합니다.', '내일 다시 수업해드리겠습니다.',to_date('2019-02-23' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (68, '김성진', 68, '오늘 배운게 이해가안가요', '오늘 자바 배운게 이해가안갑니다.', to_date('2019-01-03' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요',to_date('2019-01-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (69, '김성진', 69, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-23' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요', to_date('2019-02-23' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (70, '김성진', 70, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-23' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요.',to_date('2019-02-23' , 'yyyy-mm-dd'));
  
       
--손담비

INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (71, '손담비', 71, '선생님 마음이 아프네요' , '요즘 봄을 타서 집에가고싶네요',to_date('2019-02-03' , 'yyyy-mm-dd'), '나도 마음이아프다', '나도 집에가고 싶다.',to_date('2019-02-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (72, '손담비', 72, '선생님 목소리가 거슬립니다' , '조금 작게 말해주세요',to_date('2019-02-03' , 'yyyy-mm-dd'), '알겠다.', '조금 작게 말하마',to_date('2019-02-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (73, '손담비', 73, '오늘 배운 java에서 생각이 잘안납니다.' , '오늘 배운 if문좀 다시 설명해 주세요.',to_date('2019-01-03' , 'yyyy-mm-dd'), '내일 아침에 일찍나오세요', '다시 설명해 드리겠습니다.',to_date('2019-01-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (74, '손담비', 74, '선생님' , '선생님이 너무 예뻐서 집중이 안됩니다.',to_date('2019-02-03' , 'yyyy-mm-dd'), '답변', '공부 열심히 하세요~',to_date('2019-02-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (75, '손담비', 75, '선생님' , '머리가 이상해서 집중이 안되요',to_date('2019-02-10' , 'yyyy-mm-dd'), '답변', '공부에 집중하세요.',to_date('2019-02-11' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (76, '손담비', 76, '오늘 배운 쿼리가 이해가 안가요' , '다시 설명해주세요',to_date('2019-02-12' , 'yyyy-mm-dd'), '오늘 쿼리는', '내일 끝나고 남으시면 다시 알려드릴께요.',to_date('2019-02-13' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (77, '손담비', 77, '오늘 쿼리 배울때 너무 대충배운것같습니다.' , '내일 다시 수업 가능하세요?',to_date('2019-02-14' , 'yyyy-mm-dd'), '죄송합니다.', '내일 다시 수업해드리겠습니다.',to_date('2019-02-14' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (78, '손담비', 78, '오늘 배운게 이해가안가요', '오늘 자바 배운게 이해가안갑니다.', to_date('2019-02-15' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요',to_date('2019-02-15' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (79, '손담비', 79, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-15' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요', to_date('2019-02-15' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (80, '손담비', 80, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-15' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요.',to_date('2019-02-15' , 'yyyy-mm-dd'));

    
     
--호날두

INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (81, '호날두', 81, '선생님 마음이 아프네요' , '요즘 봄을 타서 집에가고싶네요',to_date('2019-02-20' , 'yyyy-mm-dd'), '나도 마음이아프다', '나도 집에가고 싶다.',to_date('2019-02-20' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (82, '호날두', 82, '선생님 목소리가 거슬립니다' , '조금 작게 말해주세요',to_date('2019-02-20' , 'yyyy-mm-dd'), '알겠다.', '조금 작게 말하마',to_date('2019-02-20' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (83, '호날두', 83, '오늘 배운 java에서 생각이 잘안납니다.' , '오늘 배운 if문좀 다시 설명해 주세요.',to_date('2019-02-21' , 'yyyy-mm-dd'), '내일 아침에 일찍나오세요', '다시 설명해 드리겠습니다.',to_date('2019-02-21' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (84, '호날두', 84, '선생님' , '선생님이 너무 예뻐서 집중이 안됩니다.',to_date('2019-02-21' , 'yyyy-mm-dd'), '답변', '공부 열심히 하세요~',to_date('2019-02-21' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (85, '호날두', 85, '선생님' , '머리가 이상해서 집중이 안되요',to_date('2019-02-21' , 'yyyy-mm-dd'), '답변', '공부에 집중하세요.',to_date('2019-02-22' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (86, '호날두', 86, '오늘 배운 쿼리가 이해가 안가요' , '다시 설명해주세요',to_date('2019-02-22' , 'yyyy-mm-dd'), '오늘 쿼리는', '내일 끝나고 남으시면 다시 알려드릴께요.',to_date('2019-02-22' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (87, '호날두', 87, '오늘 쿼리 배울때 너무 대충배운것같습니다.' , '내일 다시 수업 가능하세요?',to_date('2019-02-22' , 'yyyy-mm-dd'), '죄송합니다.', '내일 다시 수업해드리겠습니다.',to_date('2019-02-23' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (88, '호날두', 88, '오늘 배운게 이해가안가요', '오늘 자바 배운게 이해가안갑니다.', to_date('2019-01-03' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요',to_date('2019-01-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (89, '호날두', 89, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-23' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요', to_date('2019-02-23' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (90, '호날두', 90, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-23' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요.',to_date('2019-02-23' , 'yyyy-mm-dd'));
  

--김메시
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (91, '김메시', 91, '선생님 마음이 아프네요' , '요즘 봄을 타서 집에가고싶네요',to_date('2019-02-20' , 'yyyy-mm-dd'), '나도 마음이아프다', '나도 집에가고 싶다.',to_date('2019-02-20' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (92, '김메시', 92, '선생님 목소리가 거슬립니다' , '조금 작게 말해주세요',to_date('2019-02-20' , 'yyyy-mm-dd'), '알겠다.', '조금 작게 말하마',to_date('2019-02-20' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (93, '김메시', 93, '오늘 배운 java에서 생각이 잘안납니다.' , '오늘 배운 if문좀 다시 설명해 주세요.',to_date('2019-02-21' , 'yyyy-mm-dd'), '내일 아침에 일찍나오세요', '다시 설명해 드리겠습니다.',to_date('2019-02-21' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (94, '김메시', 94, '선생님' , '선생님이 너무 예뻐서 집중이 안됩니다.',to_date('2019-02-21' , 'yyyy-mm-dd'), '답변', '공부 열심히 하세요~',to_date('2019-02-21' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (95, '김메시', 95, '선생님' , '머리가 이상해서 집중이 안되요',to_date('2019-02-21' , 'yyyy-mm-dd'), '답변', '공부에 집중하세요.',to_date('2019-02-22' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (96, '김메시', 96, '오늘 배운 쿼리가 이해가 안가요' , '다시 설명해주세요',to_date('2019-02-22' , 'yyyy-mm-dd'), '오늘 쿼리는', '내일 끝나고 남으시면 다시 알려드릴께요.',to_date('2019-02-22' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (97, '김메시', 97, '오늘 쿼리 배울때 너무 대충배운것같습니다.' , '내일 다시 수업 가능하세요?',to_date('2019-02-22' , 'yyyy-mm-dd'), '죄송합니다.', '내일 다시 수업해드리겠습니다.',to_date('2019-02-23' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (98, '김메시', 98, '오늘 배운게 이해가안가요', '오늘 자바 배운게 이해가안갑니다.', to_date('2019-01-03' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요',to_date('2019-01-03' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (99, '김메시', 99, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-23' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요', to_date('2019-02-23' , 'yyyy-mm-dd'));
INSERT INTO Qna (seq,teacher,opencoursestudent_seq,question_title,question_content,question_date,answer_title, answer_content, answer_date)
    VALUES (100, '김메시', 100, '오늘 배운게 이해가안가요' , '오늘 자바 배운게 이해가안갑니다.',to_date('2019-02-23' , 'yyyy-mm-dd'), '학생', '책 220페이지를 더 읽어보세요.',to_date('2019-02-23' , 'yyyy-mm-dd'));
  