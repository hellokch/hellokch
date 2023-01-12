--회원가입용
drop table member;
create table member(
id varchar(20) primary key,  --string
pass varchar(20),
name varchar(20),
gender number(1), --int
tel varchar(20),
email varchar(50),
picture varchar(200));