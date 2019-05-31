-- PROJECT 테이블
/*
테이블 생성하기 > 컬럼 구성하는 작업

CREATE TABLE 테이블명
(
    컬럼 정의
    컬럼 정의
    컬럼 정의
    컬럼명 자료형(길이) NULL 표기 제약사항
);    


create table Course
(
    seq number primary key,
    name varchar2(50) not null,
    begin date not null,
    classroomseq number 
        references Classroom(seq) not null
);
  */  
  
CREATE TABLE Textbook
(
    seq number primary key,
    name varchar2(100) not null,
    publisher varchar2(50),
    author varchar2(100),
    status number default 1 not null
);

CREATE TABLE Subject
(
    seq number primary key,
    name varchar2(100) not null, --  unique > 삭제
    text_seq number
        references Textbook(seq),
    status number default 1 not null
);

CREATE TABLE Course
(
    seq number primary key,
    name varchar2(200) not null,
    status number default 1 not null
);

CREATE TABLE Teacher
(
    seq number primary key,
    name varchar2(30) not null,
    ssn varchar2(30) not null,
    tel varchar2(30) not null, -- 수정
    status number default 1 not null
);

CREATE TABLE LecturableSubject
(   
    seq number primary key,
    teacher_seq number
        references Teacher(seq) not null,
    subject_seq number
        references Subject(seq) not null
);

CREATE TABLE CourseSubject
(
    seq number primary key,
    course_seq number 
        references Course(seq) not null,
    subject_seq number
        references Subject(seq) not null
);

CREATE TABLE Student
(
    seq number primary key,
    name varchar2(30) not null,
    ssn varchar2(30) not null,
    tel varchar2(13) not null, -- 수정
    regdate date not null,
    major varchar2(30),
    status number default 1 not null
);


CREATE TABLE Classroom
(
    seq number primary key,
    name varchar2(30) not null,
    capacity number not null,
    status number default 1 not null
);


CREATE TABLE OpenCourse
(
    seq number primary key,
    course_seq number
        references Course(seq) not null,
    start_date date not null,
    end_date date not null,
    classroom_seq number
        references Classroom(seq) not null,
    teacher_seq number
        references Teacher(seq) not null,
    status number default 1 not null
);


CREATE TABLE OpenSubject
(
    seq number primary key,
    opencourse_seq number
        references OpenCourse(seq) not null,
    coursesubject_seq number
        references CourseSubject(seq) not null,
    start_date date not null,
    end_date date not null,
    writtentest_date date,
    performancetest_date date
);


CREATE TABLE PerformanceTest
(
    seq number primary key,
    question varchar2(2000),
    answer varchar2(2000),
    opensubject_seq number
        references OpenSubject(seq) not null
);


CREATE TABLE WrittenTest
(
    seq number primary key,
    question varchar2(2000),
    answer varchar2(2000),
    opensubject_seq number
        references OpenSubject(seq) not null
);


CREATE TABLE Allot
(
    seq number primary key,
    attendance_allot number,
    writtentest_allot number,
    performancetest_allot number,
    opensubject_seq number
        references OpenSubject(seq) not null
);


CREATE TABLE OpenCourseStudent
(
    seq number primary key,
    student_seq number
        references Student(seq) not null,
    opencourse_seq number
        references OpenCourse(seq) not null,
    status varchar2(30)
);


CREATE TABLE Score
(
    seq number primary key,
    opensubject_seq number
        references openSubject(seq) not null,
    attendance number,
    written_test number,
    performance_test number,
    opencoursestudent_seq number
        references OpenCourseStudent(seq) not null
);


CREATE TABLE Board
(
    seq number primary key,
    student_seq number
        references Student(seq) not null,
    title varchar2(100),
    content varchar2(2000) not null,
    regdate date
);


CREATE TABLE QnA
(
    seq number primary key,
    opencoursestudent_seq number
        references OpenCourseStudent(seq) not null,
    teacher varchar2(30) not null,
    question_title varchar2(100),
    question_content varchar2(2000),
    question_date date,
    answer_title varchar2(100),
    answer_content varchar2(2000),
    answer_date date
);


CREATE TABLE Status
(
    seq number primary key,
    status varchar2(20) not null
);


CREATE TABLE Geuntae
(
    seq number primary key,
    opencoursestudent_seq number
        references OpenCourseStudent(seq) not null,
    geuntae_date date,
    check_in date,
    check_out date
);


CREATE TABLE Attendance
(
    seq number primary key,
    geuntae_seq number
        references Geuntae(seq) not null,
    status_seq number
        references Status(seq) not null
);


CREATE TABLE TeacherEvaluation
(
    seq number primary key,
    complete varchar2(30),
    plan_score number,
    content_score number,
    communication_score number,
    benefit_score number,
    satisfaction_score number,
    suggestion varchar2(1000),
    opencoursestudent_seq number
        references OpenCourseStudent(seq) not null
);


CREATE TABLE Company
(
    seq number primary key,
    name varchar2(200) not null,
    scale varchar2(30),
    employee_num number,
    established_year number,
    area varchar2(30)
);

CREATE TABLE Notice
(
    seq number primary key,
    company_seq number
        references Company(seq),
    salary number,
    deadline date,
    course varchar2(200),
    major varchar2(30),
    opencoursestudent_seq number 
        references OpenCourseStudent(seq)
);


CREATE TABLE NoticeApplication
(
    seq number primary key,
    notice_seq number
        references Notice(seq) not null,
    application_date date,
    opencoursestudent_seq number
        references OpenCourseStudent(seq) not null
);
    


DROP TABLE NoticeApplication;
DROP TABLE Notice;
DROP TABLE Company;
DROP TABLE TeacherEvaluation;
DROP TABLE Attendance;
DROP TABLE Geuntae;
DROP TABLE Status;
DROP TABLE QnA;
DROP TABLE Board;
DROP TABLE Score;
DROP TABLE OpenCourseStudent;
DROP TABLE Allot;
DROP TABLE WrittenTest;
DROP TABLE PerformanceTest;
DROP TABLE OpenSubject;
DROP TABLE OpenCourse;
DROP TABLE Classroom;
DROP TABLE Student;
DROP TABLE CourseSubject;
DROP TABLE LecturableSubject;
DROP TABLE Teacher;
DROP TABLE Course;
DROP TABLE Subject;
DROP TABLE Textbook;

COMMIT;


