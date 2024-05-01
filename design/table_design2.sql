create database jdj;
use jdj;

-- traffic table
create table traffic(tno int auto_increment primary key, ttype varchar(20) not null, 
no varchar(10) not null, route varchar(2000), comment varchar(2000));

alter table traffic modify route varchar(2000);

desc traffic;

-- guide table
create table guide(pcode int auto_increment primary key, pname varchar(100) not null,
ptype varchar(5) not null, paddr varchar(100) not null,
ptel varchar(50), pgps varchar(50), pcoment varchar(2000), premark varchar(1000));

desc guide;

-- notice table
create table notice(no int auto_increment primary key, title varchar(100) not null,
content varchar(1000) not null, resdate datetime default current_timestamp, 
visited int default 0);

desc notice;

-- qna table
drop table qna;
create table qna(no int auto_increment primary key, plevel varchar(5), 
parno int, title varchar(50) not null, content varchar(2000) not null, 
resdate datetime default current_timestamp, visited int default 0, 
aid varchar(50), foreign key(aid) references member(id));

desc qna;
-- [QNA 정리]
-- * 정렬 : ORDER BY PARNO DESC, PLEVEL ASC
-- * PLEVEL -> 오름차순(질문-답변 순으로)
-- PLEVEL = 1 : 질문
-- PLEVEL = 2 : 답변
-- * PARNO -> 내림차순(최신글이 먼저)
-- PARNO가 같으면, 해당 질문에 맞는 해당 답변 작성
-- 질문의 경우, NO=PARNO
-- 답변의 경우, (답변의)PARNO=질문의 PARNO

-- data table
create table data(no int auto_increment primary key, title varchar(50) not null, 
datafile varchar(100) not null, content varchar(2000) not null, 
resdate datetime default current_timestamp, visited int default 0);

desc data;

-- member table
create table member(id varchar(50) primary key, pw varchar(50) not null,
name varchar(50) not null, birth date not null, 
email varchar(100) not null, tel varchar(100) not null);

alter table member add addr varchar(2000) not null;
alter table member add postcode varchar(500) not null;

select * from member;

commit;

desc member;