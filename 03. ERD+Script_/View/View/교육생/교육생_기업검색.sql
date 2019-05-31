--기업 + 공고 조회 

CREATE OR REPLACE VIEW vwViewCompany
AS
SELECT
DISTINCT
e.name AS 기업명,
e.scale AS 계열_규모,
e.employee_num AS 사원수,
e.established_year AS 연혁,
e.area AS 지역,
d.salary AS 연봉,
d.deadline AS 마감일,
d.course AS 요구과정,
d.major AS 요구전공여부

FROM Student A

INNER JOIN OpenCourseStudent B      ON a.seq = b.student_seq
INNER JOIN NoticeApplication C       ON b.seq = c.opencoursestudent_seq
INNER JOIN Notice D                 ON d.seq = c.notice_seq
INNER JOIN Company E                 ON e.seq = d.company_seq; 




-- 기업 + 공고 검색
CREATE OR REPLACE VIEW vwSearchCompany
AS
SELECT 
e.name AS 기업명,
e.scale AS 계열_규모,
e.employee_num AS 사원수,
e.established_year AS 연혁,
e.area AS 지역,
d.salary AS 연봉,
d.deadline AS 마감일,
d.course AS 요구과정,
d.major AS 요구전공여부

from Student A
INNER JOIN OpenCourseStudent B      ON a.seq = b.student_seq
INNER JOIN NoticeApplication C       ON b.seq = c.opencoursestudent_seq
INNER JOIN Notice D                 ON d.seq = c.notice_seq
INNER JOIN Company E                 ON e.seq = d.company_seq 

WHERE d.salary >= '최소연봉' AND e.area IN('지역', '지역', '지역') AND e.scale = '규모'; 


