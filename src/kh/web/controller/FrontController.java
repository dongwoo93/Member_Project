package kh.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kh.web.dao.Members2DAO;
import kh.web.dto.Members2DTO;

@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//  ---------------- FrontEnd ï¿½ï¿½ï¿½ï¿½  --------------------------
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String command = requestURI.substring(contextPath.length());
			//  ---------------- FrontEnd ï¿½ï¿½ï¿½ï¿½  ï¿½ï¿½ ------------------------

			Members2DAO dao = new Members2DAO();
			boolean isRedirect = true;
			String dst = "null";

			if(command.equals("/signup.do")) {
				// ------------- FrontEnd ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ö´ï¿½ ï¿½ï¿½ ï¿½Þ±ï¿½ ----------
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				String name = request.getParameter("name");
				String email = request.getParameter("email");

				// ---------------- DB ï¿½ï¿½ï¿½ï¿½ ------------------------
				Members2DTO dto = new Members2DTO(id, pw, name, email);
				int result = dao.insertMembers2(dto);
				request.setAttribute("result", result);

				isRedirect = false;
				dst = "signup.jsp ";
			}
			else if(command.equals("idcheck.do")) {
				String id = request.getParameter("id");
				boolean result = dao.idCheck(id);
				if(result) {
					response.getWriter().print("ÀÌ¹Ì »ç¿ë ÁßÀÎ id°¡ Á¸Àç ÇÕ´Ï´Ù.");
				}else {
					response.getWriter().print("»ç¿ë °¡´ÉÇÑ id ÀÔ´Ï´Ù.");
				}
			}
			else if(command.equals("/login.do")) {
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");

				boolean result = dao.login(id, pw);

				if(result) {
					HttpSession session = request.getSession();
					session.setAttribute("loginid", id);
				}
				request.setAttribute("result", result);

				isRedirect = false;
				dst = "login.jsp";
			}


			if(isRedirect) {
				response.sendRedirect(dst);
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher(dst);
				rd.forward(request, response);
			}


		}catch (Exception e) {e.printStackTrace();}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}
}
