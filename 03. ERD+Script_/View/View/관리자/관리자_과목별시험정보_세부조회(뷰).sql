----------------------------------------
-- A-007-1-2
-- 시험관리
-- 과목별 시험정보
----[과정내 과목]  [성적 등록 여부] [시험 문제 파일 등록여부] --ㅇ
DROP VIEW vwTestManageDetail;

select * from vwTestManageDetail where 과정시작일 = '18/10/01';

commit;

CREATE OR REPLACE VIEW vwTestManageDetail
AS
select 
DISTINCT
rpad(s.name, 30, ' ') as 과정내과목,
to_char(oc.start_date, 'yyyy-mm-dd') as 과정시작일,

    CASE
        WHEN wr.question IS NOT NULL AND wr.answer IS NOT NULL THEN 'O'
    ELSE 'X'
END as 시험문제파일등록여부,

    CASE
        WHEN sr.written_test IS NOT NULL AND sr.performance_test IS NOT NULL THEN 'O'
    ELSE 'X'
END as 성적등록여부

from Textbook tx
inner join Subject s                  on tx.seq = s.text_seq
inner join CourseSubject cs           on s.seq = cs.subject_seq
inner join OpenSubject os             on cs.seq = os.coursesubject_seq
inner join Score sr                   on os.seq = sr.opensubject_seq
inner join WrittenTest wr             on os.seq = wr.opensubject_seq
inner join Course c                   on c.seq = cs.course_seq
inner join OpenCourse oc              on c.seq = oc.course_seq;

select * from subject;
