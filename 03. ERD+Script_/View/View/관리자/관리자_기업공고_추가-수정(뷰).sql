------------공고관리조회


commit;

select * from vwViewCompany;
CREATE OR REPLACE VIEW vwViewCompany
AS
SELECT
DISTINCT
d.seq AS 공고번호,
rpad(e.name, 50, ' ') AS 기업명,
e.scale AS 계열_규모,
e.employee_num AS 사원수,
e.established_year AS 설립년도,
rpad(e.area, 15, ' ') AS 지역,
d.salary AS 연봉,
TO_CHAR(d.deadline, 'yyyy-mm-dd') AS 마감일,
d.course AS 요구과정,
d.major AS 요구전공여부

FROM Company E

INNER JOIN Notice D         ON E.seq = D.company_seq
ORDER BY d.seq;