-- 개설과정
CREATE TABLE OpenCourse
(
    seq number primary key,
    course_seq number
        references Course(seq) not null,
    start_date date not null,
    end_date date not null,
    classroom_seq number
        references Classroom(seq) not null,
    teacher_seq number
        references Teacher(seq) not null,
    status number default 1 not null
);

SELECT * FROM Opencourse;
DELETE FROM Opencourse WHERE status = 1;


SELECT * FROM Course;






SELECT * FROM Teacher;

INSERT INTO OpenCourse VALUES (1, 3, TO_DATE('2018-10-19', 'yyyy-mm-dd'), TO_DATE('2019-05-15', 'yyyy-mm-dd'), 4, 1, 1);
INSERT INTO OpenCourse VALUES (2, 6, TO_DATE('2018-10-22', 'yyyy-mm-dd'), TO_DATE('2019-05-17', 'yyyy-mm-dd'), 3, 2, 1);
INSERT INTO OpenCourse VALUES (3, 5, TO_DATE('2019-05-20', 'yyyy-mm-dd'), TO_DATE('2019-12-09', 'yyyy-mm-dd'), 6, 3, 1);
INSERT INTO OpenCourse VALUES (4, 1, TO_DATE('2019-05-20', 'yyyy-mm-dd'), TO_DATE('2019-12-09', 'yyyy-mm-dd'), 3, 4, 1);
INSERT INTO OpenCourse VALUES (5, 4, TO_DATE('2019-05-20', 'yyyy-mm-dd'), TO_DATE('2019-12-09', 'yyyy-mm-dd'), 1, 5, 1);
INSERT INTO OpenCourse VALUES (6, 2, TO_DATE('2019-06-24', 'yyyy-mm-dd'), TO_DATE('2020-01-16', 'yyyy-mm-dd'), 2, 6, 1);








