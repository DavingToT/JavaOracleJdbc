-- 과정데이터

CREATE TABLE Course
(
    seq number primary key,
    name varchar2(200) not null,
    status number default 1 not null
);


INSERT INTO course (seq, name)
VALUES (1, '웹 어플리케이션 응용 SW 실무 개발자 양성 과정');
INSERT INTO course (seq, name)
VALUES (2, 'Java and Python 기반 응용SW 개발자 양성과정');
INSERT INTO course (seq, name, status)
VALUES (3, '웹 어플리케이션 응용 SW 실무 개발자 양성 과정', 0);
INSERT INTO course (seq, name)
VALUES (4, '웹개발 and 머신러닝을 통한 인공지능 응용 SW 엔지니어링 양성과정');
INSERT INTO course (seq, name)
VALUES (5, '웹기반 빅데이터 분석 응용SW개발자 양성과정');
INSERT INTO course (seq, name)
VALUES (6, 'Python and Java 응용SW실무개발자 양성 과정 ');
INSERT INTO course (seq, name)
VALUES (7, '시큐어 코딩  and  웹 애플리케이션 응용SW개발자 양성 과정');
INSERT INTO course (seq, name)
VALUES (8, 'JAVA를 활용한 사물인터넷(IOT) 응용SW개발자 양성과정');
INSERT INTO course (seq, name)
VALUES (9, '웹 애플리케이션을 활용한 빅데이터 응용SW개발자 양성 과정');
INSERT INTO course (seq, name)
VALUES (10, '애플리케이션 성능 최적화 구현 개발자 양성과정');
INSERT INTO course (seq, name)
VALUES (11, '웹 and 보안엔지니어링 양성과정');

INSERT INTO course (seq, name)
VALUES (12, '스크립트 기반 풀스택 응용SW실무개발자 양성 과정');
INSERT INTO course (seq, name)
VALUES (13, '애플리케이션 성능 최적화 구현 개발자 양성과정');
INSERT INTO course (seq, name)
VALUES (14, '정보시스템개발 및 운영프로세스구축을 통한 실무전문가양성과정');
INSERT INTO course (seq, name)
VALUES (15, '정보시스템개발 전문가양성과정');
INSERT INTO course (seq, name)
VALUES (16, '스크립트 기반 풀스택 응용SW실무개발자 양성 과정');
INSERT INTO course (seq, name)
VALUES (17, '정보시스템운영 및 네트워크 보안 전문가 B');

SELECT * FROM course;