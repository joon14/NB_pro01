package org.dapsimni.dao;

public interface SqlLang {
	String SELECT_ALL_MEMBER = "select * from member order by id";
	String SELECT_MEMBER_BYID = "select * from member where id=?";
	String SELECT_ALL_NOTICE = "select * from member order by resdate desc";
	String SELECT_NOTICE_BYNO = "select * from member where no=?";
	String INSERT_NOTICE = "insert into notice values(default, ?, ?, default, 0)";
	String UPDATE_NOTICE = "update notice set title=?, content=? where no=?";
	String DELETE_NOTICE = "delete from notice where no=?";
}