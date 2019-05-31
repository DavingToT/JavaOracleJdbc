CREATE TABLE Board
(
    seq number primary key,
    student_seq number
        references Student(seq) not null,
    title varchar2(100),
    content varchar2(2000) not null,
    regdate date
);

drop table Board;
SELECT * FROM Board;

-- to_date('2019-02-01' , 'yyyy-mm-dd')

INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (1, 4, '여러분', '이제 52분밖에 안 남았어. 달콤한 거짓말이라도 날 좋아한다 해줘. 제발',to_date('2019-02-01' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (2, 112, '님들..', '저 여기다가 말해도되겠죠...!! 좋아하는 애가 생긴거같아요 근데 동생이예요ㅠㅠㅠㅠ 근데 심지어 같은 과정이라 아무한테도 못말하겠어요... 소문 겁나 빨리 퍼질 각이라...ㅠㅠ 같은과 사람은 꼭 피하고싶었는데 마음이 마음대로 되는게 아니었네요 ㅠㅜ... 자괴감듦... 꼭 짝사랑 더 커지기전에 빨리 포기할 방법 없을까요 제발 ㅠㅠㅠㅠㅠ 살려죠...',to_date('2019-02-10' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (3, 388, '힘들다', '사는게 힘들어도 늘 새롭다. 그거면 된거지 뭐.',to_date('2019-02-11' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (4, 282, '뭐임?', '인신 콰이엇존에 자주 오는 체크셔츠 입은 남자 뭐하는 사람인가요? 특히 여성분들 지나다닐 때마다 큰 소리로 이러는데 한 두번도 아니고 정작 본인은 공책에 이상한 필사나 하면서 지랄이네요..','2019-02-11');
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (5, 13, '님들아', '오늘이 세계 제2회 이강현의 날인가요..? 캠퍼스 돌아다니면서 무서워서 깜짝깜짝 놀랐어요....',to_date('2019-02-12' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (6, 76, '세윤아', '내가 먼저 연락할 용기가 없어서 결국은 너한테서 연락이 오기만을 기다려',to_date('2019-02-12' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (7, 89, '후..', '나도 내가 무서워졌다. 그렇게 추악하고 더럽고 혐오스러운 인간인 줄 이제야 알았다. 더군다나 누구보다 날 믿어준 사람에게 상처를 준 이후에야 이를 깨달았다는 게 더 무섭다. 도대체 어떤 생각으로 세상에서 가장 나를 생각해준 사람에게 그런 행동을 했을까....',to_date('2019-02-12' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (8, 32, '질문염', '학교에서 밀리해야 되는데 어디서하죠?',to_date('2019-02-13' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (9, 54, '아오 고민염', '여자친구가 통금이 너무 엄해요.. 9시까진 집에 들어가야한다고 하는데, 학기 중엔 정말 저녁만 먹고 집에 보내는 일이 다반사입니다..  짜증납니다.',to_date('2019-02-13' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (10, 178, '마니또 세키야', '마니또 나쁜 놈. 하나를 안 챙겨주냐 기분 더럽다',to_date('2019-02-13' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (11, 276, '여러분 !!!!!!!!', '같은 과정 듣는 갈색머리에 파랑 브릿지 하신 여성분 찾습니다. 첫눈에 반했어요',to_date('2019-02-14' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (12, 218, '인스타에서', '인스타에서 전여친들을 검색해보는 심리는 무엇인가요? 그리워서?',to_date('2019-02-14' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (13, 56, '롯데세키들아', '제발 롯데 좀 해체시켜주세요 평균 연봉이 1인당 2억이라는데 어떻게 돈을 저렇게 받고 야구를 저렇게 할 수가 있죠?',to_date('2019-02-14' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (14, 79, '이제 컴백해요', '여러부누뉴ㅜㅜㅜㅜㅜㅜ 제 최애가 컴백해요 진짜 너무너머누머눔 ㅠㅜㅠㅜㅠㅜㅠㅜㅠㅜㅠ w잘생겨서 눈물이 나고 지금 창문열고 소리지르고 싶은데 그러지를 못ㅎ해서 여기에서라도 말해요 대나무숲은 익명으로 외치는 공간이니까요ㅠㅜㅠㅜㅠㅜㅠㅜㅜㅠㅜㅠㅜㅜ 오빠 죽도록 사랑해 ㅜㅜㅠㅜㅜㅜㅜㅜㅜㅜㅜ',to_date('2019-02-14' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (15, 45, '사람이 말이여', '사람은 고쳐쓰는게 아니에요! 아니다 싶은 사람과는 빠른 안녕 하는게 정신건강에 이롭습니다.',to_date('2019-02-15' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (16, 65, '음 흠..좀 무섭군요', '조금만 용기를 내서 다가가보세요...! 설령 실패하더라도 부끄러움은 잠시지만 도전하지 못한 후회는 평생 간답니다!!!',to_date('2019-02-15' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)   
    VALUES (17, 78, '연애를 못해서 걱정이에요', '연애를 못해서 걱정이에요...',to_date('2019-02-16' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (18, 98, '만우절', '4월 1일 만우절 거짓말처럼 그녀가 내 앞에 나타나면 좋겠다.',to_date('2019-02-17' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (19, 52, '질문합니다.', '배에서 꼬르륵 소리 안 나게 하는 법 있나요ㅜㅜ 알려주세요  요즘 다이어트한다고 식단조절 중인데요 강의실에서 남들 다 들리게 꼬르륵 소리가 너무 많이 나서 슬퍼요 ...',to_date('2019-02-18' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (20, 67, '어카죠', '대숲 동기중에 정말 제가 봐도 귀여운 애가 있어요ㅠㅠㅠㅠ 좋아하는 건 아닌데ㅠㅠㅠ 볼때마다 내적심쿵 오져요 너무 귀여워... 어떡하죠 ',to_date('2019-02-18' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (21, 193, '진짜 개 짜증난다', '진짜 씨발 개 좆같다. 왜씨발 군대를 가야하지???? ',to_date('2019-02-19' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (22, 78, '야 너 다봤다.', '카톡 차단하려고 간만에 프사 봤는데, 남자랑 둘이 찍은 사진이더라. 아마 남친이겠지. 나랑 사귈 때는 연애중인거 티 내기 싫어하더니. ',to_date('2019-02-20' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (23, 361, '님들아', '배고파요 맛난 학식 추천좀ㅠㅠ',to_date('2019-02-20' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (24, 355, '힘들다...', '오늘 너와 함께한 추억들이 담긴 사진들을 하나하나 너를 잊기위해 지웠어 이 사진들을 지우는데 얼마나 오래 걸렸는지 모르겠더라 ',to_date('2019-02-21' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (25, 255, '음...', '솔직히 이 감정이 친근함인지 호감인지는 잘 모르겠는데, 저야 눈치가 없으니까(?) 제 감정도 모르겠어요ㅜ ',to_date('2019-02-21' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (26, 248, '여러분', '각자가 생각하는 카페 공부 매너는 무엇인가요? ',to_date('2019-02-22' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (27, 233, '안녕하세요', '1학년을 마치고 군대 다녀오기 위해 휴학한 아싸입니다 ',to_date('2019-02-23' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (28, 222, '힘드네요', '저 며칠전에 이별했어요 그런데 이별하고 얼마 안돼서 다른 여성분과 밥도 같이 먹고 연극을 둘이서 보러 가셨더라고요..제가 너무 예민한 것 같기도 하지만 기분이 상하는 거는 어쩔 수 없네요... ',to_date('2019-02-23' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (29, 111, '추천좀염', '식당중에 맛집 좀 추천해주셍요!!! 맨날 먹던것만 먹다보디까 너무 질령ㅜㅜㅜㅜㅜㅜㅜ ',to_date('2019-02-24' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (30, 118, '오 당신이여 ', '아, 지금 와서 보니 당신은 너무나 상냥했고, 나는 너무나 오만했다',to_date('2019-02-24' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (31, 11, '질문있습니다.', '과정에 자일리톨 같은 껌이나 사탕류 반입 가능하다고 보시나요?? 의견이 궁금합니다 ',to_date('2019-02-25' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (32, 181, '님들 이거 맞나여?', '여자애한테 같이 벚꽃보러가자고 하면 ...고백하는거나 마찬가지겠죠? ',to_date('2019-02-25' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (33, 212, '헉', '저는 담배는 안 피우는데 이상하게 담배피는 여자가 너무 좋아요. 후 하고 연기 뿜는게 너무 섹시하달까..',to_date('2019-02-26' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (34, 221, '아스날 우승각', '아스날 무패우승 시절부터 축구를 봐온 축잘알입니다. 객관적 인 축구실력 비교 들어갑니다 ',to_date('2019-02-26' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (35, 54, 'ㅋㅋ', 'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ ',to_date('2019-02-26' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (36, 67, '이건 어떤가요?', '좋은 사람이지만 꼭 이성친구가 아니더라도 다른 관계로 사이를 이어나갈 수 있다고 생각해요. 흠좀무',to_date('2019-02-26' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (37, 289, '아햏햏', 'xx야 좋아해..!ㅎㅎ 너가 밝게 웃을 때마다 기분이 너무너무 좋아져. 그래서 오늘 하루도 너가 웃을 일만 있으면 좋겠어. ',to_date('2019-02-26' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (38, 102, '짝남에게', '짝남에게 미련을 버리는 방법을 알고 싶어요!',to_date('2019-02-27' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (39, 135, '요즘 정치', '요즘 정치를 보면 수준 비슷한 두 팀 사이의 야구경기를 보는 것 같다. 공수가 바뀌어도 하는 짓이 똑같으니까. ',to_date('2019-02-27' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (40, 158, '짜증나요', '제 여친은 여자보다 남자랑 잘 친해지고 노는 거 같아요. 짜증나요 ',to_date('2019-02-27' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (41, 198, '위로좀', '오늘 단톡방에서 동기한테 공개고백했다가 차였어요 ㅜㅜㅜ  ',to_date('2019-03-01' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (42, 108, '오빠', '오빠는 제가 오빠를 좋아한다는 걸 알까요 ㅜㅜㅎㅎ  더 티 내고 싶은데 부담스러워 할까봐 못 내겠어요  오빠 조아해용퓨ㅠㅠㅠㅠ ',to_date('2019-03-01' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (43, 180, '꿀잼은 가까이 있다.', '아 다시 수능 공부하고 싶다. 수능 공부가 꿀잼이었는데 ㅋㅋ ',to_date('2019-03-02' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (44, 109, '3월이 간다.', '3월이 다 끝나간다. 학교에 꽃 내음이 풍기기 시작한다. 나에게는 22번째 3월이다. ',to_date('2019-03-03' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (45, 190, '힘드네요...', '아 진짜 제 성격 너무 싫어요....... ',to_date('2019-03-04' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (46, 201, '행쇼', '다른 말 안 하겠습니다. 행복하세요 여러분 ',to_date('2019-03-04' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (47, 209, '여러분 사랑합니다.', '같이 밥먹어주세요... ',to_date('2019-03-06' , 'yyyy-mm-dd'));
INSERT INTO Board (seq, student_seq, title, content, regdate)
    VALUES (48, 201, '바보', '저는 바보에오',to_date('2019-03-08' , 'yyyy-mm-dd'));
    
    select * from Board;