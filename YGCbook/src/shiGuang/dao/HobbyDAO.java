package shiGuang.dao;

import java.sql.SQLException;

import cn.key.Tools.DataTool;
import cn.key.dbManager.JdbcTemplate;
import shiGuang.entity.Hobby;


public class HobbyDAO {
	private JdbcTemplate template = new JdbcTemplate();
	
	public boolean insertHObby (Hobby hobby) {
		int row = 0;
		String sql = "insert into hobby values(?,?,0)";
		for(int i =0;i<hobby.getHobbyArray().length;i++) {
			
			Object[] values = new Object[]{hobby.getUsername(),hobby.getHobbyArray()[i]};

			try {
				row = row + template.updata(sql, values);
			} catch (SQLException e) {
				e.printStackTrace();
			}catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
				return row == hobby.getHobbyArray(). length;
	}
}
