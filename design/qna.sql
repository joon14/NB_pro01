use jdj;
select * from qna;
desc qna;

insert into qna values(default, '1', 1, '질문1', '질문1에 대한 내용', default, default, 'test');
insert into qna values(default, '1', 2, '질문2', '질문2에 대한 내용', default, default, 'test');
insert into qna values(default, '1', 3, '질문3', '질문3에 대한 내용', default, default, 'test');
insert into qna values(default, '1', 4, '질문4', '질문4에 대한 내용', default, default, 'test');

insert into qna values(default, '2', 1, '질문1에 대한 답변', '질문1에 대한 답변내용', default, default, 'test');
insert into qna values(default, '2', 4, '질문4에 대한 답변', '질문4에 대한 답변내용', default, default, 'test');

delete from qna where no>=10;

SET SQL_SAFE_UPDATES = 0;
update qna set aid='admin' where plevel='2';
update qna set parno=no where no=(select no from qna order by no desc limit 1);

UPDATE qna AS outer_qna
JOIN (
    SELECT no FROM qna ORDER BY no DESC LIMIT 1
) AS sub_query
SET outer_qna.parno = sub_query.no
WHERE outer_qna.no = sub_query.no;