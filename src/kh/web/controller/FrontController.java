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
			//  ---------------- FrontEnd ����  --------------------------
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String command = requestURI.substring(contextPath.length());
			//  ---------------- FrontEnd ����  �� ------------------------

			Members2DAO dao = new Members2DAO();
			boolean isRedirect = true;
			String dst = "null";

			if(command.equals("/signup.do")) {
				System.out.println("������");
				// ------------- FrontEnd ���� �����ִ� �� �ޱ� ----------
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				System.out.println(id + pw + name + email);
		

				// ---------------- DB ���� ------------------------
				Members2DTO dto = new Members2DTO(id, pw, name, email);
				System.out.println(dto.getId());
				int result = dao.insertMembers2(dto);
				System.out.println(result);
				request.setAttribute("result", result);

				isRedirect = false;
				dst = "signupview.jsp";
			}
			else if(command.equals("/idcheck.do")) {
				String id = request.getParameter("id");
				System.out.println("���̵� : " + id);
				boolean result = dao.idCheck(id);
				System.out.println(result);
				if(result) {
					System.out.println("if" + result);
					response.getWriter().println("�̹� ��� ���� id�� ���� �մϴ�.");
					
				}else {
					System.out.println("else" + result);
					response.getWriter().println("��� ������ id �Դϴ�.");
					
				}
				return;
			}
			else if(command.equals("/login.do")) {
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");

				boolean result = dao.login(id, pw);

				if(result) {
					System.out.println("true ����");
					HttpSession session = request.getSession();
					session.setAttribute("loginid", id);
					System.out.println(session.getAttribute("loginid"));
				}
				

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
