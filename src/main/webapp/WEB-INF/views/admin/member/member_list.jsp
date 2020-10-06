<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../include/header.jsp"%>

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
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">멤버 검색</h3>
							<div class="card-tools"></div>
						</div>
						<!-- 게시판 검색창 -->
					<form action="/admin/member/list"
								style="border-bottom: 20px solid rgba(0, 0, 0, .125); padding: .75rem 1.25rem;">
								<select name="searchType">
									<option value="all">전체</option>
								</select> <input name="searchKeyword" value=""> 
								<input type="submit" value="검색">
							</form>
						<!-- /.card-header -->
						<div class="card-body table-responsive p-0">
							<table class="table table-hover text-nowrap">
								<thead>
									<tr>
										<th>user_id</th>
										<th>user_name[point]</th>
										<th>email</th>
										<th>Use</th>
										<th>REGDATE</th>
										<th>lever</th>
									</tr>
								</thead>
								<tbody>
									
									<c:forEach items="${memberList}" var="memberVO" varStatus="status">
									<tr>
										<td>${memberVO.user_id}</td>
										<td><a href="/admin/member/view?user_id=${memberVO.user_id}&page=${pageVO.page}">${memberVO.user_name}[${memberVO.point}]</a></td>
										<td>${memberVO.email}</td>
										<td><span class="tag tag-success">${memberVO.enabled}</span></td>
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${memberVO.reg_date}"/>
										<td><small class="badge badge-info">${memberVO.levels}</small></td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
					<nav aria-label="Contacts Page Navigation">
					<a href = "/admin/member/write" class="btn btn-info toastrDefaultInfo">CREATE</a>
					<ul class="pagination" style="position:relative;left:40%;">
					<c:if test="${pageVO.prev}">
					<li class="page-item">
					<a class="page-link" href="/admin/member/list?page=${pageVO.startPage - 1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">이전</a>
					</li>
					</c:if>
					<c:forEach begin="${pageVO.startPage}" end="${pageVO.endPage}" var="idx">
					 <li class='page-item <c:out value="${idx==pageVO.page?'active':''}"/>'><a href="/admin/member/list?page=${idx}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}" class="page-link">${idx}</a></li>
					</c:forEach>
					<c:if test="${pageVO.next}">
					<li class="page-item">
					<a class="page-link" href="/admin/member/list?page=${pageVO.endPage + 1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">다음</a>
					</li>
					</c:if>
             </ul>
             </nav>
					</ul>
				</div>
			</div>

		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp"%>