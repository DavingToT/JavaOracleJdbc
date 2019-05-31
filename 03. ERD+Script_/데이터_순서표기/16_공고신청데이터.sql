
CREATE TABLE Notice
(
    seq number primary key,
    company_seq number
        references Company(seq) not null,
    salary number,
    deadline date,
    course varchar2(200),
    major varchar2(30),
    student_seq number
        references OpenCourseStudent(seq)
);

SELECT * FROM notice;


INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (1, 1, 20000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'웹 어플리케이션 응용 SW 실무 개발자 양성 과정','전공');    
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (2, 2, 30000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'Java Python 기반 응용SW 개발자 양성과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (3, 3, 40000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'웹개발 머신러닝을 통한 인공지능 응용 SW 엔지니어링 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (4, 4, 30000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'웹기반 빅데이터 분석 응용SW개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (5, 5, 30000000,TO_DATE('2019-08-01','yyyy-mm-dd'),'Python Java 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (6, 6, 25000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'시큐어 코딩  웹 애플리케이션 응용SW개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (7, 7, 32000000, TO_DATE('2019-06-01','yyyy-mm-dd'),'JAVA를 활용한 사물인터넷(IOT) 응용SW개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (8, 8,  20000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'웹 애플리케이션을 활용한 빅데이터 응용SW개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (9,9, 35000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'애플리케이션 성능 최적화 구현 개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (10, 10,20000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'웹 보안엔지니어링 양성과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (11, 11,36000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (12, 12, 56000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'애플리케이션 성능 최적화 구현 개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (13, 13,24000000,TO_DATE('2019-04-01','yyyy-mm-dd'),'정보시스템개발 및 운영프로세스구축을 통한 실무전문가양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (14, 14,36000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'정보시스템개발 전문가양성과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (15, 15,35600000,TO_DATE('2019-06-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (16, 16,18000000,TO_DATE('2019-08-01','yyyy-mm-dd'),'정보시스템운영 및 네트워크 보안 전문가 B','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (17, 17,22000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (18, 18,36000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (19, 19,25000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (20, 20,23000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'Java Python 기반 응용SW 개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (21, 21,24000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'Java Python 기반 응용SW 개발자 양성과정','비전공');

INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (22,22,20000000,TO_DATE('2019-04-01','yyyy-mm-dd'),'웹 어플리케이션 응용 SW 실무 개발자 양성 과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (23,23,30000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'Java Python 기반 응용SW 개발자 양성과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (24,24,40000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'웹개발 머신러닝을 통한 인공지능 응용 SW 엔지니어링 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (25,25,30000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'웹기반 빅데이터 분석 응용SW개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (26,26,30000000,TO_DATE('2019-08-01','yyyy-mm-dd'),'Python Java 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (27,27,25000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'시큐어 코딩  웹 애플리케이션 응용SW개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (28,28,32000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'JAVA를 활용한 사물인터넷(IOT) 응용SW개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (29,29,20000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'웹 애플리케이션을 활용한 빅데이터 응용SW개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (30,30,35000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'애플리케이션 성능 최적화 구현 개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (31,31,20000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'웹 보안엔지니어링 양성과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (32,32,36000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (33,33,56000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'애플리케이션 성능 최적화 구현 개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (34,34,40000000,TO_DATE('2019-04-01','yyyy-mm-dd'),'정보시스템개발 및 운영프로세스구축을 통한 실무전문가양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (35,35,36000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'정보시스템개발 전문가양성과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (36,36,35600000,TO_DATE('2019-06-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (37,37,18000000,TO_DATE('2019-08-01','yyyy-mm-dd'),'정보시스템운영 및 네트워크 보안 전문가 B','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (38,38,22000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (39,39,36000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (40,40,25000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (41,41,23000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'Java Python 기반 응용SW 개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (42,42,24000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'Java Python 기반 응용SW 개발자 양성과정','비전공');

INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (43,43,20000000,TO_DATE('2019-04-01','yyyy-mm-dd'),'웹 어플리케이션 응용 SW 실무 개발자 양성 과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (44,44,40000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'웹개발 머신러닝을 통한 인공지능 응용 SW 엔지니어링 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (45,45,30000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'웹기반 빅데이터 분석 응용SW개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (46,46,30000000,TO_DATE('2019-08-01','yyyy-mm-dd'),'Python Java 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (47,47,25000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'시큐어 코딩  웹 애플리케이션 응용SW개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (48,48,32000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'JAVA를 활용한 사물인터넷(IOT) 응용SW개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (49,49,20000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'웹 애플리케이션을 활용한 빅데이터 응용SW개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (50,50,35000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'애플리케이션 성능 최적화 구현 개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (51,51,20000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'웹 보안엔지니어링 양성과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (52,52,36000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (53,53,56000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'애플리케이션 성능 최적화 구현 개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (54,54,24000000,TO_DATE('2019-04-01','yyyy-mm-dd'),'정보시스템개발 및 운영프로세스구축을 통한 실무전문가양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (55,55,36000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'정보시스템개발 전문가양성과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (56,56,35600000,TO_DATE('2019-05-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (57,57,18000000,TO_DATE('2019-08-01','yyyy-mm-dd'),'정보시스템운영 및 네트워크 보안 전문가 B','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (58,58,22000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (59,59,36000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (60,60,25000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (61,61,23000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'Java Python 기반 응용SW 개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (62,62,24000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'Java Python 기반 응용SW 개발자 양성과정','비전공');

INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (63,63,20000000,TO_DATE('2019-04-01','yyyy-mm-dd'),'웹 어플리케이션 응용 SW 실무 개발자 양성 과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (64,64,30000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'Java Python 기반 응용SW 개발자 양성과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (65,65,40000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'웹개발 머신러닝을 통한 인공지능 응용 SW 엔지니어링 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (66,66,30000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'웹기반 빅데이터 분석 응용SW개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (67,67,30000000,TO_DATE('2019-08-01','yyyy-mm-dd'),'Python Java 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (68,68,25000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'시큐어 코딩  웹 애플리케이션 응용SW개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (69,69,32000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'JAVA를 활용한 사물인터넷(IOT) 응용SW개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (70,70,20000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'웹 애플리케이션을 활용한 빅데이터 응용SW개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (71,71,35000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'애플리케이션 성능 최적화 구현 개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (72,72,20000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'웹 보안엔지니어링 양성과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (73,73,36000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (74,74,56000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'애플리케이션 성능 최적화 구현 개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (75,75,24000000,TO_DATE('2019-04-01','yyyy-mm-dd'),'정보시스템개발 및 운영프로세스구축을 통한 실무전문가양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (76,76,36000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'정보시스템개발 전문가양성과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (77,77,35600000,TO_DATE('2019-06-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (78,78,18000000,TO_DATE('2019-08-01','yyyy-mm-dd'),'정보시스템운영 및 네트워크 보안 전문가 B','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (79,79,22000000,TO_DATE('2019-07-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (80,80,36000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (81,81,25000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'스크립트 기반 풀스택 응용SW실무개발자 양성 과정','비전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (82,82,23000000,TO_DATE('2019-05-01','yyyy-mm-dd'),'Java Python 기반 응용SW 개발자 양성과정','전공');
INSERT INTO Notice (seq, company_seq, salary,deadline, course , major)
    VALUES (83,83,24000000,TO_DATE('2019-06-01','yyyy-mm-dd'),'Java Python 기반 응용SW 개발자 양성과정','비전공');
    