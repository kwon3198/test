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
									<h3 class="card-title">브랜드 생성 리스트</h3>
								</div>
								
								<!-- /.card-body -->
							</div>
							<form role = "form" action="/admin/shop/brand/write" method="post">
								<div class="form-group">
									<label>브랜드</label>
									<input id ="brand" value= "${brandVO.brand}" name="brand" type="text" class="form-control"
										placeholder="brand를 입력해 주세요" required>
								</div>
								<span id="msg_validation"></span>
								<div class="form-group">
									<label>브랜드이름</label>
									<input value= "${brandVO.brdname}" name="brdname" type="text" class="form-control"
										placeholder="브랜드을 입력해 주세요">
								</div>
								<div class="form-group">
									<label>브랜드출력순서</label>
									<input value= "0" name="brdsun" type="text" class="form-control"
										placeholder="출력순서는 숫자로 입력해주세요">
								</div>
						</div>
					
					<div class="card-body">
								<button id= "submit_check" disabled type="submit"
									class="btn btn-success toastrDefaultSuccess"
									style="background-color: #ffc107;">
									Submit
								</button>
								<a href = "/admin/shop/category/list" class="btn btn-info toastrDefaultInfo">
									LIST ALL</a>
							</div>
					</form>
				</div>
					
					<!-- /.control-sidebar -->
				</div>
			</div>	
							<!-- /.card -->
					</div>
					<nav aria-label="Contacts Page Navigation">
					<ul class="pagination" style="position:relative;left:40%;">
					<c:if test="${pageVO.prev}">
					<li class="page-item">
					<a class="page-link" href="/admin/shop/brand/list?page=${pageVO.startPage - 1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">이전</a>
					</li>
					</c:if>
					<c:forEach begin="${pageVO.startPage}" end="${pageVO.endPage}" var="idx">
					 <li class='page-item <c:out value="${idx==pageVO.page?'active':''}"/>'><a href="/admin/shop/brand/list?page=${idx}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}" class="page-link">${idx}</a></li>
					</c:forEach>
					<c:if test="${pageVO.next}">
					<li class="page-item">
					<a class="page-link" href="/admin/shop/brand/list?page=${pageVO.endPage + 1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">다음</a>
					</li>
					</c:if>
             </ul>
             </nav>
		<script>
		$(document).ready(function(){
			//.forus() <-> .blur()
			$("#brand").blur(function(){
				var brand = $("#brand").val();
				//Ajax => asyn비동기 Javascript And Xml(json사용-key:value)
				$.ajax({
					type:'get',
					url:'/admin/shop/brdtype/brdtype_check?brand=' + brand,
					success:function(result){
						if(result=='1'){
							alert('기존 게시판이 존재합니다.');
							$("#msg_validation").text("기존 게시판이 존재합니다.");
							$("#msg_validation").css({"color":"red","font-size":"14px"});
							$("#submit_check").attr("disabled",true);
						}else{
							$("#msg_validation").text("사용가능한 게시판 입니다.");
							$("#submit_check").attr("disabled",false);
						}
					},
					error:function(){
						alert("RestAPI서버에서 에러가 발생되었습니다");
					}
				});
			});
		});
		</script>
<%@ include file="../../include/footer.jsp" %>