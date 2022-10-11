<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	a.header-brand>span{
		color:#000 !important;
		border-bottom: 5px solid #cff0cc;
	}
	.brandTop{
	    margin: 10px 160px;
	    width: 80%;
	    border-bottom: 10px solid #ebebeb;
	    position: relative;
	    padding: 0 16px;
	}
	
	brandTop_inner{
	    display: flex;
	    flex-wrap: nowrap
	}
	.brandTop_logo{
		display:flex;
		align-items: center;
	    margin: 0;
	    padding: 0;
	    margin-right: 24px;
	}
	.brandTop_logo img{
	    width: 120px;
	    border-radius: 24px;
	}
	.brandTop_name{
	    box-sizing: border-box;
	    margin-bottom: 16px;
	    font-weight: 600;
	    font-size: 28px;
	}
	.brandTop_desc{
	    margin-bottom: 16px;
	    font-weight: 500;
	    margin-top: 12px;
	    font-size: 16px;
	}
	.brandContent{
	    position: relative;
	    background: #fff;
	    z-index: 10;
	    padding: 0 16px;
	}
	
	.brandList{
	    display: flex;
	    align-items: center;
	    justify-content: space-between;
	    max-width: 1180px;
	    margin: 32px auto;
	}
	.productImage{
		width:100%;
		border-radius: 10px;
	
	}
	
	.categorySort{
		width: 100px;
	    border: 0px;
	    font-size: 15px;
	}
	
	.productList {
		width: 1200px;
		display: flex;
		flex-wrap: wrap;
		margin: auto;
		justify-content: space-around;		
		margin-top: 10px;
	} 
	
	.productItem{
		width: 280px;
		padding-bottom: 5%;
	}
	
	.brandName{
		font-weight: bold;
		font-size: 18px;
	}
	
	.productName{
		font-size: 18px;
	
	}
	
	.productPrice{
		font-weight: bold;
		font-size: 20px;
		
	}
	}
</style>
</head>
<body>
<div class="brand_layout">
	<!-- ��ܿ� �귣�� ���� -->
	<div class="brandTop">
		<div class="brandTop_inner input-group" style="flex-wrap: nowrap">
			<div class="brandTop_logo">
				<img alt="�ΰ�����" src="${dto.logoImage}">
			</div>
			<div class="brandTop_content">
				<p class="brandTop_name">${brand}</p>
				<p class="brandTop_desc">${dto.description}</p>
			</div>
		</div>
	</div>
	<!-- ��ܿ� �귣�� ���� �� -->
	<!-- ����Ʈ �� -->
	<div class="brandContent">
		<!-- �ɼ� -->
		<div class="brandList">
			<h3><span>${count}��</span></h3>
			<div>
				<select class="categorySort" name="sort">
					<option value="createdAt desc" selected>�ֽż�</option>
					<option value="price desc">���ݳ�����</option>
					<option value="price asc">���ݳ�����</option>
					<option value="readCount desc">�α��</option>
				</select>
			</div>
		</div> 
		<!-- �ɼ� �� -->
		<!-- ��ǰ���  -->
		<div class="productList">
		<c:forEach var="productList" items="${productList}">
			<div class="productItem">
			<a href="/jogong/product/detail?num=${productList.num}">
				<img class='card-img-top' src="${productList.thumbnailImageUrl }" alt='Card image cap'>
				<span style="display: inline-block;">
					<span class='brandName'>${productList.brand }</span><br>
					<span class='productName'>${productList.name }</span><br>
					<span class='productPrice'><b><fmt:formatNumber value="${productList.price}" type="number"/>��</b></span>
				</span>
			</a>
			</div>
		</c:forEach>	
		</div>
	<!-- ��ǰ��� ��  -->
	</div><!-- ����Ʈ �� �� -->
</div>
</body>
<script type="text/javascript">
$(function () {
	$(".categorySort").change(function() {
		var sort=$(this).val();
		var s= "";
		 $.ajax({
				type:"get",
				url:"brandSort",
				dataType:"json",
				data:{"brand":'${brand}', "sort":sort},
				success:function(res){
					
					$(".productList").empty();	
					$.each(res.productList, function(i,elt) {
						var price= elt.price.toLocaleString();
						s += "<div class='productItem'>";
						s += "<a href='/jogong/product/detail?num="+elt.num+"'>";
						s += "<img src='"+elt.thumbnailImageUrl+"'class='productImage'><br>";
						s += "<span style='display: inline-block;'>";
						s += "<span class='brandName'>"+elt.brand+"</span><br>";
						s += "<span class='productName'>"+elt.name+"</span><br>";
						s += "<span class='productPrice'>"+price+"��</span>";
						s += "</span>";
						s += "</a>";
						s += "</div>";
					});
					$(".productList").append(s);
				}
			});
		});
	});

</script>
</html>