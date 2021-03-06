-- 강의 가능 과목

CREATE TABLE LecturableSubject
(   
    seq number primary key,
    teacher_seq number
        references Teacher(seq) not null,
    subject_seq number
        references Subject(seq) not null
);


INSERT INTO LecturableSubject VALUES (1, 1, 21);
INSERT INTO LecturableSubject VALUES (2, 1, 10);
INSERT INTO LecturableSubject VALUES (3, 1, 18);
INSERT INTO LecturableSubject VALUES (4, 1, 11);
INSERT INTO LecturableSubject VALUES (5, 1, 5);
INSERT INTO LecturableSubject VALUES (6, 1, 3);
INSERT INTO LecturableSubject VALUES (7, 1, 6);
INSERT INTO LecturableSubject VALUES (8, 1, 4);
INSERT INTO LecturableSubject VALUES (9, 1, 14);
INSERT INTO LecturableSubject VALUES (10, 1, 13);
INSERT INTO LecturableSubject VALUES (11, 1, 9);
INSERT INTO LecturableSubject VALUES (12, 1, 16);
INSERT INTO LecturableSubject VALUES (13, 1, 20);
INSERT INTO LecturableSubject VALUES (14, 1, 7);
INSERT INTO LecturableSubject VALUES (15, 1, 19);
INSERT INTO LecturableSubject VALUES (16, 1, 8);
INSERT INTO LecturableSubject VALUES (17, 1, 1);
INSERT INTO LecturableSubject VALUES (18, 1, 12);
INSERT INTO LecturableSubject VALUES (19, 1, 17);
INSERT INTO LecturableSubject VALUES (20, 2, 21);
INSERT INTO LecturableSubject VALUES (21, 2, 6);
INSERT INTO LecturableSubject VALUES (22, 2, 1);
INSERT INTO LecturableSubject VALUES (23, 2, 20);
INSERT INTO LecturableSubject VALUES (24, 2, 2);
INSERT INTO LecturableSubject VALUES (25, 2, 5);
INSERT INTO LecturableSubject VALUES (26, 2, 7);
INSERT INTO LecturableSubject VALUES (27, 2, 16);
INSERT INTO LecturableSubject VALUES (28, 2, 12);
INSERT INTO LecturableSubject VALUES (29, 2, 3);
INSERT INTO LecturableSubject VALUES (30, 2, 4);
INSERT INTO LecturableSubject VALUES (31, 2, 11);
INSERT INTO LecturableSubject VALUES (32, 2, 8);
INSERT INTO LecturableSubject VALUES (33, 2, 10);
INSERT INTO LecturableSubject VALUES (34, 2, 9);
INSERT INTO LecturableSubject VALUES (35, 2, 18);
INSERT INTO LecturableSubject VALUES (36, 2, 19);
INSERT INTO LecturableSubject VALUES (37, 2, 13);
INSERT INTO LecturableSubject VALUES (38, 3, 21);
INSERT INTO LecturableSubject VALUES (39, 3, 11);
INSERT INTO LecturableSubject VALUES (40, 3, 16);
INSERT INTO LecturableSubject VALUES (41, 3, 9);
INSERT INTO LecturableSubject VALUES (42, 3, 19);
INSERT INTO LecturableSubject VALUES (43, 3, 7);
INSERT INTO LecturableSubject VALUES (44, 3, 13);
INSERT INTO LecturableSubject VALUES (45, 3, 12);
INSERT INTO LecturableSubject VALUES (46, 3, 20);
INSERT INTO LecturableSubject VALUES (47, 3, 3);
INSERT INTO LecturableSubject VALUES (48, 3, 14);
INSERT INTO LecturableSubject VALUES (49, 3, 17);
INSERT INTO LecturableSubject VALUES (50, 3, 18);
INSERT INTO LecturableSubject VALUES (51, 3, 4);
INSERT INTO LecturableSubject VALUES (52, 3, 15);
INSERT INTO LecturableSubject VALUES (53, 4, 21);
INSERT INTO LecturableSubject VALUES (54, 4, 13);
INSERT INTO LecturableSubject VALUES (55, 4, 14);
INSERT INTO LecturableSubject VALUES (56, 4, 16);
INSERT INTO LecturableSubject VALUES (57, 4, 17);
INSERT INTO LecturableSubject VALUES (58, 4, 2);
INSERT INTO LecturableSubject VALUES (59, 4, 7);
INSERT INTO LecturableSubject VALUES (60, 4, 3);
INSERT INTO LecturableSubject VALUES (61, 4, 8);
INSERT INTO LecturableSubject VALUES (62, 4, 6);
INSERT INTO LecturableSubject VALUES (63, 4, 20);
INSERT INTO LecturableSubject VALUES (64, 4, 4);
INSERT INTO LecturableSubject VALUES (65, 4, 15);
INSERT INTO LecturableSubject VALUES (66, 4, 19);
INSERT INTO LecturableSubject VALUES (67, 4, 10);
INSERT INTO LecturableSubject VALUES (68, 5, 21);
INSERT INTO LecturableSubject VALUES (69, 5, 2);
INSERT INTO LecturableSubject VALUES (70, 5, 12);
INSERT INTO LecturableSubject VALUES (71, 5, 18);
INSERT INTO LecturableSubject VALUES (72, 5, 20);
INSERT INTO LecturableSubject VALUES (73, 5, 5);
INSERT INTO LecturableSubject VALUES (74, 5, 16);
INSERT INTO LecturableSubject VALUES (75, 5, 8);
INSERT INTO LecturableSubject VALUES (76, 5, 1);
INSERT INTO LecturableSubject VALUES (77, 5, 4);
INSERT INTO LecturableSubject VALUES (78, 5, 10);
INSERT INTO LecturableSubject VALUES (79, 5, 17);
INSERT INTO LecturableSubject VALUES (80, 5, 15);
INSERT INTO LecturableSubject VALUES (81, 5, 14);
INSERT INTO LecturableSubject VALUES (82, 5, 3);
INSERT INTO LecturableSubject VALUES (83, 5, 7);
INSERT INTO LecturableSubject VALUES (84, 5, 13);
INSERT INTO LecturableSubject VALUES (85, 5, 19);
INSERT INTO LecturableSubject VALUES (86, 5, 6);
INSERT INTO LecturableSubject VALUES (87, 6, 21);
INSERT INTO LecturableSubject VALUES (88, 6, 1);
INSERT INTO LecturableSubject VALUES (89, 6, 13);
INSERT INTO LecturableSubject VALUES (90, 6, 6);
INSERT INTO LecturableSubject VALUES (91, 6, 12);
INSERT INTO LecturableSubject VALUES (92, 6, 10);
INSERT INTO LecturableSubject VALUES (93, 6, 20);
INSERT INTO LecturableSubject VALUES (94, 6, 18);
INSERT INTO LecturableSubject VALUES (95, 6, 14);
INSERT INTO LecturableSubject VALUES (96, 6, 2);
INSERT INTO LecturableSubject VALUES (97, 6, 5);
INSERT INTO LecturableSubject VALUES (98, 6, 3);
INSERT INTO LecturableSubject VALUES (99, 6, 15);
INSERT INTO LecturableSubject VALUES (100, 6, 8);
INSERT INTO LecturableSubject VALUES (101, 6, 7);
INSERT INTO LecturableSubject VALUES (102, 7, 21);
INSERT INTO LecturableSubject VALUES (103, 7, 8);
INSERT INTO LecturableSubject VALUES (104, 7, 17);
INSERT INTO LecturableSubject VALUES (105, 7, 9);
INSERT INTO LecturableSubject VALUES (106, 7, 18);
INSERT INTO LecturableSubject VALUES (107, 7, 5);
INSERT INTO LecturableSubject VALUES (108, 7, 13);
INSERT INTO LecturableSubject VALUES (109, 7, 19);
INSERT INTO LecturableSubject VALUES (110, 7, 4);
INSERT INTO LecturableSubject VALUES (111, 7, 3);
INSERT INTO LecturableSubject VALUES (112, 7, 11);
INSERT INTO LecturableSubject VALUES (113, 7, 16);
INSERT INTO LecturableSubject VALUES (114, 7, 1);
INSERT INTO LecturableSubject VALUES (115, 7, 12);
INSERT INTO LecturableSubject VALUES (116, 7, 6);
INSERT INTO LecturableSubject VALUES (117, 7, 14);
INSERT INTO LecturableSubject VALUES (118, 8, 21);
INSERT INTO LecturableSubject VALUES (119, 8, 13);
INSERT INTO LecturableSubject VALUES (120, 8, 15);
INSERT INTO LecturableSubject VALUES (121, 8, 2);
INSERT INTO LecturableSubject VALUES (122, 8, 1);
INSERT INTO LecturableSubject VALUES (123, 8, 3);
INSERT INTO LecturableSubject VALUES (124, 8, 14);
INSERT INTO LecturableSubject VALUES (125, 8, 12);
INSERT INTO LecturableSubject VALUES (126, 8, 11);
INSERT INTO LecturableSubject VALUES (127, 8, 8);
INSERT INTO LecturableSubject VALUES (128, 8, 6);
INSERT INTO LecturableSubject VALUES (129, 8, 16);
INSERT INTO LecturableSubject VALUES (130, 8, 10);
INSERT INTO LecturableSubject VALUES (131, 8, 5);
INSERT INTO LecturableSubject VALUES (132, 8, 9);
INSERT INTO LecturableSubject VALUES (133, 8, 20);
INSERT INTO LecturableSubject VALUES (134, 8, 18);
INSERT INTO LecturableSubject VALUES (135, 8, 4);
INSERT INTO LecturableSubject VALUES (136, 8, 19);
INSERT INTO LecturableSubject VALUES (137, 8, 7);
INSERT INTO LecturableSubject VALUES (138, 9, 21);
INSERT INTO LecturableSubject VALUES (139, 9, 2);
INSERT INTO LecturableSubject VALUES (140, 9, 14);
INSERT INTO LecturableSubject VALUES (141, 9, 7);
INSERT INTO LecturableSubject VALUES (142, 9, 20);
INSERT INTO LecturableSubject VALUES (143, 9, 3);
INSERT INTO LecturableSubject VALUES (144, 9, 6);
INSERT INTO LecturableSubject VALUES (145, 9, 4);
INSERT INTO LecturableSubject VALUES (146, 9, 10);
INSERT INTO LecturableSubject VALUES (147, 9, 15);
INSERT INTO LecturableSubject VALUES (148, 9, 13);
INSERT INTO LecturableSubject VALUES (149, 9, 5);
INSERT INTO LecturableSubject VALUES (150, 9, 17);
INSERT INTO LecturableSubject VALUES (151, 9, 1);
INSERT INTO LecturableSubject VALUES (152, 9, 18);
INSERT INTO LecturableSubject VALUES (153, 9, 12);
INSERT INTO LecturableSubject VALUES (154, 9, 8);
INSERT INTO LecturableSubject VALUES (155, 9, 11);
INSERT INTO LecturableSubject VALUES (156, 10, 21);
INSERT INTO LecturableSubject VALUES (157, 10, 7);
INSERT INTO LecturableSubject VALUES (158, 10, 8);
INSERT INTO LecturableSubject VALUES (159, 10, 12);
INSERT INTO LecturableSubject VALUES (160, 10, 17);
INSERT INTO LecturableSubject VALUES (161, 10, 1);
INSERT INTO LecturableSubject VALUES (162, 10, 10);
INSERT INTO LecturableSubject VALUES (163, 10, 15);
INSERT INTO LecturableSubject VALUES (164, 10, 14);
INSERT INTO LecturableSubject VALUES (165, 10, 3);
INSERT INTO LecturableSubject VALUES (166, 10, 19);
INSERT INTO LecturableSubject VALUES (167, 10, 11);
INSERT INTO LecturableSubject VALUES (168, 10, 2);
INSERT INTO LecturableSubject VALUES (169, 10, 18);
INSERT INTO LecturableSubject VALUES (170, 10, 16);
INSERT INTO LecturableSubject VALUES (171, 10, 13);
INSERT INTO LecturableSubject VALUES (172, 10, 9);
