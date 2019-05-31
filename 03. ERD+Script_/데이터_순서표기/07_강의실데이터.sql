-- 강의실 데이터
CREATE TABLE Classroom 
(
    seq         NUMBER          PRIMARY KEY,
    name        VARCHAR2(50)    NOT NULL,
    capacity    number          NULL
      
);

select * from Classroom;


INSERT INTO Classroom (seq, name, capacity) VALUES (1, '제 1강의실', 30);
INSERT INTO Classroom (seq, name, capacity) VALUES (2, '제 2강의실', 30);
INSERT INTO Classroom (seq, name, capacity) VALUES (3, '제 3강의실', 30);
INSERT INTO Classroom (seq, name, capacity) VALUES (4, '제 4강의실', 26);
INSERT INTO Classroom (seq, name, capacity) VALUES (5, '제 5강의실', 26);
INSERT INTO Classroom (seq, name, capacity) VALUES (6, '제 6강의실', 26);
