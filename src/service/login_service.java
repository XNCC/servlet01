package service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.login_dao;
import entity.user;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public login_service() {
		super();
		// System.out.println("123");
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		login_dao login_dao = new login_dao();
		user user = new user();
		user = login_dao.select(username);
		// 普通用户登陆判断
		if (password.equals(user.getPassword())) {
			System.out.println("user");
			// 跳转到登陆成功页面
			request.getRequestDispatcher("/user_page.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}

	}

}
