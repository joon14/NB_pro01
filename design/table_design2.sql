create database jdj;
use jdj;

-- traffic table
create table traffic(tno int auto_increment primary key, ttype varchar(20) not null, 
no varchar(10) not null, route varchar(50), comment varchar(2000));

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
create table qna(no int auto_increment primary key, plevel varchar(5) not null, 
parno int not null, title varchar(50) not null, content varchar(2000) not null, 
resdate datetime default current_timestamp, visited int default 0, 
aid varchar(50) not null, foreign key(aid) references member(id));

desc qna;

-- data table
create table data(no int auto_increment primary key, title varchar(50) not null, 
datafile varchar(100) not null, content varchar(2000) not null, 
resdate datetime default current_timestamp, visited int default 0);

desc data;

-- member table
create table member(id varchar(50) primary key, pw varchar(50) not null,
name varchar(50) not null, birth date not null, 
email varchar(100) not null, tel varchar(100) not null);

desc member;