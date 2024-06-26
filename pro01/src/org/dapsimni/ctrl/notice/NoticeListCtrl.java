package org.dapsimni.ctrl.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

import org.dapsimni.dao.NoticeDAO;
import org.dapsimni.dto.Notice;

@WebServlet("/NoticeList.do")
public class NoticeListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public NoticeListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		NoticeDAO dao = new NoticeDAO();
		List<Notice> noticeList = new ArrayList<>();
		noticeList = dao.getNoticeList();
		
		request.setAttribute("noticeList", noticeList);
		
		RequestDispatcher view = request.getRequestDispatcher("/notice/noticeList.jsp");
		view.forward(request, response);
	}

}
