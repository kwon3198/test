<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="include/header.jsp"%>
<div id="container">
	<!-- location_area -->
	<div class="location_area member">
		<div class="box_inner">
			<h2 class="tit_page">
				스프링 <span class="in">in</span> 자바
			</h2>
			<p class="location">
				MEMBER <span class="path">/</span>${exception.getMessage()} 에러페이지
			</p>
			<ul class="page_menu clear">
				<li><a href="javascript:;" class="on">에러페이지</a></li>
			</ul>
		</div>
	</div>
	<!-- //location_area -->

	<!-- bodytext_area -->
	<div class="bodytext_area box_inner">
		<p><a href='<c:out value = "${prevPage}"/>'>이전페이지로 가기</a>
		<p>에러 상세내역</p>
		<ul>
    	<c:forEach items="${exception.getStackTrace()}" var="stack">
    	<li>${stack.toString()}</li>
    </c:forEach>
    </ul>
			<!-- appForm -->
		<form action="/login" method="post" class="appForm">
				<fieldset>
					<legend>로그인</legend>
					<p class="info_pilsoo pilsoo_item">필수입력</p>
					<ul class="app_list">
						<li class="clear">
							<label for="name_lbl" class="tit_lbl pilsoo_item">아이디</label>
							<div class="app_content">
							<input name="user_id" type="text" class="w100p" id="name_lbl"
								placeholder="아이디를 입력해주세요" />
						</div>
						</li>
						<li class="clear">
							<label for="pwd_lbl" class="tit_lbl pilsoo_item">비밀번호</label>
							<div class="app_content">
							<input name="user_pw" type="password" class="w100p" id="pwd_lbl"
								placeholder="비밀번호를 입력해주세요" />
						</div>
						</li>
					<p class="btn_line">
						<button type="submit" class="btn_baseColor">로그인</button>
					</p>
				
			</fieldset>
			</form>
			<!-- //appForm -->
			
		</div>
		<!-- //bodytext_area -->

	</div>
	<!-- //container -->
