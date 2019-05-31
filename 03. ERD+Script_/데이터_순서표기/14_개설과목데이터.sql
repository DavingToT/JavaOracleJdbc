-- 개설 과목 데이터


CREATE TABLE OpenSubject
(
    seq number primary key,
    opencourse_seq number
        references OpenCourse(seq) not null,
    coursesubject_seq number
        references CourseSubject(seq) not null,
    start_date date not null,
    end_date date not null,
    writtentest_date date,
    performancetest_date date
);

select * from opensubject;


TO_DATE('--', 'yyyy-mm-dd');

select * from opencourse;
SELECT * FROM CourseSubject;

--ORDER BY course_seq, subject_seq;

select * from OpenSubject;

delete from OpenSubject where seq = 1;

INSERT INTO OpenSubject VALUES (시퀀스, 개설과정번호, 과정별과목번호, 시작일, 종료일, 필기시험일, 실기시험일);

INSERT INTO OpenSubject VALUES (1, 1, 1, TO_DATE('2018-10-19', 'yyyy-mm-dd'), TO_DATE('2018-12-14', 'yyyy-mm-dd'), TO_DATE('2018-11-16', 'yyyy-mm-dd'), TO_DATE('2018-12-14', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (2, 1, 2, TO_DATE('2018-12-17', 'yyyy-mm-dd'), TO_DATE('2019-01-18', 'yyyy-mm-dd'), TO_DATE('2018-12-31', 'yyyy-mm-dd'), TO_DATE('2019-01-18', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (3, 1, 3, TO_DATE('2019-01-21', 'yyyy-mm-dd'), TO_DATE('2019-02-22', 'yyyy-mm-dd'), TO_DATE('2019-02-08', 'yyyy-mm-dd'), TO_DATE('2019-02-22', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (4, 1, 4, TO_DATE('2019-02-25', 'yyyy-mm-dd'), TO_DATE('2019-03-22', 'yyyy-mm-dd'), TO_DATE('2019-03-06', 'yyyy-mm-dd'), TO_DATE('2019-03-22', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (5, 1, 5, TO_DATE('2019-03-25', 'yyyy-mm-dd'), TO_DATE('2019-04-19', 'yyyy-mm-dd'), TO_DATE('2019-04-02', 'yyyy-mm-dd'), TO_DATE('2019-04-19', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (6, 1, 6, TO_DATE('2019-04-22', 'yyyy-mm-dd'), TO_DATE('2019-05-15', 'yyyy-mm-dd'), TO_DATE('2019-05-02', 'yyyy-mm-dd'), TO_DATE('2019-05-15', 'yyyy-mm-dd'));

INSERT INTO OpenSubject VALUES (7, 2, 7, TO_DATE('2018-10-22', 'yyyy-mm-dd'), TO_DATE('2018-12-16', 'yyyy-mm-dd'), TO_DATE('2018-11-16', 'yyyy-mm-dd'), TO_DATE('2018-12-14', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (8, 2, 8, TO_DATE('2018-12-19', 'yyyy-mm-dd'), TO_DATE('2019-01-18', 'yyyy-mm-dd'), TO_DATE('2018-12-31', 'yyyy-mm-dd'), TO_DATE('2019-01-18', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (9, 2, 9, TO_DATE('2019-01-21', 'yyyy-mm-dd'), TO_DATE('2019-02-22', 'yyyy-mm-dd'), TO_DATE('2019-02-08', 'yyyy-mm-dd'), TO_DATE('2019-02-22', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (10, 2, 10, TO_DATE('2019-02-25', 'yyyy-mm-dd'), TO_DATE('2019-03-22', 'yyyy-mm-dd'), TO_DATE('2019-03-06', 'yyyy-mm-dd'), TO_DATE('2019-03-22', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (11, 2, 11, TO_DATE('2019-03-25', 'yyyy-mm-dd'), TO_DATE('2019-04-19', 'yyyy-mm-dd'), TO_DATE('2019-04-02', 'yyyy-mm-dd'), TO_DATE('2019-04-19', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (12, 2, 12, TO_DATE('2019-04-22', 'yyyy-mm-dd'), TO_DATE('2019-05-17', 'yyyy-mm-dd'), TO_DATE('2019-05-02', 'yyyy-mm-dd'), TO_DATE('2019-05-17', 'yyyy-mm-dd'));



INSERT INTO OpenSubject VALUES (13, 3, 13, TO_DATE('2018-10-22', 'yyyy-mm-dd'), TO_DATE('2018-11-28', 'yyyy-mm-dd'), TO_DATE('2018-11-01', 'yyyy-mm-dd'), TO_DATE('2018-11-26', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (14, 3, 14, TO_DATE('2018-11-29', 'yyyy-mm-dd'), TO_DATE('2018-12-31', 'yyyy-mm-dd'), TO_DATE('2018-12-10', 'yyyy-mm-dd'), TO_DATE('2018-12-30', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (15, 3, 15, TO_DATE('2019-01-02', 'yyyy-mm-dd'), TO_DATE('2019-02-15', 'yyyy-mm-dd'), TO_DATE('2019-01-20', 'yyyy-mm-dd'), TO_DATE('2019-02-13', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (16, 3, 16, TO_DATE('2019-02-16', 'yyyy-mm-dd'), TO_DATE('2019-03-21', 'yyyy-mm-dd'), TO_DATE('2019-02-28', 'yyyy-mm-dd'), TO_DATE('2019-03-19', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (17, 3, 17, TO_DATE('2019-03-22', 'yyyy-mm-dd'), TO_DATE('2019-04-15', 'yyyy-mm-dd'), TO_DATE('2019-04-01', 'yyyy-mm-dd'), TO_DATE('2019-04-13', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (18, 3, 18, TO_DATE('2019-04-14', 'yyyy-mm-dd'), TO_DATE('2019-05-17', 'yyyy-mm-dd'), TO_DATE('2019-04-28', 'yyyy-mm-dd'), TO_DATE('2019-05-15', 'yyyy-mm-dd'));

INSERT INTO OpenSubject VALUES (19, 4, 19, TO_DATE('2019-05-20', 'yyyy-mm-dd'), TO_DATE('2019-06-24', 'yyyy-mm-dd'), TO_DATE('2019-06-02', 'yyyy-mm-dd'), TO_DATE('2019-06-22', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (20, 4, 20, TO_DATE('2019-06-25', 'yyyy-mm-dd'), TO_DATE('2019-07-30', 'yyyy-mm-dd'), TO_DATE('2019-07-08', 'yyyy-mm-dd'), TO_DATE('2019-07-29', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (21, 4, 21, TO_DATE('2019-07-31', 'yyyy-mm-dd'), TO_DATE('2019-09-01', 'yyyy-mm-dd'), TO_DATE('2019-08-12', 'yyyy-mm-dd'), TO_DATE('2019-08-30', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (22, 4, 22, TO_DATE('2019-09-02', 'yyyy-mm-dd'), TO_DATE('2019-10-18', 'yyyy-mm-dd'), TO_DATE('2019-09-20', 'yyyy-mm-dd'), TO_DATE('2019-10-17', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (23, 4, 23, TO_DATE('2019-10-19', 'yyyy-mm-dd'), TO_DATE('2019-11-10', 'yyyy-mm-dd'), TO_DATE('2019-10-28', 'yyyy-mm-dd'), TO_DATE('2019-11-09', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (24, 4, 24, TO_DATE('2019-11-11', 'yyyy-mm-dd'), TO_DATE('2019-12-09', 'yyyy-mm-dd'), TO_DATE('2019-11-22', 'yyyy-mm-dd'), TO_DATE('2019-12-08', 'yyyy-mm-dd'));



INSERT INTO OpenSubject VALUES (25, 5, 25, TO_DATE('2019-05-20', 'yyyy-mm-dd'), TO_DATE('2019-06-24', 'yyyy-mm-dd'), TO_DATE('2019-06-02', 'yyyy-mm-dd'), TO_DATE('2019-06-22', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (26, 5, 26, TO_DATE('2019-06-25', 'yyyy-mm-dd'), TO_DATE('2019-07-30', 'yyyy-mm-dd'), TO_DATE('2019-07-08', 'yyyy-mm-dd'), TO_DATE('2019-07-29', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (27, 5, 27, TO_DATE('2019-07-31', 'yyyy-mm-dd'), TO_DATE('2019-09-01', 'yyyy-mm-dd'), TO_DATE('2019-08-12', 'yyyy-mm-dd'), TO_DATE('2019-08-30', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (28, 5, 28, TO_DATE('2019-09-02', 'yyyy-mm-dd'), TO_DATE('2019-10-18', 'yyyy-mm-dd'), TO_DATE('2019-09-20', 'yyyy-mm-dd'), TO_DATE('2019-10-17', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (29, 5, 29, TO_DATE('2019-10-19', 'yyyy-mm-dd'), TO_DATE('2019-11-10', 'yyyy-mm-dd'), TO_DATE('2019-10-28', 'yyyy-mm-dd'), TO_DATE('2019-11-09', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (30, 5, 30, TO_DATE('2019-11-11', 'yyyy-mm-dd'), TO_DATE('2019-12-09', 'yyyy-mm-dd'), TO_DATE('2019-11-22', 'yyyy-mm-dd'), TO_DATE('2019-12-08', 'yyyy-mm-dd'));

INSERT INTO OpenSubject VALUES (31, 6, 31, TO_DATE('2019-06-24', 'yyyy-mm-dd'), TO_DATE('2019-08-02', 'yyyy-mm-dd'), TO_DATE('2019-07-19', 'yyyy-mm-dd'), TO_DATE('2019-08-02', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (32, 6, 32, TO_DATE('2019-08-05', 'yyyy-mm-dd'), TO_DATE('2019-09-06', 'yyyy-mm-dd'), TO_DATE('2019-08-23', 'yyyy-mm-dd'), TO_DATE('2019-09-06', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (33, 6, 33, TO_DATE('2019-09-09', 'yyyy-mm-dd'), TO_DATE('2019-10-11', 'yyyy-mm-dd'), TO_DATE('2019-09-23', 'yyyy-mm-dd'), TO_DATE('2019-10-11', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (34, 6, 34, TO_DATE('2019-10-13', 'yyyy-mm-dd'), TO_DATE('2019-11-08', 'yyyy-mm-dd'), TO_DATE('2019-11-22', 'yyyy-mm-dd'), TO_DATE('2019-11-08', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (35, 6, 35, TO_DATE('2019-11-11', 'yyyy-mm-dd'), TO_DATE('2019-12-13', 'yyyy-mm-dd'), TO_DATE('2019-11-22', 'yyyy-mm-dd'), TO_DATE('2019-12-13', 'yyyy-mm-dd'));
INSERT INTO OpenSubject VALUES (36, 6, 36, TO_DATE('2019-12-16', 'yyyy-mm-dd'), TO_DATE('2020-01-16', 'yyyy-mm-dd'), TO_DATE('2019-12-30', 'yyyy-mm-dd'), TO_DATE('2020-01-16', 'yyyy-mm-dd'));



