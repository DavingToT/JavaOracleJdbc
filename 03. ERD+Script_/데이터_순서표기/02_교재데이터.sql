CREATE TABLE Textbook
(
    seq number primary key,
    name varchar2(100) not null,
    publisher varchar2(50),
    author varchar2(100),
    status number default 1 not null
);

SELECT * FROM Textbook;


INSERT INTO Textbook VALUES (1, 'Java의 정석', '도우출판', '남궁성', 1);

INSERT INTO Textbook VALUES (2, '데이터베이스 개론', '한빛아카데미', '김연희', 1);

INSERT INTO Textbook VALUES (3, '제대로 배우는 프론트엔드 웹 개발 ', '비제이퍼블릭(BJ퍼블릭)', '크리스 아키노, 토드 간디', 1);

INSERT INTO Textbook VALUES (4, 'Do it! 오라클로 배우는 데이터베이스 입문', '이지스퍼블리싱', '이지훈', 1);

INSERT INTO Textbook VALUES (5, 'Do it! HTML5+CSS3 웹 표준의 정석', '이지스퍼블리싱', '고경희', 1);

INSERT INTO Textbook VALUES (6, '인사이드 자바스크립트 Inside JavaScript', '한빛미디어 ', '송형주,고현준 공저', 1);

INSERT INTO Textbook VALUES (7, 'jQuery 최고의 교과서', '한빛미디어', '주식회사 시프트브레인', 1);

INSERT INTO Textbook VALUES (8, 'Node.js 교과서', '길벗', '조현영', 1);

INSERT INTO Textbook VALUES (9, 'C언어 Express', '생능출판사', '천인국', 1);

INSERT INTO Textbook VALUES (10, 'All-ln-One Java 올인원 자바 애플리케이션 개발', '와우북스', '전병선', 1);

INSERT INTO Textbook VALUES (11, '알고리즘으로 배우는 인공지능, 머신러닝, 딥러닝 입문', '위키북스', '김의중', 1);

INSERT INTO Textbook VALUES (12, '마이바티스 프로그래밍', '에이콘출판사', '이동국', 1);

INSERT INTO Textbook VALUES (13, 'Do it! 점프 투 파이썬', '이지스퍼블리싱', '박응용', 1);

INSERT INTO Textbook VALUES (14, 'R 통계 프로그래밍 입문', '에이콘출판사', '프라반잔 나라야나차르 타따르', 1);

INSERT INTO Textbook VALUES (15, 'Hadoop과 Solr를 이용한 기업용 검색 시스템 구축', '에이콘출판사', '리쉬케쉬 카람벨카', 1);

INSERT INTO Textbook VALUES (16, '이것이 리눅스다', '한빛미디어', '우재남', 1);
