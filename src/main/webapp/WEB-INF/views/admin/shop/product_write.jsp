<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/header.jsp" %>
<!-- Content Wrapper. Contains page content -->

		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">DashBoard Management</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Starter Page</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
				<div class="col-md-12">
					<!-- general form elements disabled -->
					<div class="card card-warning">
						<div class="card-header">
							<h3 class="card-title">CREATE BOARD</h3>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
								<div class="row">
									<div class="col-sm-12">
										<!-- text input -->
										<div class="form-group">
											<label>Name</label> 
											<input name="name" type="text" class="form-control"
												placeholder="상품명을 입력해주세요">
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group">
											<label>Content</label> 
											<textarea name="content" class="form-control" rows="3"
												placeholder="상품설명을 입력해주세요"></textarea>
										</div>
									</div>
									<div class="form-group">
										<label>Brand</label>
										<select name="brand" class="form-control" required>
										<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
										<option value="">브랜드</option>
										<c:forEach items="${brdTypeMenu}" var="brdTypeMenu">
										<option value="${brdTypeMenu.brand}" <c:out value="${(session_brand eq brdTypeMenu.brand)?	('selected'):('') }"/>>${brdTypeMenu.brdname}</option>
										</c:forEach>
										</select>
									</div>
									<div class="form-group">
											<label>Price</label> 
											<input name="price" type="text" class="form-control"
												placeholder="가격을 입력해주세요(원화)">
									</div>
									<div class="form-group">
											<!-- <label>Category</label> 
											<input name="category" type="text" class="form-control"
												placeholder="카테고리를 입력해주세요"> -->
										<label>Category</label>
										<select name="category" class="form-control" required>
										<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
										<option value="">카테고리</option>
										<c:forEach items="${cateTypeMenu}" var="cateTypeMenu">
										<option value="${cateTypeMenu.category}" <c:out value="${(session_category eq cateTypeMenu.category)?	('selected'):('') }"/>>${cateTypeMenu.catename}</option>
										</c:forEach>
										</select>
									</div>
									<div class="form-group">
											<label>sales</label> 
											<input name="sales" type="text" class="form-control"
												placeholder="판매량을 입력해주세요">
									</div>
									<div class="form-group">
											<label>stock</label> 
											<input name="stock" type="text" class="form-control"
												placeholder="재고를 입력해주세요">
									</div>
									<div class="form-group">
										<label for="img">IMAGE</label> 		
										<input type="file" name="file" id="img" />
										<div class="select_img"><img src="" /></div>
										<script>
										  $("#img").change(function(){
										   if(this.files && this.files[0]) {
										    var reader = new FileReader;
										    reader.onload = function(data) {
										     $(".select_img img").attr("src", data.target.result).width(500);        
										    }
										    reader.readAsDataURL(this.files[0]);
										   }
										  });
										 </script>
										 <!-- 이미지 저장위치 -->
										 <%=request.getRealPath("/") %>
									</div>
									</div>
									<div class="col-sm-12">
										<div class="buttons">
											<button type="submit" class="btn btn-warning">Submit</button>
											<a href="/admin/shop/list" class="btn btn-primary">LIST ALL</a>
										</div>
									</div>
									</form>
								</div>
						</div>
						<!-- /.content-header -->
					</div>
					
				</div>
			</div> 
    <!-- ./Content Wrapper. Contains page content -->
<%@ include file="../include/footer.jsp" %> 