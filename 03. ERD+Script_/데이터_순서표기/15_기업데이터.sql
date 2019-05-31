

CREATE TABLE Company
(
    seq number primary key,
    name varchar2(200) not null,
    scale varchar2(30),
    employee_num number,
    established_year number,
    area varchar2(30)
);

drop table COMPANY;


insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (1 , '코스맥스그룹' , '대기업' , 5174 , 1992 , '서울');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (2 , '장금상선(주)' , '중견기업' , 240 , 1989 , '부산');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (3 , '신용보증기금' , '대기업' , 2285 , 1976 , '전국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (4 , '기아자동차(주)' , '대기업' , 31898 , 1944 , '경기');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (5 , '데상트코리아' , '중견기업' , 563 , 2000 , '서울');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (6 , '한국관광공사' , '공기업' , 686 , 1962 , '강원');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (7 , '(주)알토' , '중소기업' , 142 , 1976 , '서울');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (8 , '샘표식품(주)' , '중견기업' , 680 , 1946 , '충북');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (9 , '한국농수산식품유통공사' , '공기업' , 684 , 1967 , '광주');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (10 , '(주)샌드박스네트워크' , '중소기업' , 150 , 2014 , '서울');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (11 , '(주)신세계아이앤씨' , '대기업' , 583 , 1997 , '서울');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (12 , 'Naver InS' , '대기업' , 150 , 2009 , '서울');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (13 , '(주)한국생활건강' , '중소기업' , 110 , 2011 , '경기');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (14 , '금호아시아나그룹' , '대기업' , 24000 , 1946 , '전국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (15 , '(주)에듀윌' , '중견기업' , 450 , 1992 , '서울');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (16 , '(주)쏘카' , '중소기업' , 271 , 2011 , '전국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (17 , '한전KPS' , '공기업' , 6191 , 1984 , '경북');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (18 , 'SK텔레콤' , '대기업' , 4945 , 1984 , '전국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (19 , '와디즈(주)' , '중소기업' , 107 , 2012 , '경기');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (20 , '(주)다나와' , '중소기업' , 250 , 2000 , '서울');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (21 , '에이에스엠엘코리아(주)' , '외국계' , 1000 , 1996 , '경기');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (22 , '사단법인 한국전기철도 기술협회' , '중소기업' , 20 , 1998 , '전국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (23 , '(주)코스알엑스' , '중소기업' , 50 , 2013 , '경기');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (24 , '(주)윤커뮤니케이션즈' , '중소기업' , 102 , 2006 , '서울');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (25 , '(주)티몬' , '중견기업' , 1300 , 2010 , '서울');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (26 , '(주)GC녹십자그룹' , '중견기업' , 2034 , 1969 , '전국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (27 , '도미노피자' , '중견기업' , 425 , 1989 , '광주');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (28 , '(주)아이센스' , '중견기업' , 675 , 2000 , '강원');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (29 , '(주)디유닛' , '중소기업' , 51 , 2015 , '서울');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (30 , '플렉스폼코리아(유)' , '중소기업' , 12 , 2014 , '충남');

-- 외국
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (31 , '(주)티비에이치글로벌' , '중견기업' , 400 , 2000 , '홍콩');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (32 , '(주)탑코' , '중소기업' , 97 , 2014 , '미국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (33 , '(주)샤바스' , '중소기업' , 85 , 1997 , '중국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (34 , '(주)토아리' , '중소기업' , 98 , 2015 , '스페인');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (35 , '롯데홈쇼핑' , '대기업' , 928 , 2001 , '미국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (36 , '콘텐츠연합플랫폼' , '중소기업' , 62 , 2012 , '중국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (37 , '한국재정정보원' , '공기업' , 160 , 2016 , '일본');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (38 , '광동제약' , '중견기업' , 993 , 196. , '일본');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (39 , '엔테크서비스(주)' , '중견기업' , 570 , 2011 , '일본');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (40 , '(주)엔씨소프트' , '대기업' , 3378 , 1997 , '중국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (41 , '(주)플레이타임그룹' , '중소기업' , 350 , 2001 , '중국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (42 , '(주)블루인터내셔널' , '중소기업' , 20 , 2010 , '중국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (43 , '(주)솔바텍' , '중소기업' , 20 , 2005 , '홍콩');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (44 , '(주)앤비젼' , '중소기업' , 64 , 2003 , '홍콩');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (45 , '디캐이' , '중소기업' , 300 , 1994 , '홍콩');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (46 , '잡코리아' , '중소기업' , 275 , 1996 , '미국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (47 , '(주)까브드뱅' , '중소기업' , 52 , 1994 , '미국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (48 , 'AGENSI PEKERJAAN SELPEO SDN BHD' , '외국계' , 10 , 2013 , '말레이시아');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (49 , '워시프렌즈' , '중소기업' , 72 , 2016 , '미국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (50 , '(주)I두젠' , '중소기업' , 20 , 2001 , '일본');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (51 , '(주)해커스어학원' , '중소기업' , 450 , 1998 , '인도네시아');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (52 , '(주)어나더무드' , '중소기업' , 50 , 2011 , '인도네시아');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (53 , 'SK인포섹(주)' , '대기업' , 1306 , 2000 , '말레이시아');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (54 , '(주)컴퓨존' , '외국계' , 411 , 1999 , '필리핀');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (55 , '메가존' , '중견기업' , 500 , 1998 , '캄보디아');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (56 , '(주)멀티캠퍼스' , '외국계' , 710 , 2000 , '호주');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (57 , '(주)생각연구소' , '중소기업' , 70 , 2007 , '중국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (58 , '(주)인터파크JP' , '중견기업' , 1231 , 1996 , '일본');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (59 , '농수산식품유통공사' , '공기업' , 699 , 1986 , '미국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (60 , '비건팩토리' , '외국계' , 30 , 2017 , '미국');

insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (61 , '국제연합식량농업기구' , '공기업' , 699 , 2011 , '인도네시아');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (62 , '(주)카카오' , '중견기업' , 2705 , 1995 , '미국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (63 , '(주)민스샵' , '외국계' , 30 , 2009 , '동남아');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (64 , '(주)씨티티디' , '중소기업' , 100 , 2009 , '브라질');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (65 , '(주)아이캠퍼' , '중소기업' , 30 , 2013 , '브라질');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (66 , '옐로오투오' , '중견기업' , 200 , 2011 , '러시아');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (67 , '디저트메이커스' , '중소기업' , 100 , 2015 , '미국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (68 , '유빈스(주)' , '대기업' , 575 , 2005 , '미국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (69 , '(주)영원무역' , '중견기업' , 460 , 1947 , '중국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (70 , '(주)이지로보틱스' , '중소기업' , 64 , 2001 , '중국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (71 , '(주)카카오페이지' , '중견기업' , 190 , 2010 , '중국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (72 , '(주)더에스엠씨그룹' , '중소기업' , 250 , 2010 , '일본');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (73 , '(주)에이메르' , '외국계' , 10 , 2018 , '일본');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (74 , '(주)엠플렉스' , '외국계' , 20 , 2016 , '일본');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (75 , '(주)제이숲' , '중소기업' , 28 , 2017 , '일본');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (76 , '디알에프(주)' , '중소기업' , 4 , 2017 , '미국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (77 , '(주)코리아보드게임즈' , '중소기업' , 76 , 2004 , '중국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (78 , '아이다코스메틱' , '중소기업' , 5 , 2012 , '중국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (79 , '리빙듀오' , '중소기업' , 10 , 2016 , '미국');
insert into Company (seq , name , scale , employee_num , established_year , area) VALUES (80 , '서브원' , '대기업' , 789 , 2018 , '일본');

--허구

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (81, '바이닉스', '대기업', 20000, 1996, '전국');
    
INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (82, '셀뜨리온', '대기업', 15000 , 1997, '전국');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (83, '샘숭전자', '대기업', 50000, 1992, '전국');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (84, '앰엘비', '대기업', 2800, 1999, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (85, '구오롱과학', '대기업', 1200, 1998, '대전');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (86, '피이스', '대기업', 1800, 1996, '충북');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (87, 'AG모빌리언스', '대기업', 2200, 1995, '충북');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (88, '속초전자', '대기업', 2000, 1996, '강원');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (89, 'DK전자', '대기업', 1000, 1991, '경북');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (90, '한국전자', '대기업', 2100, 1996, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (91, 'IT수원', '중소기업', 100, 1994, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (92, '한솔앤지', '중소기업', 70, 2004, '경남');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (93, '피에스아이', '중소기업', 70, 2001, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (94, '경남전자', '중소기업', 20, 2012, '경남');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (95, '상용전자', '대기업', 1200, 1999, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (96, '너우기술', '대기업', 1000, 2000, '전북');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (97, '한우전자', '중소기업', 30, 2007, '전남');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (98, '한일정보통신', '대기업', 2600, 2001, '전국');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (99, '강릉전자', '대기업', 1500, 2009, '강원');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (100, '이아티아이', '대기업', 1600, 2003, '전남');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (101, '네빛소프트', '대기업', 1900, 2006, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (102, '두시트래픽', '대기업', 1750, 2005, '경북');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (103, '구세계 InC', '대기업', 1200, 2002, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (104, '현재블록체인', '대기업', 2000, 2011, '부산');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (105, '광주전자', '대기업', 1600, 2010, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (106, '조은시스템', '중소기업', 50, 2010, '충남');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (107, '와이티앤지', '중소기업', 40, 2011, '강원');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (108, '악스넷', '중소기업', 80, 2014, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (109, '두일네트웍스', '대기업', 2000, 2000, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (110, '아티넷', '중소기업', 70, 2013, '충북');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (111, '우스코 ICT', '중소기업', 90, 2015, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (112, 'DB뱅크', '중소기업', 30, 2016, '충북');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (113, '랑네트', '대기업', 1000, 2014, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (114, '아세아나DBT', '중소기업', 40, 2016, '경북');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (115, '샘숭에스디에스', '대기업', 2000, 1998, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (116, '하우기술', '중소기업', 50, 2013, '경남');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (117, '알컴디엠디', '중소기업', 90, 2011, '대구');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (118, '두날', '대기업', 1000, 2013, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (119, '투스', '대기업', 2000, 2012, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (120, '두국정보인증', '중소기업', 40, 2016, '인천');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (121, '브릿지텍', '중소기업', 50, 2013, '충북');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (122, '와루온', '중소기업', 40, 2012, '충남');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (123, '캄텍시스템', '중소기업', 30, 2013, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (124, '이앤지오토', '중소기업', 70, 2012, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (125, '오스코', '대기업', 2000, 1996, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (126, '이랑테크놀로지', '중소기업', 100, 2011, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (127, '케이티아이엔엑스', '대기업', 1000, 2012, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (128, '세솔인티큐브', '중소기업', 120, 2011, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (129, '비썸', '중소기업', 400, 2014, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (130, '다운비트', '중소기업', 300, 2015, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (131, '과거테크놀로지', '중소기업', 200, 2011, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (132, '투투코리아', '중소기업', 300, 2009, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (133, '악토즈소프트', '중소기업', 400, 2013, '충북');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (134, '앱젠', '중소기업', 200, 2014, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (135, '앰메이드', '중견기업', 600, 2011, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (136, '엘게임', '중견기업', 800, 2001, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (137, '고투스', '중견기업', 900, 2002, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (138, '유투온', '중소기업', 200, 2016, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (139, '앱튠', '중소기업', 100, 2011, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (140, '투데이토즈', '중견기업', 700, 2012, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (141, '풀어비스', '중견기업', 600, 2009, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (142, '엑씨소프트', '대기업', 2100, 2003, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (143, '버드플라이', '중소기업', 40, 2013, '충남'); 

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (144, '조은게임빌', '중견기업', 700, 2012, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (145, '액션게임즈', '중소기업', 300, 2010, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (146, '러닝메이트', '중견기업', 500, 2009, '경남');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (147, '플레이위트', '중소기업', 300, 2008, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (148, '니오위즈홀딩스', '중소기업', 100, 2014, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (149, '에브시스터즈', '중견기업', 700, 2011, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (150, '에이디게임즈', '중소기업', 400, 2010, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (151, 'MHM엔터테인먼트', '대기업', 3000, 2000, '전국');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (152, '엑슨지티', '중견기업', 900, 2011, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (153, '파스파', '중소기업', 400, 2014, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (154, '섬에이지', '중소기업', 300, 2014, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (155, '앰마블', '대기업', 2000, 2000, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (156, '킹스타임즈', '중소기업', 80, 2014, '충북');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (157, '에오위즈', '중견기업', 500, 2012, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (158, '엔조이시티', '중견기업', 600, 2001, '경기');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (159, '킹퀸게임즈', '중견기업', 800, 2000, '서울');

INSERT INTO Company (seq, name, scale, employee_num, established_year, area)
    VALUES (160, '갓게임즈', '대기업', 1600, 2000, '서울');
    


select * from company;




