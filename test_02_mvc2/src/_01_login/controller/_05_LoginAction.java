package _01_login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import _01_login.dao.MemberDAO;


@WebServlet("/LoginAction.do")
public class _05_LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		boolean isLogin = MemberDAO.GetInstance().loginMember(id,pw);
		
		if(isLogin) { // 세션 적용
			HttpSession session = request.getSession();
			session.setAttribute("memId", id); // 세션 값 설정
		}
		
		request.setAttribute("isLogin", isLogin);
		
		RequestDispatcher dis = request.getRequestDispatcher("_01_login/05_loginAction");
		dis.forward(request, response);
	}

}
