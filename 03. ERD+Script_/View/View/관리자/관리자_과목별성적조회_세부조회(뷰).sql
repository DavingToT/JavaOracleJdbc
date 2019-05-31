--------------------------
-- 과목별 성적 출력
-- 과목별 성적으로 모든 교육생 조회 -- 수정완료
-- [학생명] [주민번호] [필기] [실기] -- 선택한 과목에 대한 그 개인정보가 모두 출력
drop view vwAllSubjectScore;
commit;
select * from vwAllSubjectScore;

create or replace view vwAllSubjectScore
as
select 

distinct
stu.name as 학생명,
stu.ssn as 주민번호,
s.seq as 과목번호,
sr.written_test as 필기,
sr.performance_test as 실기

from Student stu
inner join OpenCourseStudent ocs on stu.seq = ocs.student_seq
inner join Score sr              on ocs.student_seq = sr.opencoursestudent_seq
inner join OpenCourse oc         on ocs.opencourse_seq = oc.seq
inner join OpenSubject os        on oc.seq = os.opencourse_seq
inner join Course c              on c.seq = oc.course_seq
inner join CourseSubject cs      on c.seq = cs.course_seq
inner join Subject s             on s.seq = cs.subject_seq;