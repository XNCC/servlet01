package service;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import dao.table_select_dao;
import entity.bftjdm_en;
import entity.jflydm_en;
import entity.jtfsdm_en;
import entity.ktfxdm_en;
import entity.ktjbdm_en;
import entity.ktlbdm_en;
import entity.ktsxdm_en;
import entity.sbdwdm_en;
import entity.user;
import entity.user_insert;
import entity.xkfldm_en;
import utils.jdbcTem_util;

/**
 * Servlet implementation class table_insert
 */
@WebServlet("/table_select")
public class table_select extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String start_time = request.getParameter("start_time"); /// 时间
		String end_time = request.getParameter("end_time");/// 时间
		if (start_time != null && end_time != null) {
			request.getSession().setAttribute("start_time", start_time);
			request.getSession().setAttribute("end_time", end_time);
		}
		table_select_dao table_select_dao = new table_select_dao();
		List<user_insert> users = table_select_dao.select(start_time, end_time);
		if (users != null) {
			request.setAttribute("data", users);
			request.getRequestDispatcher("/table_select.jsp").forward(request, response);
		}
	}

}
