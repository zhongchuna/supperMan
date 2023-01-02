<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title> 时光俱乐部高级会员注册页面</title>



	<style>
	    #username{
	   border:1px solid black;
       width:180px;
       height:30px;
       border-radius:25px;
		}
		#password{
	   border:1px solid black;
       width:180px;
       height:30px;
       border-radius:25px;
		}
		#textarea{
	   border:1px solid black;
       width:180px;
       height:30px;
       border-radius:25px;
		}
		
	</style>
	
	<script src ="jquery-3.2.1.min.js">
	</script>
	<body background="resources/images/test.png" style="text-align:center">
	<form action="userInfoReg">

	            请输入高级会员姓名<input type="text" id="username" name="username" onblur="executeAjax()"><font color="red" id="flag"></font><br>
	            请输入您高级的密码<input type="password" id="password" name="password" onblur="checkPwd()"><br>
	             请输入您的性别 : 男<input type="radio" name="sex" value="0">  
	        女<input type="radio" name="sex" value="1">  
	        秘密<input type="radio" name="sex" value="2"><br>
	               &nbsp&nbsp&nbsp请输入您的年收：<select name="major">
	           <option value="0">1千万以内</option>
	           <option value="1">2千万以内</option>
	           <option value="2">5千万以上</option>
	           <option value="3">1亿以上</option>
	        </select><br>
	               简介<input type="textarea" id="intro" name="intro"><br>
	               爱好：登山<input type="CheckBox" id="hobby" name="hobby" value="0">
	        冲浪<input type="CheckBox" id="hobby" name="hobby" value="1">
	        跳伞<input type="CheckBox" id="hobby" name="hobby" value="2">
	        <br>
	        <input type="submit" value="提交" id="submit">
	        <input type="reset" value="重置">
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