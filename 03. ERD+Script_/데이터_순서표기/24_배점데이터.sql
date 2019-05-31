-- 24. 배점 데이터

CREATE TABLE Allot
(
    seq number primary key,
    attendance_allot number,
    writtentest_allot number,
    performancetest_allot number,
    opensubject_seq number
        references OpenSubject(seq) not null
);




insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(1, 20,35,45, 1);
insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(2, 20,35,45, 2);
insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(3, 20,35,45, 3);
insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(4, 20,35,45, 4);
insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(5, 20,35,45, 5);
insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(6, 20,35,45, 6);
    
insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(7, 20,35,45, 7);
insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(8, 20,35,45, 8);
insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(9, 20,35,45, 9);
insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(10, 20,35,45, 10);
insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(11, 20,35,45, 11);
insert into allot(seq, attendance_allot, writtentest_allot, performancetest_allot, opensubject_seq)
    values(12, 20,35,45, 12);
    

commit;
    
    