package service;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;


import entity.user;
import utils.jdbcTem_util;

/**
 * Servlet implementation class table_insert
 */
@WebServlet("/table_insert")
public class table_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String projectno=request.getParameter("projectno");
		String projectname=request.getParameter("projectname");
		String hostid=request.getParameter("hostid");
		String hostname=request.getParameter("hostname");
		String ktjbdm=request.getParameter("ktjbdm");///////////////////////////////////////////
		String ktsxdm=request.getParameter("ktsxdm");//////////////////////////////////////////
		String ktlbdm=request.getParameter("ktlbdm");/////////////////////////////////////////
		String ktfxdm=request.getParameter("ktfxdm");////////////////////////////////////////
		String xkfldm=request.getParameter("xkfldm");///////////////////////////////////////
		String jtfsdm=request.getParameter("jtfsdm");////////////////////////////////////////
		String sbdwdm=request.getParameter("sbdwdm");///////////////////////////////////////////
		String jflydm=request.getParameter("jflydm");/////////////////////////////////////////
		String bftjdm=request.getParameter("bftjdm");///////////////////////////////////////////
		String pzsj1=request.getParameter("pzsj"); ///时间
		String wcsj1=request.getParameter("wcsj");///时间
		
		String zjf=request.getParameter("zjf");  //int
		String member1=request.getParameter("member1");
		String member2=request.getParameter("member2");
		String member3=request.getParameter("member3");
		String member4=request.getParameter("member4");
		String member5=request.getParameter("member5");
		String sftj=request.getParameter("sftj");//int
		String sflx=request.getParameter("sflx");//int
		
		int a1=Integer.parseInt(zjf);
		int a2=Integer.parseInt(zjf);
		int a3=Integer.parseInt(zjf);
		
		
		///先格式化，后将java.util.Date转换成java.sql.Date
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date pzsj ;
		java.sql.Date wcsj; 
		Date d1=new Date();
		Date d2=new Date();
		try {
			d1 = df.parse(pzsj1);
			d2 = df.parse(wcsj1);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//重点
		pzsj=new java.sql.Date(d1.getTime());
		wcsj=new java.sql.Date(d2.getTime());
		
		
		
		//创建jdbcTemplate对象
		jdbcTem_util jdbcTem_util=new jdbcTem_util();
		JdbcTemplate jdbcTemplate = jdbcTem_util.getJdbcTemplate();
		
		String sql = "insert into basicinfo values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql,projectno,projectname,hostid,hostname,ktjbdm,ktsxdm,ktlbdm,ktfxdm,xkfldm,jtfsdm,sbdwdm,jflydm,bftjdm,pzsj,wcsj,a1,member1,member2,member3,member4,member5,a2,a3);
		request.getRequestDispatcher("/insert_success.jsp").forward(request, response);
	}

}
