-------------------------------------------  
--3. 성적조회
/*
교육생T ,  개설과정별 교육생T , 개설과정T , 과정T , 과정별과목T , 개설과목T , 성적T
*/
select * from Student;
--과목번호 , 과목명 , 과목기간 , 교재명 , 교사명 ,
--과목별 배점정보 , 과목별 성적정보 , 과목별 시험날짜 , 시험문제

select 
    DISTINCT
    Student.name as 교육생이름,
    Subject.name as 과목명,
    OpenSubject.start_date as 과목시작일,
    OpenSubject.end_date as 과목종료일,
    Textbook.name as 교재명,
    Teacher.name as 교사명,
--    Allot.attendance_allot as 출결배점,
--    Allot.writtentest_allot as 필기배점,
--    Allot.performancetest_allot as 실기배점,
    Score.attendance as 출결점수,
    Score.written_test as 필기점수,
    Score.performance_test as 실기점수,
    OpenSubject.writtentest_date as 필기시험날짜,
    OpenSubject.performancetest_date as 실기시험날짜
    
from student
    inner join OpenCourseStudent    on student.seq = OpenCourseStudent.student_seq
    inner join OpenCourse           on OpenCourseStudent.opencourse_seq = OpenCourse.seq
    inner join Course               on OpenCourse.course_seq = Course.seq
    inner join CourseSubject        on OpenCourse.seq = CourseSubject.course_seq
    inner join OpenSubject          on CourseSubject.seq = OpenSubject.coursesubject_seq
    inner join Score                on OpenSubject.seq = Score.opensubject_seq
    inner join Subject              on CourseSubject.subject_seq = Subject.seq
    inner join Textbook             on Subject.text_seq = Textbook.seq
    inner join Teacher              on OpenCourse.teacher_seq = Teacher.seq
--    inner join Allot                on OpenSubject.seq = Allot.opensubject_seq
    inner join Score                on OpenSubject.seq = Score.opensubject_seq
ORDER BY student.name, opensubject.start_date;
   
-------------------------------------------- 


SELECT attendance FROM SCORE;