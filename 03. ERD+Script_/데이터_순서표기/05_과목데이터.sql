-- 과목 데이터
drop table Subject;


CREATE TABLE Subject
(
    seq number primary key,
    name varchar2(100) not null unique,
    text_seq number
        references Textbook(seq),
    status number default 1 not null
);

select * from subject;


INSERT INTO subject VALUES (1, 'Java Programming', 1, 1);
INSERT INTO subject VALUES (2, 'Database', 2, 1);
INSERT INTO subject VALUES (3, 'Front-end', 3, 1);
INSERT INTO subject VALUES (4, 'Oracle DBMS', 4, 1);
INSERT INTO subject VALUES (5, 'html5', 5, 1);
INSERT INTO subject VALUES (6, 'CSS3', 5, 1);
INSERT INTO subject VALUES (7, 'Javascript', 6, 1);
INSERT INTO subject VALUES (8, 'jQuery', 7, 1);
INSERT INTO subject VALUES (9, 'node.js', 8, 1);
INSERT INTO subject VALUES (10, 'express', 9, 1);
INSERT INTO subject VALUES (11, 'Spring 기반 Framework', 10, 1);
INSERT INTO subject VALUES (12, 'bootstrap 및 반응형 웹 기법', 11, 1);
INSERT INTO subject VALUES (13, '인공지능', 11, 1);
INSERT INTO subject VALUES (14, 'myBATIS', 12, 1);
INSERT INTO subject VALUES (15, 'Spring', 12, 1);
INSERT INTO subject VALUES (16, 'Python', 13, 1);
INSERT INTO subject VALUES (17, '코틀린 OOP', 14, 1);
INSERT INTO subject VALUES (18, 'R', 14, 1);
INSERT INTO subject VALUES (19, 'hadoop', 15, 1);
INSERT INTO subject VALUES (20, 'Linux', 16, 1);
INSERT INTO subject VALUES (21, '정보능력', 2, 1);

