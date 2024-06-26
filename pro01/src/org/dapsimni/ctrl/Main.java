package org.dapsimni.ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pro01")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Main() {
        super();
    }
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = "피카츄";
		String teacher = "김기태 강사님";
		String student = "정도준";
		
		ServletContext application = request.getServletContext();
		String realPath = request.getSession().getServletContext().getRealPath("/");
		
		application.setAttribute("realPath", realPath);
		application.setAttribute("title", "답십리동 소개");
		
		request.setAttribute("name", name);
		request.setAttribute("teacher", teacher);
		request.setAttribute("student", student);
		
		request.setAttribute("exo1", "./images/exo1.jpg");
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/index.jsp");
		view.forward(request, response);
	}
}
