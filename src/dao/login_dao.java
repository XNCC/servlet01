package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import entity.user;
import utils.jdbcTem_util;

public class login_dao {

	// 查询login密码操作
	@Test
	public user select(String name) {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql:///research");
		dataSource.setUsername("root");
		dataSource.setPassword("123456789");

		// 创建jdbcTemplate对象
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = "select password from user where name=? ";
		user user = jdbcTemplate.queryForObject(sql, new myRowMapper(), name);
		// System.out.print(user);
		return user;
	}

	@Test
	public user select1(String name) {
		jdbcTem_util jdbcTem_util = new jdbcTem_util();
		JdbcTemplate jdbcTemplate = jdbcTem_util.getJdbcTemplate();
		// 创建jdbcTemplate对象
		String sql = "select password,power from user where name=? ";
		user user = jdbcTemplate.queryForObject(sql, new myRowMapper1(), name);

		return user;
	}

}

class myRowMapper implements RowMapper<user> {

	@Override
	public user mapRow(ResultSet arg0, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		// String name=arg0.getString("name");
		String password = arg0.getString("password");
		user user = new user();
		user.setPassword(password);
		// user.setName(name);
		return user;
	}

}

class myRowMapper1 implements RowMapper<user> {

	@Override
	public user mapRow(ResultSet arg0, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		int name = arg0.getInt("power");
		String password = arg0.getString("password");
		Integer power = arg0.getInt("power");
		user user = new user();
		user.setPassword(password);
		user.setPower(power);
		return user;
	}

}