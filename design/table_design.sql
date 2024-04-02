create table traffic(tno int primary key, ttype varchar(20) not null, 
no int not null, route varchar(50), comment varchar(1000));

create sequence tseq start with 1 increment by 1 nocycle;

create table guide(pcode int primary key, pname varchar(100) not null,
ptype varchar(5) not null, paddr varchar(100) not null,
ptel varchar(50), pgps varchar(50), pcoment varchar(1000), premark varchar(1000));

create sequence gseq start with 1 increment by 1 nocycle;

create table notice(no int primary key, title varchar(100) not null,
content varchar(1000) not null, resdate timestamp default sysdate, visited int default 0);

create sequence nseq start with 1 increment by 1 nocycle;

create table qna(no int primary key, plevel varchar(5) not null, parno int not null,
title varchar(50) not null, content varchar(1000) not null, resdate timestamp default sysdate,
visited int default 0, aid varchar(50) not null);

create sequence qseq start with 1 increment by 1 nocycle;

create table data(no int primary key, title varchar(50) not null, 
datafile varchar(100) not null, content varchar(1000) not null, 
resdate timestamp default sysdate, visited int default 0);

create sequence dseq start with 1 increment by 1 nocycle;

create table member(id varchar(50) primary key, pw varchar(50) not null,
birth varchar(50) not null, email varchar(100) not null, tel varchar(100) not null);