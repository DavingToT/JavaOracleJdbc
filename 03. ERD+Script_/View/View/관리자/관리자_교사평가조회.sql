 - 교사평가 정보
[과정명], [과정기간], [수강인원], [평가인원], [평가참여율], [번호], [익명1], [과정 수료여부], [강의계획서 이행 점수], 
[교사의 강의내용 전달 및 이해 점수], [교사의 소통 점수], [강의의 유익성 점수], [전반적인 만족도], [건의사항]

  
CREATE OR REPLACE VIEW vwEvaluationTeacher
AS
 SELECT 
 
 d.name AS "과정명", 
 c.end_date - c.start_date AS "과정기간",
 a.seq AS "번호",
-- a.complete AS "과정 수료여부",
 a.plan_score AS "강의계획서 이행 점수",
 a.content_score AS "강의내용 이해 점수",
 a.communication_score AS "교사 소통점수",
 a.benefit_score AS "강의 유익성 점수",
 a.satisfaction_score AS "전반적 만족도",
 a.suggestion AS "건의사항"
 
 FROM TeacherEvaluation A
 
 INNER JOIN OpenCourseStudent B         ON B.seq = A.opencoursestudent_seq
 INNER JOIN OpenCourse C                ON C.seq = B.opencourse_seq
 INNER JOIN Course D                    ON D.seq = C.course_seq;
 
 