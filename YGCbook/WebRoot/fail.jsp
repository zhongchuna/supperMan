<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title> 时光俱乐部高级会员注册失败页面</title>


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
				很遗憾您这次注册失败！感谢您的参与！谢谢
	           
	      
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