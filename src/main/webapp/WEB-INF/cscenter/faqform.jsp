<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
	<!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    <!-- bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- bootstrap 5 icon -->
	<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>  
    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    
<style type="text/css">
	*{
		font-family: 'Jua';
	}
	.qnasearch{ 
		width: 100%;
		height:250px;
		background-color: #ffd700;
	}
	.help{
		width: 45%;
		height: 50px;
		background-color: white;
		text-align: center;
		position: absolute;
		left: 25%;
		top: 23%;
	
	}
	.search{
		width: 70%;
		margin-top: 10px;
		border: 0px;
	}
	h5{
		position: absolute;
		left: 30%;
		top: 18%;
	}
	.sh{
		position: absolute;
		left: 90%;
		top: 18%;
		cursor: pointer;
	}
	
	.category{
		top:300px;
		font-size:30px;
		background-color:white;
		width:100%;
		border-bottom:1px solid lightgray;
		display:flex;
		justify-content:space-evenly;
		height:80px;
		line-height:80px;
		text-align:center;
	}
	
	.mcss a{
		text-decoration:none;
		color:#A7A7A7;
	}
	.mcss a:hover{
		color:black;
	}
	.qna{
		margin-left: 400px;
	}
</style>
<script type="text/javascript">
$(function () {
	$(document).on("click","#1",function(){
			$("#answer1").toggle("fast");
	})
	$(document).on("click","#4",function(){
			$("#answer4").toggle("fast");
	})
	$(document).on("click","#5",function(){
			$("#answer5").toggle("fast");
	})
	$(document).on("click","#11",function(){
			$("#answer11").toggle("fast");
	})
	$(document).on("click","#12",function(){
			$("#answer12").toggle("fast");
	})
	
});
	
</script>
</head>
<body>
<div style="background-color: white;">
 	<div class="qnasearch">
 		<h5 style="color: gray;">카카오톡 선물하기 서비스를 이용하시는데 도움이 필요하신가요?</h5>
 		<div class="help">
 			<input type="text" class="search" placeholder="도움말을 검색해보세요" >
 			<a><i class='fas fa-search sh' style='font-size:24px'></i></a>
 		</div>
 	</div>
<br>
	<div class="category">
		<span>&emsp;자주하는 질문&emsp;</span>
		<span class="d2"><a>&emsp;이용방법&emsp;</a></span>
		<span class="d3"><a>&emsp;서비스안내&emsp;</a></span>
		<span class="d4"><a>&emsp;결제&emsp;</a></span>
		<span class="d5"><a>&emsp;배송상태&emsp;</a></span>
		<span class="d6"><a>&emsp;교환권&emsp;</a></span>
		<span class="d7"><a>&emsp;기타&emsp;</a></span>
	</div>
	<br><br><br>
	<h3 style="margin-left: 200px;">자주하는 질문</h3>
	<table class="table" style="margin-left: 150px; width: 1000px;">
			
		<c:forEach var="dto" items="${list}">	
			<tr>
				<td> 
					<div id="${dto.num }" style="cursor: pointer;">
					 <b style="color: red; font-size: 20px;">Q</b>&nbsp;&nbsp;<span>${dto.title }</span><br>
					</div> 
					<br>
					 <div id="answer${dto.num }" style="display: none;">
					 	<pre style="font-size: 15px;"><b style="color: red; font-size: 20px;">A</b>&nbsp;&nbsp;${dto.content }</pre><br>
					 </div>	
				</td>
			</tr>
	</c:forEach>
	<tr>
		<td style="border: none;text-align: center;">
			<br>
			<button type="button" class="btnqna btn btn-outline-info" onclick="location.href='../cscenter/qnaform'">1:1문의하기</button>	
		</td>
	</tr>	
	</table>
</div>	
</body>
</html>