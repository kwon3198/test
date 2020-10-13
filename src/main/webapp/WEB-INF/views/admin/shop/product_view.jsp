<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/header.jsp" %>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>상품 상세보기</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/admim/shop/list">리스트</a></li>
              <li class="breadcrumb-item active">상세보기</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card card-solid">
        <div class="card-body">
          <div class="row">
          
            <div class="col-12 col-sm-6">
              <h3 class="d-inline-block d-sm-none">${productVO.name}</h3>
				<div class="card-body">
					<form role="form" action="/admin/shop/delete" method="post" enctype="multipart/form-data">
						<div class="row">			
									<div class="col-sm-12">
										<div class="form-group">
											<label>Name</label> <br> ${productVO.name}
										</div>
									</div>

									<div class="col-sm-12">
										<div class="form-group">
											<label>Content</label>
											 <br>
											 <textarea name="content" class="form-control" rows="3"
												placeholder="Enter Writer">${productVO.content}</textarea>
										</div>
									</div>

									<div class="col-sm-12">
										<!-- text input -->
										<div class="form-group">
											<label>Brand</label> <br> ${productVO.brand}
										</div>
									</div>
									<div class="col-sm-12">
										<!-- text input -->
										<div class="form-group">
											<label>Price</label> <br> <fmt:formatNumber value="${productVO.price}" pattern="###,###,###"/>
										</div>
									</div>
									<div class="col-sm-12">
										<!-- text input -->
										<div class="form-group">
											<label>Category</label> <br>${productVO.category}
										</div>
									</div>
									<div class="col-sm-12">
										<!-- text input -->
										<div class="form-group">
											<label>sales</label> <br> ${productVO.sales}
										</div>
									</div>
									<div class="col-sm-12">
										<!-- text input -->
										<div class="form-group">
											<label>stock</label> <br> ${productVO.stock}
										</div>
									</div>
									<div class="inputArea">
									<div class="col-sm-12">
										
											<label for="img">IMAGE</label>
											 <p>원본사진</p>
											 <img src="${productVO.img}"/>
											 <p>썸네일</p>
											 <img src="${productVO.thumbimg}"/>
									</div>
									</div>
									
									<div class="buttons">
										<a href="/admin/shop/update?bno=${productVO.bno}&page=${pageVO.page}" class="btn btn-warning">UPDATE</a>
										<button type="submit" class="btn btn-danger">DELETE</button>
										<a href="/admin/shop/list?page=${pageVO.page}" class="btn btn-primary">LIST ALL</a>
									</div>
								</div>
							<input type="hidden" name="bno" value="${productVO.bno}">
							</form>
						</div>
          </div>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->
	</div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<%@ include file="../include/footer.jsp" %> 