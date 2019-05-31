

select * from OPENCOURSESTUDENT; -- 1~156
select * from notice; -- 1~83



CREATE TABLE NoticeApplication
(
    seq number primary key,
    notice_seq number
        references Notice(seq) not null,
    application_date date,
    opencoursestudent_seq number
        references OpenCourseStudent(seq) not null
);


INSERT INTO NoticeApplication VALUES (번호, 공고번호(1~83), TO_DATE('2019-04-날짜', 'yyyy-mm-dd'), 학생번호(1~156));

INSERT INTO NoticeApplication VALUES (1, 9, TO_DATE('2019-04-08', 'yyyy-mm-dd'), 150);
INSERT INTO NoticeApplication VALUES (2, 46, TO_DATE('2019-04-24', 'yyyy-mm-dd'), 147);
INSERT INTO NoticeApplication VALUES (3, 76, TO_DATE('2019-04-08', 'yyyy-mm-dd'), 136);
INSERT INTO NoticeApplication VALUES (4, 53, TO_DATE('2019-04-04', 'yyyy-mm-dd'), 138);
INSERT INTO NoticeApplication VALUES (5, 71, TO_DATE('2019-04-07', 'yyyy-mm-dd'), 65);
INSERT INTO NoticeApplication VALUES (6, 25, TO_DATE('2019-04-13', 'yyyy-mm-dd'), 144);
INSERT INTO NoticeApplication VALUES (7, 62, TO_DATE('2019-04-25', 'yyyy-mm-dd'), 102);
INSERT INTO NoticeApplication VALUES (8, 22, TO_DATE('2019-04-30', 'yyyy-mm-dd'), 22);
INSERT INTO NoticeApplication VALUES (9, 18, TO_DATE('2019-04-03', 'yyyy-mm-dd'), 56);
INSERT INTO NoticeApplication VALUES (10, 61, TO_DATE('2019-04-14', 'yyyy-mm-dd'), 45);
INSERT INTO NoticeApplication VALUES (11, 46, TO_DATE('2019-04-24', 'yyyy-mm-dd'), 89);
INSERT INTO NoticeApplication VALUES (12, 41, TO_DATE('2019-04-21', 'yyyy-mm-dd'), 68);
INSERT INTO NoticeApplication VALUES (13, 60, TO_DATE('2019-04-06', 'yyyy-mm-dd'), 69);
INSERT INTO NoticeApplication VALUES (14, 36, TO_DATE('2019-04-25', 'yyyy-mm-dd'), 44);
INSERT INTO NoticeApplication VALUES (15, 64, TO_DATE('2019-04-04', 'yyyy-mm-dd'), 37);
INSERT INTO NoticeApplication VALUES (16, 22, TO_DATE('2019-04-30', 'yyyy-mm-dd'), 148);
INSERT INTO NoticeApplication VALUES (17, 22, TO_DATE('2019-04-10', 'yyyy-mm-dd'), 35);
INSERT INTO NoticeApplication VALUES (18, 46, TO_DATE('2019-04-11', 'yyyy-mm-dd'), 42);
INSERT INTO NoticeApplication VALUES (19, 79, TO_DATE('2019-04-13', 'yyyy-mm-dd'), 105);
INSERT INTO NoticeApplication VALUES (20, 19, TO_DATE('2019-04-17', 'yyyy-mm-dd'), 137);
INSERT INTO NoticeApplication VALUES (21, 43, TO_DATE('2019-04-13', 'yyyy-mm-dd'), 85);
INSERT INTO NoticeApplication VALUES (22, 23, TO_DATE('2019-04-12', 'yyyy-mm-dd'), 64);
INSERT INTO NoticeApplication VALUES (23, 15, TO_DATE('2019-04-17', 'yyyy-mm-dd'), 53);
INSERT INTO NoticeApplication VALUES (24, 49, TO_DATE('2019-04-22', 'yyyy-mm-dd'), 49);
INSERT INTO NoticeApplication VALUES (25, 3, TO_DATE('2019-04-04', 'yyyy-mm-dd'), 75);
INSERT INTO NoticeApplication VALUES (26, 26, TO_DATE('2019-04-02', 'yyyy-mm-dd'), 105);
INSERT INTO NoticeApplication VALUES (27, 29, TO_DATE('2019-04-21', 'yyyy-mm-dd'), 81);
INSERT INTO NoticeApplication VALUES (28, 65, TO_DATE('2019-04-23', 'yyyy-mm-dd'), 13);
INSERT INTO NoticeApplication VALUES (29, 18, TO_DATE('2019-04-02', 'yyyy-mm-dd'), 47);
INSERT INTO NoticeApplication VALUES (30, 62, TO_DATE('2019-04-12', 'yyyy-mm-dd'), 14);
INSERT INTO NoticeApplication VALUES (31, 20, TO_DATE('2019-04-30', 'yyyy-mm-dd'), 35);
INSERT INTO NoticeApplication VALUES (32, 56, TO_DATE('2019-04-13', 'yyyy-mm-dd'), 2);
INSERT INTO NoticeApplication VALUES (33, 77, TO_DATE('2019-04-01', 'yyyy-mm-dd'), 156);
INSERT INTO NoticeApplication VALUES (34, 51, TO_DATE('2019-04-27', 'yyyy-mm-dd'), 144);
INSERT INTO NoticeApplication VALUES (35, 71, TO_DATE('2019-04-15', 'yyyy-mm-dd'), 110);
INSERT INTO NoticeApplication VALUES (36, 72, TO_DATE('2019-04-11', 'yyyy-mm-dd'), 135);
INSERT INTO NoticeApplication VALUES (37, 31, TO_DATE('2019-04-16', 'yyyy-mm-dd'), 17);
INSERT INTO NoticeApplication VALUES (38, 47, TO_DATE('2019-04-21', 'yyyy-mm-dd'), 101);
INSERT INTO NoticeApplication VALUES (39, 8, TO_DATE('2019-04-23', 'yyyy-mm-dd'), 14);
INSERT INTO NoticeApplication VALUES (40, 80, TO_DATE('2019-04-15', 'yyyy-mm-dd'), 148);
INSERT INTO NoticeApplication VALUES (41, 30, TO_DATE('2019-04-19', 'yyyy-mm-dd'), 142);
INSERT INTO NoticeApplication VALUES (42, 46, TO_DATE('2019-04-23', 'yyyy-mm-dd'), 8);
INSERT INTO NoticeApplication VALUES (43, 63, TO_DATE('2019-04-12', 'yyyy-mm-dd'), 69);
INSERT INTO NoticeApplication VALUES (44, 58, TO_DATE('2019-04-27', 'yyyy-mm-dd'), 45);
INSERT INTO NoticeApplication VALUES (45, 58, TO_DATE('2019-04-27', 'yyyy-mm-dd'), 33);
INSERT INTO NoticeApplication VALUES (46, 82, TO_DATE('2019-04-12', 'yyyy-mm-dd'), 102);
INSERT INTO NoticeApplication VALUES (47, 77, TO_DATE('2019-04-12', 'yyyy-mm-dd'), 74);
INSERT INTO NoticeApplication VALUES (48, 43, TO_DATE('2019-04-04', 'yyyy-mm-dd'), 29);
INSERT INTO NoticeApplication VALUES (49, 27, TO_DATE('2019-04-23', 'yyyy-mm-dd'), 82);
INSERT INTO NoticeApplication VALUES (50, 19, TO_DATE('2019-04-10', 'yyyy-mm-dd'), 98);
INSERT INTO NoticeApplication VALUES (51, 45, TO_DATE('2019-04-18', 'yyyy-mm-dd'), 100);
INSERT INTO NoticeApplication VALUES (52, 83, TO_DATE('2019-04-05', 'yyyy-mm-dd'), 19);
INSERT INTO NoticeApplication VALUES (53, 23, TO_DATE('2019-04-02', 'yyyy-mm-dd'), 52);
INSERT INTO NoticeApplication VALUES (54, 31, TO_DATE('2019-04-12', 'yyyy-mm-dd'), 119);
INSERT INTO NoticeApplication VALUES (55, 51, TO_DATE('2019-04-10', 'yyyy-mm-dd'), 78);
INSERT INTO NoticeApplication VALUES (56, 23, TO_DATE('2019-04-30', 'yyyy-mm-dd'), 10);
INSERT INTO NoticeApplication VALUES (57, 31, TO_DATE('2019-04-16', 'yyyy-mm-dd'), 81);
INSERT INTO NoticeApplication VALUES (58, 10, TO_DATE('2019-04-09', 'yyyy-mm-dd'), 6);
INSERT INTO NoticeApplication VALUES (59, 3, TO_DATE('2019-04-04', 'yyyy-mm-dd'), 118);
INSERT INTO NoticeApplication VALUES (60, 50, TO_DATE('2019-04-18', 'yyyy-mm-dd'), 24);
INSERT INTO NoticeApplication VALUES (61, 73, TO_DATE('2019-04-10', 'yyyy-mm-dd'), 13);
INSERT INTO NoticeApplication VALUES (62, 66, TO_DATE('2019-04-06', 'yyyy-mm-dd'), 155);
INSERT INTO NoticeApplication VALUES (63, 81, TO_DATE('2019-04-12', 'yyyy-mm-dd'), 116);
INSERT INTO NoticeApplication VALUES (64, 38, TO_DATE('2019-04-05', 'yyyy-mm-dd'), 20);
INSERT INTO NoticeApplication VALUES (65, 34, TO_DATE('2019-04-26', 'yyyy-mm-dd'), 152);
INSERT INTO NoticeApplication VALUES (66, 81, TO_DATE('2019-04-30', 'yyyy-mm-dd'), 32);
INSERT INTO NoticeApplication VALUES (67, 70, TO_DATE('2019-04-29', 'yyyy-mm-dd'), 125);
INSERT INTO NoticeApplication VALUES (68, 45, TO_DATE('2019-04-07', 'yyyy-mm-dd'), 60);
INSERT INTO NoticeApplication VALUES (69, 65, TO_DATE('2019-04-02', 'yyyy-mm-dd'), 81);
INSERT INTO NoticeApplication VALUES (70, 32, TO_DATE('2019-04-22', 'yyyy-mm-dd'), 68);
INSERT INTO NoticeApplication VALUES (71, 52, TO_DATE('2019-04-09', 'yyyy-mm-dd'), 56);
INSERT INTO NoticeApplication VALUES (72, 26, TO_DATE('2019-04-23', 'yyyy-mm-dd'), 3);
INSERT INTO NoticeApplication VALUES (73, 82, TO_DATE('2019-04-13', 'yyyy-mm-dd'), 71);
INSERT INTO NoticeApplication VALUES (74, 46, TO_DATE('2019-04-01', 'yyyy-mm-dd'), 22);
INSERT INTO NoticeApplication VALUES (75, 28, TO_DATE('2019-04-25', 'yyyy-mm-dd'), 18);
INSERT INTO NoticeApplication VALUES (76, 30, TO_DATE('2019-04-05', 'yyyy-mm-dd'), 70);
INSERT INTO NoticeApplication VALUES (77, 49, TO_DATE('2019-04-03', 'yyyy-mm-dd'), 72);
INSERT INTO NoticeApplication VALUES (78, 75, TO_DATE('2019-04-17', 'yyyy-mm-dd'), 77);
INSERT INTO NoticeApplication VALUES (79, 26, TO_DATE('2019-04-16', 'yyyy-mm-dd'), 62);
INSERT INTO NoticeApplication VALUES (80, 59, TO_DATE('2019-04-18', 'yyyy-mm-dd'), 146);
INSERT INTO NoticeApplication VALUES (81, 74, TO_DATE('2019-04-16', 'yyyy-mm-dd'), 69);
INSERT INTO NoticeApplication VALUES (82, 8, TO_DATE('2019-04-29', 'yyyy-mm-dd'), 133);
INSERT INTO NoticeApplication VALUES (83, 44, TO_DATE('2019-04-26', 'yyyy-mm-dd'), 63);
INSERT INTO NoticeApplication VALUES (84, 79, TO_DATE('2019-04-16', 'yyyy-mm-dd'), 38);
INSERT INTO NoticeApplication VALUES (85, 74, TO_DATE('2019-04-11', 'yyyy-mm-dd'), 133);
INSERT INTO NoticeApplication VALUES (86, 56, TO_DATE('2019-04-24', 'yyyy-mm-dd'), 25);
INSERT INTO NoticeApplication VALUES (87, 60, TO_DATE('2019-04-19', 'yyyy-mm-dd'), 55);
INSERT INTO NoticeApplication VALUES (88, 25, TO_DATE('2019-04-22', 'yyyy-mm-dd'), 82);
INSERT INTO NoticeApplication VALUES (89, 20, TO_DATE('2019-04-20', 'yyyy-mm-dd'), 148);
INSERT INTO NoticeApplication VALUES (90, 16, TO_DATE('2019-04-13', 'yyyy-mm-dd'), 88);
INSERT INTO NoticeApplication VALUES (91, 60, TO_DATE('2019-04-03', 'yyyy-mm-dd'), 33);
INSERT INTO NoticeApplication VALUES (92, 13, TO_DATE('2019-04-05', 'yyyy-mm-dd'), 48);
INSERT INTO NoticeApplication VALUES (93, 32, TO_DATE('2019-04-28', 'yyyy-mm-dd'), 28);
INSERT INTO NoticeApplication VALUES (94, 47, TO_DATE('2019-04-24', 'yyyy-mm-dd'), 123);
INSERT INTO NoticeApplication VALUES (95, 15, TO_DATE('2019-04-25', 'yyyy-mm-dd'), 87);
INSERT INTO NoticeApplication VALUES (96, 52, TO_DATE('2019-04-16', 'yyyy-mm-dd'), 155);
INSERT INTO NoticeApplication VALUES (97, 56, TO_DATE('2019-04-08', 'yyyy-mm-dd'), 57);
INSERT INTO NoticeApplication VALUES (98, 71, TO_DATE('2019-04-13', 'yyyy-mm-dd'), 48);
INSERT INTO NoticeApplication VALUES (99, 3, TO_DATE('2019-04-02', 'yyyy-mm-dd'), 74);
INSERT INTO NoticeApplication VALUES (100, 17, TO_DATE('2019-04-07', 'yyyy-mm-dd'), 137);















