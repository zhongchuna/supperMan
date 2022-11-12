<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>时光俱乐部高级会员检索页面</title>
</head>
	<body background="resources/images/test.png" style="text-align:center">
	<form action="searchtTwo">
	            欢迎来到时光俱乐部，开启美好时光，引领时尚未来！<br>
	            您的会员ID：<input type="text" id="" name=""><br>
	            您的会员姓名：<input type="text" id="username" name="username" ><br>
	            您的密码：<input type="text" id="password" name="password" onblur="checkPwd()"><br>
	            您的性别 : 男<input type="radio" name="sex" value="0">  
	        女<input type="radio" name="sex" value="1">  
	        秘密<input type="radio" name="sex" value="2"><br>
	               &nbsp&nbsp&nbsp您的年收：<select name="major">
	           <option value="0">1千万以内</option>
	           <option value="1">2千万以内</option>
	           <option value="2">5千万以上</option>
	           <option value="3">1亿以上</option> 
	           </select><br>
	               您的简介：<input type="textarea" id="intro" name="intro"><br>
	               您的爱好：登山<input type="CheckBox" id="hobby" name="hobby" value="0">
	        冲浪<input type="CheckBox" id="hobby" name="hobby" value="1">
	        跳伞<input type="CheckBox" id="hobby" name="hobby" value="2">
	        <br>
	        <input type="submit" value="检索" id="submit">
	        <input type="submit" value="修改">
	  </form>    
</body><script language="javascript" type="text/javascript">
</html>