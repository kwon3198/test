<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../../include/header.jsp" %>

<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">DashBoard Mangement</h1>
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

					<!-- /.row -->
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">카테고리 생성 리스트</h3>
								</div>
								
								<!-- /.card-body -->
							</div>
							<form id="form_category" role = "form" action="/admin/shop/category/update" method="post">
								<div class="form-group">
									<label>카테고리타입</label>
									<input value= "${categoryVO.category}" name="category" type="text" class="form-control"
										placeholder="Enter Title" readonly>
								</div>
								<div class="form-group">
									<label>카테고리이름</label>
									<input value= "${categoryVO.catename}" name="catename" type="text" class="form-control"
										placeholder="카테고리 이름을 입력해 주세요">
								</div>
								<div class="form-group">
									<label>카테고리출력순서</label>
									<input value= "${categoryVO.catesun}" name="catesun" type="text" class="form-control"
										placeholder="출력순서는 숫자로 입력해주세요">
								</div>
						</div>
					
					<div class="card-body">
								<button type="submit"
									class="btn btn-success toastrDefaultSuccess"
									style="background-color: #ffc107;">
									Submit
								</button>
								<a href = "#" id = "btn_delete" class="btn btn-danger">
									DELETE</a>
								<a href = "/admin/shop/category/list" class="btn btn-info toastrDefaultInfo">
									LIST ALL</a>
							</div>
					<!-- /.content-wrapper -->

					
					<!-- /.control-sidebar -->
						</div>
					</div>
				</form>
			</div>				
			<!-- /.card -->
		</div>
					<nav aria-label="Contacts Page Navigation">
					<ul class="pagination" style="position:relative;left:40%;">
					<c:if test="${pageVO.prev}">
					<li class="page-item">
					<a class="page-link" href="/admin/shop/category/list?page=${pageVO.startPage - 1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">이전</a>
					</li>
					</c:if>
					<c:forEach begin="${pageVO.startPage}" end="${pageVO.endPage}" var="idx">
					 <li class='page-item <c:out value="${idx==pageVO.page?'active':''}"/>'><a href="/admin/shop/category/list?page=${idx}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}" class="page-link">${idx}</a></li>
					</c:forEach>
					<c:if test="${pageVO.next}">
					<li class="page-item">
					<a class="page-link" href="/admin/shop/category/list?page=${pageVO.endPage + 1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">다음</a>
					</li>
					</c:if>
             </ul>
             </nav>
		<script>
		//제이쿼리 시작 function abc(){}
		$(document).ready(function(){ //call back함수
			$("#btn_delete").click(function(){
				if(confirm("정말로 삭제하시겠습니까?")){
				$("#form_category").attr("action","/admin/shop/category/delete");
				$("#form_category").submit();
				}
			});
		});
		</script>
<%@ include file="../../include/footer.jsp" %>