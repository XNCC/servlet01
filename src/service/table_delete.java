package service;

import java.io.IOException;
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
import org.springframework.jdbc.datasource.DriverManagerDataSource;


import entity.user;
import entity.user_insert;
import utils.jdbcTem_util;

/**
 * Servlet implementation class table_insert
 */
//@WebServlet("/table_delete")
public class table_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String a=req.getParameter("projectno");
		//创建jdbcTemplate对象
		jdbcTem_util jdbcTem_util=new jdbcTem_util();
		JdbcTemplate jdbcTemplate = jdbcTem_util.getJdbcTemplate();
			
		String sql = "delete from basicinfo where projectno=?";
		if(req.getParameter("id")!=null) {
		String id=(String) req.getParameter("id");
		int a1=Integer.parseInt(id);
		 List<user_insert> users=(List<user_insert>)req.getSession().getAttribute("data");
		 System.out.println(users);
		 String a2=users.get(a1).getProjectno();
		 
		 if(a2!=null) {
			 System.out.println("aaaaaaaaaaaaaa"+a2);
		    jdbcTemplate.update(sql,users.get(a1).getProjectno());
		 }
		  System.out.println("sql-------------"+id);
		 req.getRequestDispatcher("/delete_success.jsp").forward(req, resp);
		}
		else {
			System.out.println("sql++++++"+req.getParameter("id"));
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		//super.doPost(request, response);
		
	}

}
