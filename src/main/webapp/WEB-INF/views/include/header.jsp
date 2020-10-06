<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="frame">
	<div class="frame__inner">
		<h1 class="frame__title">KwonHeeKyung Portfolio</h1>
		<div class="frame__links">
			<a href="/book">Hotels & Resorts</a>
			<a href="/airplane">Airplane</a>
			<a href="/shop">Shop</a>
		 	<c:choose> 
			<c:when test ="${session_enabled eq 'true'}">
			<a href="/logout">로그아웃</a>
			<c:if test="${session_levels eq 'ROLE_ADMIN'}"> 
			<a href="/admin">관리자</a>
			<span style="color:white">${session_username}님</span>
			</c:if>
			</c:when>
			<c:otherwise> 
			<a href="/login" onclick='window.open("/login","_blank","height=500,width=500, status=yes,toolbar=no,menubar=no,location=no");return false'>로그인</a>
			<a href="/join" onclick='window.open("/join","_blank","height=500,width=500, status=yes,toolbar=no,menubar=no,location=no");return false'>회원가입</a>
			</c:otherwise>
			</c:choose>
		</div>

	</div>
	<h1 class="frame__logo">BOOK&emsp;&&emsp;RENT</h1>
</div>
