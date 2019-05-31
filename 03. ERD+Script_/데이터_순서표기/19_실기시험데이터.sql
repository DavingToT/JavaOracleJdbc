

CREATE TABLE PerformanceTest
(
    seq number primary key,
    question varchar2(2000),
    answer varchar2(2000),
    opensubject_seq number
        references OpenSubject(seq) not null
);

----------------------------------------------------------------------------------------------------------
select * from PerformanceTest;

delete from PerformanceTest where seq between 1 and 500;




INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (1,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 1);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (2,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 1);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (3,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',1);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (4,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',1);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (5,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',1);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (6,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',1);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (7,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',1);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (8,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',1);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (9,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',1);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (10,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',1);    


-----------------------------------------------------------------------------------------------------------------------------


INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (11,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 2);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (12,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 2);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (13,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',2);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (14,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',2);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (15,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',2);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (16,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',2);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (17,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',2);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (18,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',2);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (19,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',2);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (20,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',2);    


-----------------------------------------------------------------------------------------------------------------------------



INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (21,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 3);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (22,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 3);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (23,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',3);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (24,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',3);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (25,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',3);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (26,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',3);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (27,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',3);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (28,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',3);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (29,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',3);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (30,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',3);    


-----------------------------------------------------------------------------------------------------------------------------



INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (31,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 4);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (32,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 4);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (33,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',4);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (34,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',4);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (35,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',4);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (36,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',4);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (37,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',4);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (38,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',4);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (39,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',4);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (40,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',4);    


-----------------------------------------------------------------------------------------------------------------------------



INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (41,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 5);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (42,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 5);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (43,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',5);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (44,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',5);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (45,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',5);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (46,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',5);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (47,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',5);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (48,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',5);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (49,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',5);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (50,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',5);    


-----------------------------------------------------------------------------------------------------------------------------



INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (51,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 6);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (52,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 6);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (53,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',6);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (54,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',6);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (55,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',6);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (56,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',6);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (57,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',6);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (58,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',6);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (59,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',6);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (60,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',6);    


-----------------------------------------------------------------------------------------------------------------------------



INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (61,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 7);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (62,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 7);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (63,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',7);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (64,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',7);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (65,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',7);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (66,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',7);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (67,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',7);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (68,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',7);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (69,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',7);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (70,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',7);    


-----------------------------------------------------------------------------------------------------------------------------



INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (71,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 8);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (72,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 8);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (73,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',8);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (74,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',8);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (75,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',8);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (76,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',8);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (77,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',8);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (78,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',8);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (79,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',8);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (80,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',8);    


-----------------------------------------------------------------------------------------------------------------------------



INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (81,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 9);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (82,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 9);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (83,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',9);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (84,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',9);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (85,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',9);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (86,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',9);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (87,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',9);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (88,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',9);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (89,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',9);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (90,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',9);    


-----------------------------------------------------------------------------------------------------------------------------



INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (91,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 10);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (92,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 10);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (93,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',10);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (94,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',10);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (95,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',10);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (96,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',10);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (97,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',10);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (98,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',10);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (99,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',10);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (100,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',10);    


-----------------------------------------------------------------------------------------------------------------------------



INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (101,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 11);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (102,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 11);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (103,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',11);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (104,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',11);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (105,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',11);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (106,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',11);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (107,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',11);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (108,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',11);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (109,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',11);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (110,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',11);    


-----------------------------------------------------------------------------------------------------------------------------



INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (111,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 12);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (112,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 12);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (113,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',12);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (114,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',12);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (115,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',12);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (116,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',12);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (117,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',12);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (118,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',12);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (119,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',12);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (120,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',12);    


-----------------------------------------------------------------------------------------------------------------------------



INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (121,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 13);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (122,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 13);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (123,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',13);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (124,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',13);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (125,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',13);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (126,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',13);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (127,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',13);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (128,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',13);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (129,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',13);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (130,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',13);    


-----------------------------------------------------------------------------------------------------------------------------


INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (131,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 14);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (132,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 14);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (133,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',14);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (134,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',14);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (135,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',14);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (136,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',14);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (137,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',14);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (138,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',14);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (139,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',14);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (140,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',14);    


-----------------------------------------------------------------------------------------------------------------------------



INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (141,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 15);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (142,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 15);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (143,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',15);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (144,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',15);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (145,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',15);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (146,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',15);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (147,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',15);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (148,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',15);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (149,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',15);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (150,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',15);    


-----------------------------------------------------------------------------------------------------------------------------


INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (151,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 16);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (152,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 16);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (153,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',16);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (154,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',1);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (155,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',16);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (156,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',16);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (157,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',16);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (158,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',16);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (159,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',16);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (160,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',16);    


-----------------------------------------------------------------------------------------------------------------------------


INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (161,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 17);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (162,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 17);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (163,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',17);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (164,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',17);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (165,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',17);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (166,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',17);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (167,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',17);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (168,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',17);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (169,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',17);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (170, '문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',17);    


-----------------------------------------------------------------------------------------------------------------------------


INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (171,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 18);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (172,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 18);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (173,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',18);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (174,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',18);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (175,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',18);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (176,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',18);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (177,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',18);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (178,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',18);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (179,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',18);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (180,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',18);    


-----------------------------------------------------------------------------------------------------------------------------


INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (181,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 19);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (182,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 19);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (183,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',19);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (184,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',19);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (185,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',19);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (186,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',19);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (187,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',19);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (188,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',19);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (189,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',19);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (190,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',19);    


-----------------------------------------------------------------------------------------------------------------------------


INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (191,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 20);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (192,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 20);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (193,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',20);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (194,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',20);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (195,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',20);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (196,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',20);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (197,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',20);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (198,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',20);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (199,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',20);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (200,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',20);    


-----------------------------------------------------------------------------------------------------------------------------


INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (201,'문항1 (1) 는 은 기업과 경영자가 전략적 목표를 달성하고 가치를 창출하도록 지원한다','답안 : ASP', 21);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (202,'문항2 (2) 는 은 매출액 순익 등 과거의 결과물인 재무지표에만 의존해 왔던 기업성과 측정에 미래의 경쟁력 향상을 위한 지표
로서 고객 내부 프로세스 학습 등을 추가하여 균형있게 평가하는 무형의 자산 평가 모델이다.','답안 : SEM', 21);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (203,'문항3 핵심 업무와 관련된 프로세스는 BPR 수행 절차 단계 중 주로 (3) 분석 단계에서 도출된다.','답안 : DSS',21);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (204,'문항4 (4)은(는) MIT에서 개발한 전략 정보 시스템 실현을 위한 기법의 하나로서, 성공에 불가결한 요인을 찾아내어 경영상
중요한 정보를 결정하는 방법이다.','답안 : 4M',21);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (205,'문항5 ( 5 ) 엔티티에서는 ‘사용여부’속성을 이용하여 탈퇴자의 정보를 함께 관리하므로 탈퇴자의 주요 정보인 주민등록번
호와 주소를 계속 보관하게 있는데, 이는 개인정보 보호 측면에서 문제가 발생될 수는 모델링이라 할 수 있다.','답안 : 개소정보',21);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (206,'문항6  개념적 데이터베이스 모델링에서 도출된 엔티티를 논리적 
    데이터베이스 모델링에서 ( 6 )을(를) 이용해 관계 스키마로 변환시킨다.','답안 : BCNF',21);

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (207,'문항7 ( 7 )은(는) 정보시스템 사용자가 만족할 수 있는 
    서비스를 제공하고 지속적인 관리를 통해 서비스의 품질을 유지, 증진시키기 위한 일련의 활동을 의미한다.','답안 : SLA',21);
        

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (208,'문항8 전통적인 업무처리는 아담 스미스의 분업의 원칙과 ( 8 )의 경영 통제와 책임의 원칙이 기반이 된다','답안 : 5S',21);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (209,'문항9  경영학의 아버지로 아담스미스는 이러한 분업의 원칙을 20세기 초에 자동차 산업의 선구자인 ( 9 )에 의해 경영에 적용되었다','답안 : ASP',21);    

INSERT INTO PerformanceTest (seq, question, answer, opensubject_seq)
    VALUES (210,'문항10  GM사의 경영권을 이어받은 ( 10 )는 오늘날의 대량생산이라는 말이 적용되는 TotalSystem을 고안해 내었다.','답안 : E-COMMERCE',21);    


-----------------------------------------------------------------------------------------------------------------------------
