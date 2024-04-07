package org.dapsimni.ctrl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dapsimni.dao.NoticeDAO;
import org.dapsimni.dto.Notice;

@WebServlet("/EditProNotice.do")
public class EditProNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public EditProNoticeCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Notice notice = new Notice();
		notice.setNo(Integer.parseInt(request.getParameter("title")));
		notice.setTitle(request.getParameter("content"));
		
		NoticeDAO dao = new NoticeDAO();
		int cnt = dao.editNotice(notice);
		response.sendRedirect("/pro01/NoticeList.do");
	}
}
