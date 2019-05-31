-- 과정당 과목 데이터

CREATE TABLE CourseSubject
(
    seq number primary key,
    course_seq number 
        references Course(seq) not null,
    subject_seq number
        references Subject(seq) not null
);

SELECT * FROM CourseSubject ORDER BY course_seq, subject_seq;


INSERT INTO CourseSubject VALUES (1, 1, 21);
INSERT INTO CourseSubject VALUES (2, 1, 1);
INSERT INTO CourseSubject VALUES (3, 1, 2);
INSERT INTO CourseSubject VALUES (4, 1, 3);
INSERT INTO CourseSubject VALUES (5, 1, 4);
INSERT INTO CourseSubject VALUES (6, 1, 5);

INSERT INTO CourseSubject VALUES (7, 2, 21);
INSERT INTO CourseSubject VALUES (8, 2, 6);
INSERT INTO CourseSubject VALUES (9, 2, 7);
INSERT INTO CourseSubject VALUES (10, 2, 8);
INSERT INTO CourseSubject VALUES (11, 2, 9);
INSERT INTO CourseSubject VALUES (12, 2, 10);

INSERT INTO CourseSubject VALUES (13, 3, 21);
INSERT INTO CourseSubject VALUES (14, 3, 11);
INSERT INTO CourseSubject VALUES (15, 3, 12);
INSERT INTO CourseSubject VALUES (16, 3, 13);
INSERT INTO CourseSubject VALUES (17, 3, 14);
INSERT INTO CourseSubject VALUES (18, 3, 15);

INSERT INTO CourseSubject VALUES (97, 4, 21);
INSERT INTO CourseSubject VALUES (98, 4, 16);
INSERT INTO CourseSubject VALUES (99, 4, 17);
INSERT INTO CourseSubject VALUES (100, 4, 18);
INSERT INTO CourseSubject VALUES (101, 4, 19);
INSERT INTO CourseSubject VALUES (102, 4, 20);

INSERT INTO CourseSubject VALUES (19, 5, 21);
INSERT INTO CourseSubject VALUES (20, 5, 1);
INSERT INTO CourseSubject VALUES (21, 5, 2);
INSERT INTO CourseSubject VALUES (22, 5, 3);
INSERT INTO CourseSubject VALUES (23, 5, 4);
INSERT INTO CourseSubject VALUES (24, 5, 5);

INSERT INTO CourseSubject VALUES (25, 6, 21);
INSERT INTO CourseSubject VALUES (26, 6, 6);
INSERT INTO CourseSubject VALUES (27, 6, 7);
INSERT INTO CourseSubject VALUES (28, 6, 8);
INSERT INTO CourseSubject VALUES (29, 6, 9);
INSERT INTO CourseSubject VALUES (30, 6, 10);

INSERT INTO CourseSubject VALUES (31, 7, 21);
INSERT INTO CourseSubject VALUES (32, 7, 11);
INSERT INTO CourseSubject VALUES (33, 7, 12);
INSERT INTO CourseSubject VALUES (34, 7, 13);
INSERT INTO CourseSubject VALUES (35, 7, 14);
INSERT INTO CourseSubject VALUES (36, 7, 15);

INSERT INTO CourseSubject VALUES (37, 8, 21);
INSERT INTO CourseSubject VALUES (38, 8, 16);
INSERT INTO CourseSubject VALUES (39, 8, 17);
INSERT INTO CourseSubject VALUES (40, 8, 18);
INSERT INTO CourseSubject VALUES (41, 8, 19);
INSERT INTO CourseSubject VALUES (42, 8, 20);

INSERT INTO CourseSubject VALUES (43, 9, 21);
INSERT INTO CourseSubject VALUES (44, 9, 1);
INSERT INTO CourseSubject VALUES (45, 9, 2);
INSERT INTO CourseSubject VALUES (46, 9, 3);
INSERT INTO CourseSubject VALUES (47, 9, 4);
INSERT INTO CourseSubject VALUES (48, 9, 5);

INSERT INTO CourseSubject VALUES (49, 10, 21);
INSERT INTO CourseSubject VALUES (50, 10, 6);
INSERT INTO CourseSubject VALUES (51, 10, 7);
INSERT INTO CourseSubject VALUES (52, 10, 8);
INSERT INTO CourseSubject VALUES (53, 10, 9);
INSERT INTO CourseSubject VALUES (54, 10, 10);

INSERT INTO CourseSubject VALUES (55, 11, 21);
INSERT INTO CourseSubject VALUES (56, 11, 11);
INSERT INTO CourseSubject VALUES (57, 11, 12);
INSERT INTO CourseSubject VALUES (58, 11, 13);
INSERT INTO CourseSubject VALUES (59, 11, 14);
INSERT INTO CourseSubject VALUES (60, 11, 15);

INSERT INTO CourseSubject VALUES (61, 12, 21);
INSERT INTO CourseSubject VALUES (62, 12, 16);
INSERT INTO CourseSubject VALUES (63, 12, 17);
INSERT INTO CourseSubject VALUES (64, 12, 18);
INSERT INTO CourseSubject VALUES (65, 12, 19);
INSERT INTO CourseSubject VALUES (66, 12, 20);

INSERT INTO CourseSubject VALUES (67, 13, 21);
INSERT INTO CourseSubject VALUES (68, 13, 1);
INSERT INTO CourseSubject VALUES (69, 13, 2);
INSERT INTO CourseSubject VALUES (70, 13, 3);
INSERT INTO CourseSubject VALUES (71, 13, 4);
INSERT INTO CourseSubject VALUES (72, 13, 5);

INSERT INTO CourseSubject VALUES (73, 14, 21);
INSERT INTO CourseSubject VALUES (74, 14, 6);
INSERT INTO CourseSubject VALUES (75, 14, 7);
INSERT INTO CourseSubject VALUES (76, 14, 8);
INSERT INTO CourseSubject VALUES (77, 14, 9);
INSERT INTO CourseSubject VALUES (78, 14, 10);

INSERT INTO CourseSubject VALUES (79, 15, 21);
INSERT INTO CourseSubject VALUES (80, 15, 11);
INSERT INTO CourseSubject VALUES (81, 15, 12);
INSERT INTO CourseSubject VALUES (82, 15, 13);
INSERT INTO CourseSubject VALUES (83, 15, 14);
INSERT INTO CourseSubject VALUES (84, 15, 15);

INSERT INTO CourseSubject VALUES (85, 16, 21);
INSERT INTO CourseSubject VALUES (86, 16, 16);
INSERT INTO CourseSubject VALUES (87, 16, 17);
INSERT INTO CourseSubject VALUES (88, 16, 18);
INSERT INTO CourseSubject VALUES (89, 16, 19);
INSERT INTO CourseSubject VALUES (90, 16, 20);

INSERT INTO CourseSubject VALUES (91, 17, 21);
INSERT INTO CourseSubject VALUES (92, 17, 1);
INSERT INTO CourseSubject VALUES (93, 17, 2);
INSERT INTO CourseSubject VALUES (94, 17, 3);
INSERT INTO CourseSubject VALUES (95, 17, 4);
INSERT INTO CourseSubject VALUES (96, 17, 5);
