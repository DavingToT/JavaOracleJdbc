CREATE TABLE Teacher
(
    seq number primary key,
    name varchar2(30) not null,
    ssn varchar2(30) not null,
    tel varchar2(30),
    status number default 1 not null
);

SELECT * FROM teacher;
    
    
INSERT INTO Teacher (seq, name,ssn, tel)
    VALUES (1, '김동성', '1212121','010-1212-3262');
INSERT INTO Teacher (seq, name,ssn, tel)
    VALUES (2, '최다빈', '1236456','010-1265-6598');
INSERT INTO Teacher (seq, name,ssn, tel)
    VALUES (3, '전지현', '2154657','010-4568-5698');
INSERT INTO Teacher (seq, name,ssn, tel)
    VALUES (4, '한예슬', '2365478','010-1236-5698');
INSERT INTO Teacher (seq, name,ssn, tel)
    VALUES (5, '임주엽', '1236548','010-5697-2365');
INSERT INTO Teacher (seq, name,ssn, tel)
    VALUES (6, '김성진', '1236548','010-4569-5698');
INSERT INTO Teacher (seq, name,ssn, tel)
    VALUES (7, '손흥민', '1236597','010-4444-7777');
INSERT INTO Teacher (seq, name,ssn, tel)
    VALUES (8, '손담비', '2365897','010-6666-7777');
INSERT INTO Teacher (seq, name,ssn, tel)
    VALUES (9, '호날두', '1231256','010-1236-5698');
INSERT INTO Teacher (seq, name,ssn, tel)
    VALUES (10, '김메시', '1236547','010-1265-7895');
    
