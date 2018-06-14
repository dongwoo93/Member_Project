package kh.web.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		//  ---------------- FrontEnd 연결  ------------------------
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String command = requestURI.substring(contextPath.length());
		//  ---------------- FrontEnd 연결  끝 ------------------------
			
			Members2DAO dao = new Members2DAO();
			boolean isRedirect = true;
			String dst = "null";
		
		// ------------- FrontEnd 에서 보내주는 값 받기 ----------------
			if(command.equals("signup.do")) {
				
			}
			else if() {
				
			}
		}
		catch (Exception e) {e.printStackTrace();}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
