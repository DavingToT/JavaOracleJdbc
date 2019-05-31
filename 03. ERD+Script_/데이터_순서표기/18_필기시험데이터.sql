
CREATE TABLE WrittenTest
(
    seq number primary key,
    question varchar2(2000),
    answer varchar2(2000),
    opensubject_seq number
        references OpenSubject(seq) not null
);



INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (1,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 1);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (2,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 1);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (3,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',1);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (4,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',1);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (5,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',1);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (6,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',1);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (7,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',1);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (8,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',1);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (9,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',1);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (10,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',1);    


-----------------------------------------------------------------------------------------------------------------------------

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (11,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 2);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (12,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 2);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (13,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',2);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (14,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',2);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (15,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',2);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (16,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',2);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (17,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',2);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (18,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',2);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (19,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',2);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (20,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',2);    


-----------------------------------------------------------------------------------------------------------------------------


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (21,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 3);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (22,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 3);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (23,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',3);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (24,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',3);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (25,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',3);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (26,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',3);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (27,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',3);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (28,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',3);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (29,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',3);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (30,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',3);    


---------------


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (31,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 4);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (32,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 4);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (33,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',4);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (34,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',4);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (35,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',4);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (36,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',4);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (37,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',4);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (38,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',4);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (39,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',4);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (40 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',4);    

---------------------


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (41,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 5);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (42,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 5);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (43,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',5);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (44,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',5);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (45,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',5);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (46,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',5);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (47,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',5);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (48,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',5);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (49,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',5);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (50 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',5);    

---------------------------



INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (51,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 6);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (52,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 6);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (53,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',6);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (54,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',6);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (55,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',6);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (56,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',4);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (57,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',6);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (58,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',6);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (59,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',6);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (60 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',6);    


-----------------




INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (61,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 7);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (62,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 7);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (63,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',7);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (64,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',7);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (65,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',7);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (66,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',7);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (67,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',7);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (68,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',7);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (69,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',7);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (70 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',7);   


--------------


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (71,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 8);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (72,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 8);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (73,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',8);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (74,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',8);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (75,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',8);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (76,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',8);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (77,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',8);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (78,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',8);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (79,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',8);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (80 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',8); 
----


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (81,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 9);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (82,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 9);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (83,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',9);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (84,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',9);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (85,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',9);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (86,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',9);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (87,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',9);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (88,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',9);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (89,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',9);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (90 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',9);   


---


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (91,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 10);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (92,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 10);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (93,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',10);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (94,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',10);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (95,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',10);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (96,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',10);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (97,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',10);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (98,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',10);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (99,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',10);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (100 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',10);   


----


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (101,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 11);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (102,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 11);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (103,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',11);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (104,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',11);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (105,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',11);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (106,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',11);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (107,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',11);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (108,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',11);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (109,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',11);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (110 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',11);   

--


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (111,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 12);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (112,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 12);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (113,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',12);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (114,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',12);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (115,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',12);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (116,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',12);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (117,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',12);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (118,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',12);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (119,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',12);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (120 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',12);   

--


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (121,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 13);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (122,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 13);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (123,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',13);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (124,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',13);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (125,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',13);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (126,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',13);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (127,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',13);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (128,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',13);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (129,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',13);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (130 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',13);   

--


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (131,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 14);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (132,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 14);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (133,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',14);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (134,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',14);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (135,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',14);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (136,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',14);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (137,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',14);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (138,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',14);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (139,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',14);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (140 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',14);   


--


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (141,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 15);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (142,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 15);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (143,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',15);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (144,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',15);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (145,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',15);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (146,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',15);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (147,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',15);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (148,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',15);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (149,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',15);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (150 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',15);   


--


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (151,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 16);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (152,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 16);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (153,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',16);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (154,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',16);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (155,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',16);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (156,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',16);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (157,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',16);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (158,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',16);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (159,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',16);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (160 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',16);   

--


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (161,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 17);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (162,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 17);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (163,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',17);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (164,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',17);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (165,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',17);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (166,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',17);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (167,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',17);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (168,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',17);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (169,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',17);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (170 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',17);   



---


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (171,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 18);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (172,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 18);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (173,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',18);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (174,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',18);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (175,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',18);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (176,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',18);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (177,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',18);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (178,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',18);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (179,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',18);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (180 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',18);   


--


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (181,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 19);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (182,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 19);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (183,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',19);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (184,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',19);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (185,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',19);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (186,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',19);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (187,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',19);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (188,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',19);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (189,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',19);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (190 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',19);   


--


INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (191,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 20);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (192,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 20);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (193,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',20);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (194,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',20);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (195,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',20);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (196,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',20);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (197,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',20);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (198,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',20);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (199,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',20);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (200 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',20);   

--
INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (201,'문항1]  아래 빈칸에 들어갈 알맞은 용어를 선택하세요.
(        )은 일반적으로 작업이 끝난 후, 처음에 요구된 것과 현재 상태의 차이를 발견하기 위해 수행하는 활동이다.
즉, 제품이 만들어지고 난 뒤 요구된 기능들이 제대로 작동하는지 확인하는 활동도  (        )의 일종이라고 할 수 있다.
1) 개발 2) 테스트 3) 운영 4) 유지보수','답안 : 2', 21);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (202,'[문항2]  아래 문장에 해당되는 테스트개념은 무엇인지를 선택하세요.
- 응용프로그램 또는 시스템의 정상 작동 여부를 확인하기 위한 테스트개념
1) 소프트웨어 테스팅 2) 전통적인 테스트 개념 3) 현대적인 테스트 개념 4) 결함예방활동','답안 : 2', 21);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (203,'[문항3]  다음 중 소프트웨어 결함의 원인이 아닌 것은?
1) 개발자는 소프트웨어나 시스템 또는 문서를 작성할 때 결함을 만드는 오류를 범할 수 없다.
2) 코드에 존재하는 결함은 장애의 원인이 된다. 이때 시스템은 의도된 대로 동작하지 않거나, 동작하지 말아야함에도 동작한다.
3) 소프트웨어, 시스템, 문서의 결함은 장애의 원인이 되지만, 모든 결함이 장애를 일으키는 것은 아니다.
4) 장애는 이와 같은 결함에 의해서 뿐만 아니라 환경적인 조건에 의해서도 발생한다.','답안 : 1',21);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (204,'[문항4]  V-모델은 요구사항 정의 및 분석, 시스템 설계, 구현, 
테스팅이라는 일련의 단계를 통해 소프트웨어(시스템)를 개발하는 개발 모델에 근간을 두고 있는데 이해 해당 하는 개발 모델을 선택하세요.
1) 나선형 모델 2) 프로토타입 모델 3) 반복 모델 4) 폭포수모델','답안 : 4',21);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (205,'[문항5]  소프트웨어 테스팅의 기본 원칙에 해당되지 않는 것을 선택하세요.
1) 검증과 확인 2) 테스팅 원리 3) 테스팅 용이성 4) 테스팅 편의성','답안 : 4',21);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (206,'[문항6]  소프트웨어가 특정 기능을 올바르게 구현하였는지를 보장하는 일련의 작업을 의미하는 것을 무엇이라 하는가?
1) 검증 2) 확인 3) SQA(Software Quality Assurance) 4) 결함증명','답안 : 1',21);

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (207,'[문항7]  테스팅의 원리 중 잘못 기술된 것을 선택하세요.
1) 테스팅은 결함이 존재함을 밝히는 활동이다. 2) 완벽한 테스팅은 가능하다.
3) 테스팅은 개발 초기에 시작한다. 4) 결함집중-적은 수의 모듈에서 대다수의 결함이 발견된다.','답안 : 2',21);
        

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (208,'[문항8]  테스팅의 목표는 오류를 발견하는 것이며, 
훌륭한 테스트는 오류를 발견할 확률이 높은 것이다. 따라서 개발자는 “테스트 용이성”을 염두하여 컴퓨터 기반 시스템이나 제품을 설계하고 개발 하여야 하는데, 테스트 가능한 소프트웨어의 특징이 아닌 것은 무엇인지 선택하세요.
1) 운용성 2) 관찰 가능성 3) 제어가능성 4) 모듈가능성','답안 : 4',21);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (209,'[문항9]  테스트 대상의 내부구조(코드)를 참조하지 않고 테스트 베이시스(Test Basis), 그리고 개발자와 테스트, 사용자들의 경험을 바탕으로 기능적 혹은 비기능적 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 1',21);    

INSERT INTO WrittenTest (seq, question, answer, opensubject_seq)
    VALUES (210 ,'[문항10]  컴포넌트(단위) 또는 소프트웨어(시스템)의 구조(코드)를 중심으로 테스트 케이스를 도출하고 선택하는 방법은 무엇인가?
1) 블랙박스기법 2) 화이트박스 기법 3) 네비게이션기법 4) 육안기법','답안 : 2',21);   






