<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
							<h3 class="card-title">UPDATE BOARD</h3>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<form role="form" action="/admin/shop/update" method="post" encType="multipart/form-data">
								<div class="row">
									<div class="col-sm-12">
										<!-- text input -->
										<div class="form-group">
											<label>Name</label> 
											<input value="${productVO.name}" name="name" type="text" class="form-control"
												placeholder="Enter name">
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group">
											<label>Content</label> 
											<textarea name="content" class="form-control" rows="3"
												placeholder="Enter content">${productVO.content}</textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12">
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
									</div>
									<div class="form-group">
											<label>Price</label> 
											<input value="${productVO.price}" name="price" type="text" class="form-control"
												placeholder="Enter price">
									</div>
									<div class="form-group">
											<label>Category</label>
										<select name="category" class="form-control" required>
										<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
										<option value="">카테고리</option>
										<c:forEach items="${boardTypeMenu}" var="boardTypeMenu">
										<option value="${boardTypeMenu.category}" <c:out value="${(session_category eq boardTypeMenu.category)?	('selected'):('') }"/>>${boardTypeMenu.catename}</option>
										</c:forEach>
										</select>
									</div>
									<div class="form-group">
											<label>Sales</label> 
											<input value="${productVO.sales}" name="sales" type="text" class="form-control"
												placeholder="Enter sales">
									</div>
									<div class="form-group">
											<label>Stock</label> 
											<input value="${productVO.stock}" name=stock type="text" class="form-control"
												placeholder="Enter stock">
									</div>
									<div class="form-group">
									<div class="custom-file">		
										<td><input type="file" value="파일 선택" name="file" /></td>
									</div>
									</div>
										<div class="buttons">
											<input type="hidden" name="bno" value="${productVO.bno}">
											<input type="hidden" name="page" value="${pageVO.page}">
											<button type="submit" class="btn btn-warning">Submit</button>
											<a href="/admin/shop/list?page=${pageVO.page}" class="btn btn-primary">LIST ALL</a>
										</div>
									</div>
									</form>
								</div>
						</div>
						<!-- /.content-header -->

						<!-- Main content -->
						<div class="content"></div>
						<!-- .content  -->
					</div>
				</div>
			</div>
		<!-- ./Content Wrapper -->
<%@ include file="../include/footer.jsp" %> 