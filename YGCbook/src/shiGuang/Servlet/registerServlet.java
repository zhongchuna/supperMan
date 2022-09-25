package shiGuang.Servlet;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shiGuang.dao.HobbyDAO;
import shiGuang.dao.UserInfoDAO;
import shiGuang.entity.Hobby;
import shiGuang.entity.UserInfo;


public class registerServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String sex = req.getParameter("sex");
		String major = req.getParameter("major");
		String intro = req.getParameter("intro");
		
		UserInfo userInfo = new UserInfo(username,password,sex,major,intro);
		userInfo.setUsername(username);
		userInfo.setPassword(password);
		userInfo.setSex(sex);
		userInfo.setMajor(major);
		userInfo.setIntro(intro);
		
		String[] hobbyArray =req.getParameterValues("hobby");
		
		Hobby hobby =new Hobby();
		hobby.setUsername(username);
		hobby.setHobbyArray(hobbyArray);
		
		UserInfoDAO daoForUserInfo = new UserInfoDAO();
		boolean flagForUserInfo = daoForUserInfo.insertUserInfo(username, password, sex, major, intro);
		
		HobbyDAO daoForHobby=new HobbyDAO();
		boolean flagForHobby = daoForHobby.insertHObby(hobby);
		
		
		if(flagForUserInfo&&flagForHobby) {
			req.getRequestDispatcher("success.jsp").forward(req, resp);
		}else {
			resp.sendRedirect("fail.jsp");
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

}
