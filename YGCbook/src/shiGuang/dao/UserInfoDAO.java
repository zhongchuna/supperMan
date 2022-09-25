package shiGuang.dao;

import java.sql.SQLException;

import cn.key.Tools.DataTool;
import cn.key.dbManager.JdbcTemplate;


public class UserInfoDAO {
	private JdbcTemplate template = new JdbcTemplate();
	
	public boolean insertUserInfo(String username,String password,String sex,String major,String intro) {
		int row = 0;
		String sql = "insert into userinfo values(?,?,?,?,?,0)";
		
		Object[] values = new Object[]{username,password,sex,major,intro};
		try {
			row = template.updata(sql, values);
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return (row == 1);
	}
}
