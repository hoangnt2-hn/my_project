<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div id="header-chitiet" class="container-fluid">
		<nav class="navbar navbar-default none_nav">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#"><img alt="yameshop" src='<c:url value="/resource/Image/icon_yame_shop.png" />' /></a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav navbar-center">
		        
		        <li class="active" ><a href="#">TRANG CHỦ</a></li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Danh Mục <span class="caret"></span></a>
		          <ul class="dropdown-menu open">
		           	<c:forEach var="value" items="${danhmuc }">
						<li><a href='<c:url value="/sanpham/${value.getMadanhmuc()}/${value.getTendanhmuc() }"/>'>${value.getTendanhmuc() }</a></li>
						<li role="separator" class="divider"></li>		
					</c:forEach>
					
		          </ul>
		        </li>
		        <li><a href="#">DỊCH VỤ</a></li>
		        <li><a href="#">LIÊN HỆ</a></li>
		      </ul>
		      
		      <ul class="nav navbar-nav navbar-right">
		      	<c:choose>
		      		<c:when test="${as!=null}">
		      			<li><a class="circle-avatar" href="http://localhost:8080/minishop/dangnhap"><span>${as }</span></a></li>
		      		</c:when>
		      		
		      		<c:otherwise>
		      			<li><a href="http://localhost:8080/minishop/dangnhap">ĐĂNG NHẬP</a></li>
		      		</c:otherwise>
		      	</c:choose>
		        <li id="giohang"><a href="http://localhost:8080/minishop/giohang"><img alt="icon-xe" src='<c:url value="/resource/Image/icon_google.png" />' />
					<c:choose>
						<c:when test="${soluongsanphamgiohang>0 }">
							<div class="circle-giohang"><span>${soluongsanphamgiohang}</span></div>
						</c:when>
						
						<c:otherwise>
							<div><span>${soluongsanphamgiohang}</span></div>
						</c:otherwise>
					</c:choose>
				
				</a></li>
		        
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
			
	</div>
	
	<div class="container">
		<div class="row" style="margin-top: 13px">
			<div class="col-sm-2 col-md-2">
				<h3>Danh muc san pham</h3>
				<ul class="mymenu">
					<c:forEach var="value" items="${danhmuc }">
						<li><a href='<c:url value="/sanpham/${value.getMadanhmuc()}/${value.getTendanhmuc() }"/>'>${value.getTendanhmuc() }</a></li>
						
					</c:forEach>
					
				</ul>
			</div>
			
			<div class="col-sm-10 col-md-10">
				<div id="title-sanpham" class="container">
					<span>${tendanhmuc }</span>
					<div class=row style="margin-top: 42px">
					
						<c:forEach var="SanPham" items="${listSanPham }">
							<div class="col-md-3 col-sm-6">
								<a href='<c:url value="/chitiets/${SanPham.getMasanpham()}"/>'>
									<div class="sanpham wow zoomIn">
										<img alt="hang" src='<c:url value="/resource/Image/sanpham/${SanPham.getHinhsanpham() }" />' /><br/>
										<span> ${SanPham.getTensanpham() }</span><br/>
										<span class="gia"> ${SanPham.getGiatien() }</span>
									</div>
								</a>
							</div>
						</c:forEach>
						
						
					</div>
				</div>
			</div>
			
		</div>
		
	</div>
	
	
	
	<div id="footer" class="container-fluid">
		<div class="row">
			<div class="col-sm-4 col-md-4 wow tada">
				<p><span class="title-footer">THÔNG TIN SHOP</span></p>
				<span>Yame là 1 thương hiệu thời trang đầy uy tín, luôn đảm bảo chất lượng tốt nhất cho khách hàng.</span>
			</div>
			<div class="col-sm-4 col-md-4 wow tada">
				<p><span class="title-footer">LIÊN HỆ</span></p>
				<span>43 Nguyễn Trí Thanh, Ba Đình, Hà Nội.</span>
				<span>Email : torihoang1@gmail.com</span>
				<span>0903482094</span>
			</div>
			<div class="col-sm-4 col-md-4 wow tada">
				<p><span class="title-footer">GÓP Ý</span></p>
				<form action="" method="post">
					<input name="tennhanvien" class="material-textinput" style="margin-bottom: 8px" type="text" placeholder="Email"/>
					<textarea name="tuoi" style="margin-bottom: 8px" rows="4" cols="40" placeholder="Nội dung"></textarea>
					<button class="material-primary-bottom">ĐỒNG Ý</button>
				</form>
			</div>
		</div>
	
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>		