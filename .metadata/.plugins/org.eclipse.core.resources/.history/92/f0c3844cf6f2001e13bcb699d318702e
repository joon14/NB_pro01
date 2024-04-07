package org.dapsimni.ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dapsimni.dao.NoticeDAO;
import org.dapsimni.dto.Notice;

@WebServlet("/EditNotice.do")
public class EditNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public EditNoticeCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		NoticeDAO dao = new NoticeDAO();
		Notice notice = new Notice();
		
		request.setAttribute("notice", notice);
		RequestDispatcher view = request.getRequestDispatcher("/notice/editNotice.jsp");
		view.forward(request, response);
	}
}
