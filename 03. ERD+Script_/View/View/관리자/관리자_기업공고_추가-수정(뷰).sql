------------���������ȸ


commit;

select * from vwViewCompany;
CREATE OR REPLACE VIEW vwViewCompany
AS
SELECT
DISTINCT
d.seq AS �����ȣ,
rpad(e.name, 50, ' ') AS �����,
e.scale AS �迭_�Ը�,
e.employee_num AS �����,
e.established_year AS �����⵵,
rpad(e.area, 15, ' ') AS ����,
d.salary AS ����,
TO_CHAR(d.deadline, 'yyyy-mm-dd') AS ������,
d.course AS �䱸����,
d.major AS �䱸��������

FROM Company E

INNER JOIN Notice D         ON E.seq = D.company_seq
ORDER BY d.seq;