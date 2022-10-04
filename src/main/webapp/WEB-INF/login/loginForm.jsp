<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap" rel="stylesheet"><!-- font -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"><!-- bootstrap 5 -->
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script><!-- bootstrap 5 icon -->
<script src="https://code.jquery.com/jquery-3.5.0.js"></script><!-- jquery -->

<style>
	*{
		
	}
	
	div.all{
		width: 100%;
		height: 600px;
		/* padding-top: 50px;
		padding-left: 200px; */
		margin-top: 30px;
		padding-left: 35%;
		padding-right: 35%;
		text-align: center;
	}
	
	.textBox{
		margin-bottom: 10px;
	}
	
	button.btnLogin{
		width: 100%;
		height: 50px;
		
		border-radius: 8px;
		/* 
		color: white;
		 */
		font-weight: bold;
		margin-top: 30px;
		background-color: #ef3e43;
	}
	
	button.btnSellerLogin{
		width: 100%;
		height: 50px;
		
		border-radius: 8px;
		/* 
		color: white;
		 */
		font-weight: bold;
		margin-top: 20px;
	}
	
	div.snsLoginBox{
		width: 100%;
		margin-top: 15px;
		justify-content: space-between;
	}
	
	div.snsLoginBox button{
		width: 47%;
		height: 40px;
		border: 0px;
		border-radius: 8px;
		font-weight: bold;
	}

</style>
</head>
<script>
$(document).ready(function(){
	
	/* 판매회원 로그인 폼 숨기기 */
	$(".sellerLoginBox").hide();
	
	/* 판매회원 로그인 버튼 클릭 이벤트 */
	$(".btnChange1").click(function () {
		
		$(".userLoginBox").hide();
		
		
		$(".sellerLoginBox").show();
	});
	
	/* user 로그인 버튼 클릭 이벤트 */
	$(".btnChange2").click(function () {
		
		$(".sellerLoginBox").hide();
		
		
		$(".userLoginBox").show();
	});
	
});
</script>
<body>
	<c:set var="root" value="<%=request.getContextPath() %>"/>
	<div style="background-color: white;">
		
		<div class="all">
		
			<!-- 일반회원 로그인 박스 -->
			<div class="userLoginBox">
				
				<!-- 판매자 로그인 전환 버튼 -->
				<h3 style="float: left;">로그인</h3>
				<button type="button" class="btnChange1 btn-sm btn-dark" style="float: right; margin-bottom: 5px;">판매회원 전환</button>
				
				<!-- user 로그인 정보 -->
				<form action="">
					<input type="email" class="form-control textBox" required placeholder="아이디(이메일 형식)" id="userEmail">
					<input type="password" class="form-control textBox" required placeholder="비밀번호" id="userPassword">
					<label style="float: left;"><input type="checkbox" class="form-check-input"> 아이디 저장</label>
					<button type="submit" class="btnLoginUser btn btn-danger">로그인</button>
				</form>
			
				<hr>
				
				<!-- 소셜회원 로그인 박스 -->
				<div class="snsLoginBox">
					<button class="btnKakaoLogin" style="background-color: #fde102;"><i class='fas fa-comment'></i> 카카오로 로그인</button>&nbsp;&nbsp;&nbsp;
					<button class="btnNaverLogin" style="background-color: #19ce60; color: white;">N 네이버로 로그인</button>
				</div>
			</div>
			
			
			
			
				
			<!-- 판매회원 로그인 박스 -->
			<div class="sellerLoginBox">
			
				<!-- user 로그인 전환 버튼 -->
				<h3 style="float: left;">판매 회원 로그인</h3>
				<button type="button" class="btnChange2 btn-sm btn-dark" style="float: right; margin-bottom: 5px;">일반회원 전환</button>
			
				<!-- <form action="sellerLogin" method="post" enctype="multipart/form-data"> -->
					<input type="email" class="form-control textBox" required placeholder="아이디(이메일 형식)" id="sellerEmail">
					<input type="password" class="form-control textBox" required placeholder="비밀번호" id="sellerPassword">
					<label style="float: left;"><input type="checkbox" class="form-check-input"> 아이디 저장</label>
					<button type="submit" class="btnLoginSeller btn btn-danger">로그인</button>
				<!-- </form> -->
			</div>
			 
			
			
			<!-- 
			<button type="button" class="btnSellerLogin btn btn-outline-secondary">판매 회원 로그인</button>
			 -->
		</div> <!-- div.all 종료 -->
		
		
		

	</div> <!-- 전체 div 종료 -->
</body>

<script>
	//user 로그인 버튼
	$(".btnLoginUser").click(function () {
		
		//아이디와 비밀번호 읽어오기
		var userEmail=$("#userEmail").val();
		var userPassword=$("#userPassword").val();
		var root='${root}';
		console.log("root"+root);
		
		$.ajax({
			type:"post",
			url:root+"/login/userLogin",
			dataType:"json",
			data:{"userEmail":userEmail,"userPassword":userPassword},
			success:function(res){
				if(res.result=='fail'){
					alert("ID 혹은 비밀번호가 맞지 않습니다");
				}else{
					location.href='${root}';
				}
				
			}
			
		});	//ajax 종료
	});	//로그인 버튼 이벤트 종료
	
	
	//seller 로그인 버튼
	$(".btnLoginSeller").click(function () {
		
		//아이디와 비밀번호 읽어오기
		var sellerEmail=$("#sellerEmail").val();
		var sellerPassword=$("#sellerPassword").val();
		var root='${root}';
		console.log("root"+root);
		
		$.ajax({
			type:"post",
			url:root+"/login/sellerLogin",
			dataType:"json",
			data:{"sellerEmail":sellerEmail,"sellerPassword":sellerPassword},
			success:function(res){
				if(res.result=='fail'){
					alert("ID 혹은 비밀번호가 맞지 않습니다");
				}else{
					location.href='${root}';
				}
				
			}
			
		});	//ajax 종료
	});	//로그인 버튼 이벤트 종료
</script>
</html>