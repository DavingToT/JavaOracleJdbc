----
CREATE TABLE Status
(
    seq number primary key,
    status varchar2(20) not null
);


select * from Status;

insert into Status (seq, status) values (1, '정상');
insert into Status (seq, status) values (2, '지각');
insert into Status (seq, status) values (3, '조퇴');
insert into Status (seq, status) values (4, '결석');