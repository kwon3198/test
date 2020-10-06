<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../include/header.jsp" %>
<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">Starter Page</h1>
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
					<div class="col-md-12">
						<!-- general form elements disabled -->
						<div class="card card-warning">
							<div class="card-header">
								<h3 class="card-title">회원가입</h3>
							</div>
							<div class="card-body">
							<form role="form" action="/admin/member/write" method="post">
								<div class="form-group">
									<label>아이디</label> <input
										id="user_id" name="user_id" type="userid" class="form-control"
										placeholder="Enter userid">
								</div>
								<span id="msg_validation">
								</span>
								<div class="form-group">
									<label>비밀번호</label> <input
										name="user_pw" type="password" class="form-control"
										placeholder="Password">
								</div>
								<div class="form-group">
									<label>사용자 이름</label> <input
										required name="user_name" type="username" class="form-control"
										placeholder="username">
								</div>
								<div class="form-group">
									<label>이메일</label> <input
										name="email" type="email" class="form-control"
										placeholder="email">
								</div>
								<div class="form-group">
									<label >포인트</label> <input
										name="point" type="text" class="form-control"
										value="0">
								</div>
								<div class="form-group">
									<label>enabled</label> 
									<select name="enabled" class="form-control">
										<option value="0">false</option>
										<option value="1" selected>true</option>
									</select>
								</div>
									<div class="form-group">
									<label>level</label> 
									<select name="levels" class="form-control">
										<option value="ROLE_USER">ROLE_USER</option>
										<option value="ROLE_ADMIN">ROLE_ADMIN</option>
									</select>
								</div>
								<div class="card-body">
									<button disabled type="submit"
										id= "btn_summit" class="btn btn-success toastrDefaultSuccess"
										style="background-color: #ffc107;">
										Submit
									</button>
									<a href = "/admin/member/list?page=${pageVO.page}" class="btn btn-info toastrDefaultInfo">
										LIST ALL</a>
								</div>
							</div>
							</div>
						</div>
						</form>
					</div>
					<!-- /.container-fluid -->
				</div>
			</div>
			<!-- /.content-wrapper -->
			<script>
			$(document).ready(function(){
			//.forus() <-> .blur()
			$("#user_id").blur(function(){
				var user_id = $(this).val();
				//Ajex 백글운드로 작동되는 프로그램.(비동기 통신에 사용)
				$.ajax({
					type:'get',
					url:'/admin/member/idcheck?user_id=' + user_id,
					success:function(result){
						if(result=='1'){
							$("#msg_validation").text("기존 아이디가 존재합니다.");
							$("#msg_validation").css({"color":"red","font-size":"14px"});
							$("#btn_summit").attr("disabled",true);
						}else{
							$("#msg_validation").text("사용가능한 아이디 입니다.");
							$("#btn_summit").attr("disabled",false);
						}
					},
					error:function(){
						alert("중복아이디 체크 RestAPI서버에서 에러가 발생되었습니다");
					}
				});
			});
		});
		</script>
<%@ include file="../include/footer.jsp" %>