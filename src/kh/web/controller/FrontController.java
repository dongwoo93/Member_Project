package kh.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		//  ---------------- FrontEnd ����  ------------------------
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String command = requestURI.substring(contextPath.length());
		//  ---------------- FrontEnd ����  �� ------------------------
			
			Members2DAO dao = new Members2DAO();
			boolean isRedirect = true;
			String dst = "null";
		
		// ------------- FrontEnd ���� �����ִ� �� �ޱ� ----------------
			if(command.equals("signup.do")) {
				
			}
			else if(command.equals("idcheck.do")) {
				String id = request.getParameter("id");
				boolean result = dao.idCheck(id);
				request.setAttribute("result", result);
				isRedirect = false;
			}
		}
		catch (Exception e) {e.printStackTrace();}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
