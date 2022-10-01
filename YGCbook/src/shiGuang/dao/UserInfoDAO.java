package shiGuang.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import cn.key.Tools.DataTool;
import cn.key.dbManager.JdbcTemplate;
import cn.key.entity.BookInfo;
import cn.key.mapping.BookInfoMapping;
import shiGuang.entity.UserInfo;


public class UserInfoDAO {
	private JdbcTemplate template = new JdbcTemplate();
	//用户表插入的时候调用的方法
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


	//用户表搜寻的时候调用的方法
    public List<UserInfo>selectUserInfo(String username,String password,String sex,String major,String intro) {
	String sql = "";
	
	
	return null;
    }
} 