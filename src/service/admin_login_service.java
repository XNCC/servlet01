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
 * Servlet implementation class admin_login_dao
 */
@WebServlet("/admin_login_dao")
public class admin_login_service extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public admin_login_service() {
		super();
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
		// π‹¿Ì‘±µ«¬Ω≈–∂œ
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		login_dao login_dao = new login_dao();
		user user = new user();
		user = login_dao.select1(username);
		int power = 1;
		if (password.equals(user.getPassword()) && power == user.getPower()) {
			System.out.println("admin");
			response.sendRedirect("/java_design_forServlet/admin_page.jsp");
			// request.getRequestDispatcher("/admin_page.jsp").forward(request,response);
		} else {
			response.sendRedirect("/java_design_forServlet/login.jsp");
		}
	}

}
