--[기초 정보 관리]

--1. 과목 - 교재
CREATE OR REPLACE VIEW vwSubjectTextbook
AS
SELECT s.seq AS sseq, s.name AS sname, s.status AS sstatus, t.seq AS tseq, t.name AS tname, t.publisher AS tpublisher, t.author AS tauthor, t.status AS tstatus
FROM Subject s, Textbook t
WHERE s.text_seq = t.seq(+);

------------------------------
--[과정별 과목 관리]

--1. 과정과목 - 과목 - 교재
CREATE OR REPLACE VIEW vwCourseSubjectTextbook
AS
SELECT 
cs.seq AS csseq,
 cs.course_seq AS cscourse_seq,
 s.seq AS sseq, 
s.name AS sname, 
s.status AS sstatus,
 tb.seq AS tbseq, 
tb.name AS tbname, 
tb.publisher AS tbpublisher,
 tb.author AS tbauthor,
 tb.status AS tbstatus 
FROM Subject s, CourseSubject cs, Textbook tb
WHERE s.seq = cs.subject_seq AND tb.seq(+) = s.text_seq;

-----------------------------
--[개설 과목 관리]

-- 개설과목 start_date, end_date 형식 맞춤 View
SELECT seq, course_seq, to_char(start_date, 'yyyy-mm-dd') AS start_date, to_char(end_date, 'yyyy-mm-dd') AS end_date, classroom_seq, teacher_seq, status FROM OpenCourse;

-- 개설과목 - 과정과목 - 과목
CREATE OR REPLACE VIEW vwOpenCourseOpenSubject
AS
SELECT
os.seq AS osseq,
os.opencourse_seq AS osopencourse_seq,
os.coursesubject_seq AS oscoursesubject_seq,
os.start_date AS osstart_date,
 os.end_date AS osend_date,
os.writtentest_date AS oswrittentest_date,
os.performancetest_date AS osperformancetest_date,
cs.course_seq AS cscourse_seq,
cs.subject_seq AS cssubject_seq,
s.text_seq AS stext_seq,
s.name AS sname,
s.status AS sstatus
FROM OpenSubject os, CourseSubject cs, Subject s
WHERE os.coursesubject_seq = cs.seq AND cs.subject_seq = s.seq;

-- 개설과정교육생 - 교육생
CREATE OR REPLACE VIEW vwOpenStudent
AS
SELECT ocs.seq AS ocsseq,
ocs.student_seq AS sseq,
ocs.opencourse_seq AS ocsopencourse_seq, 
ocs.status AS ocsstatus,
s.name AS sname,
s.ssn AS sssn,
s.tel AS stel,
s.regdate AS sregdate,
s.major AS smajor,
s.status AS sstatus
FROM OpenCourseStudent ocs, Student s
WHERE ocs.student_seq = s.seq;

-- 과정과목 - 과목
CREATE OR REPlACE VIEW vwCourseSubject
AS
SELECT
cs.seq AS csseq,
cs.course_seq AS course_seq,
cs.subject_seq AS subject_seq,
s.text_seq AS stext_seq,
s.name AS sname,
s.status AS sstatus
FROM CourseSubject cs, Subject s;

--[개설 과정 정보 수정]

-- 개설과정 - 개설과목 - 과정과목 - 과목
CREATE OR REPLACE VIEW vwOCOSCSS
AS
SELECT
oc.seq AS ocseq,
oc.course_seq AS cseq,
to_char(oc.start_date, 'yyyy-mm-dd') AS ocstart_date,
to_char(oc.end_date, 'yyyy-mm-dd') AS ocend_date,
oc.classroom_seq AS occlassroom_seq,
oc.teacher_seq AS octeacher_seq,
oc.status AS ocstatus,
os.seq AS osseq,
os.coursesubject_seq AS csseq,
to_char(os.start_date, 'yyyy-mm-dd') AS osstart_date,
to_char(os.end_date, 'yyyy-mm-dd') AS osend_date,
os.coursesubject_seq AS cssubject_seq,
s.text_seq AS stext_seq,
s.name AS sname,
s.status AS sstatus
FROM OpenCourse oc, OpenSubject os, CourseSubject cs, Subject s
WHERE oc.seq = os.opencourse_Seq AND os.coursesubject_seq = cs.course_seq AND cs.subject_seq = s.seq;

-- 개설과정 - 과정과목 - 과목
CREATE OR REPLACE VIEW vwOCCSS
AS
SELECT
oc.seq AS ocseq,
oc.course_seq AS cseq,
to_char(oc.start_date, 'yyyy-mm-dd') AS ocstart_date,
to_char(oc.end_date, 'yyyy-mm-dd') AS ocend_date,
oc.classroom_seq AS occlassroom_seq,
oc.teacher_seq AS octeacher_seq,
oc.status AS ocstatus,
s.seq AS sseq,
s.text_seq AS stext_seq,
s.name AS sname,
s.status AS sstatus
FROM OpenCourse oc, CourseSubject cs, Subject s
WHERE oc.course_seq = cs.course_seq AND cs.subject_seq = s.seq;

-- 과정과목 - 강의가능 과목
CREATE OR REPLACE VIEW vwCSLS
AS
SELECT
cs.seq AS csseq,
cs.course_seq AS cseq,
cs.subject_seq AS sseq,
ls.seq AS lsseq,
ls.teacher_seq AS tseq
FROM CourseSubject cs, LecturableSubject ls
WHERE cs.subject_seq = ls.subject_seq;
