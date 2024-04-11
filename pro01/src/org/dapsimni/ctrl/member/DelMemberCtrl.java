package org.dapsimni.ctrl.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dapsimni.dao.MemberDAO;
import org.dapsimni.dto.Member;

@WebServlet("/DelMember.do")
public class DelMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public DelMemberCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Member member = new Member();
		member.setId(request.getParameter("id"));
		member.setPw(request.getParameter("pw"));
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.MemberOut(member);
		
		HttpSession session = request.getSession();
		
		if(cnt>0) {
			session.invalidate();
			response.sendRedirect("/pro01");
		}
		else {
			response.sendRedirect("/EditMember.do?id="+member.getId());
		}
	}

}
