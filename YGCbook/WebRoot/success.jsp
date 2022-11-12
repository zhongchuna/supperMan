<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@page import="shiGuang.entity.UserInfo"%>
<%@page import="shiGuang.entity.Hobby"%>
<html>
<head>
<title> 时光俱乐部高级会员注册成功页面</title>
	
	<script src ="jquery-3.2.1.min.js">
	</script>
	<body background="resources/images/test.png" style="text-align:center">
	<form action="search">
	
	            欢迎来到时光俱乐部，开启美好时光，引领时尚未来！<br>
	            您的会员ID：<input type="text" id="" name="" value="88888888"><br>
	            您的会员姓名：<input type="text" id="username" name ="username" value="皇帝"><br>
	            您的密码：<input type="text" id="password" name="password" value="这个不能让知道" onblur="checkPwd()"><br>
	            您的性别 : 男<input type="radio" name="sex" value="0">  
	        女<input type="radio" name="sex" value="1">  
	        秘密<input type="radio" name="sex" value="2" checked><br>
	               &nbsp&nbsp&nbsp您的年收：<input type="text" name="" value="1亿九千七百八十万"> 
	        </select><br>
	               您的简介：<input type="textarea" id="intro" name="intro" value="见天地，见众生，见自己！"><br>
	               您的爱好：登山<input type="CheckBox" id="hobby" name="hobby" value="0" checked>
	        冲浪<input type="CheckBox" id="hobby" name="hobby" value="1" checked>
	        跳伞<input type="CheckBox" id="hobby" name="hobby" value="2" checked>
	        <br>
	        <input type="submit" value="确认" id="submit">
	        <input type="submit" value="修改">
	  </form>    
	  
</body><script language="javascript" type="text/javascript">
		
		function changeActionName(actionName){
	        document.getElementById("form").action = actionName;
	        document.getElementById("username").action = false;
	    }
	    
	    
	    function checkName(){
	        var Name=document.getElementById("username").value
	        var regExp = /^[a-zA-Z0-9\-]{4,16}$/;
	        if(!regExp.test(Name)){
	        	alert("只能输入字母和数字 和下划线。 长度4-16");
	        	document.getElementById("submit").disabled = true;
	        }else{
	        	document.getElementById("submit").disabled = false;
	        }
	    }
	      
	      function executeAjax(){
	      	var username = document.getElementById("username").value;
	     	$.ajax({
	     		url : 'userNameCheck.do?username='+ username,
	     		type : 'post',//数据发送方式
	     		datatype : 'text',//接受数据格式
	     		error : function(flag){
	     		},
	     		async : true,//异步加载
	     		success : function(flag){
	     			 if(flag == "0"){
	     			 //没有被注册
	     			 document.getElementById("flag").innerHTML="恭喜可以注册"; 
	    		     //已经被注册 
	     			}else{
	     		     document.getElementById("flag").innerHTML="用户名已经存在！！"; 
	     			}
	     		}
	     	});  
	    } 
	      
	       
	   	function checkPwd(){
	        var pwd=document.getElementById("password").value
	        var regExp = /^[0-9]{4}$/;
	        if(!regExp.test(pwd)){
	        	alert("请您从新输入四位数字");
	        	document.getElementById("submit").disabled = true;
	        }else{
	        	document.getElementById("submit").disabled = false;
	        }
	    }
	</script>
	
</head>



</html>