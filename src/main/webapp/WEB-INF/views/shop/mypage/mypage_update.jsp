<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
	
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="login-form"><!--login form-->
						<h2>내 정보 </h2>
						<form id="form_mypage" action="/shop/mypage/update" method="post">
							<h5>아이디</h5>
							<input value="${memberVO.user_id}" name="user_id" type="text" id="name_lbl" readonly/>
							<h5>비밀번호</h5>
							<input value="" name="user_pw" type="text" placeholder="비밀번호를 입력해주세요"/>
							<h5>이름</h5>
							<input value="${memberVO.user_name}" name="user_name" type="text" placeholder="이름를 입력해주세요"/>
							<h5>이메일</h5>
							<input value="${memberVO.email}" name="email" type="text" placeholder="이메일를 입력해주세요"/>
							<h5>포인트</h5>
							<input value="${memberVO.point}" name="point" type="text" readonly/>
							<input value="${memberVO.enabled}" name="enabled" type="hidden" />
							<input value="${memberVO.levels}" name="levels" type="hidden" />
							<button class="btn btn-default check_out">정보수정</button>
							<button class="btn btn-default check_out" id="btn_delete" type="button" onclick="button1_click();">회원탈퇴</button>
							<button type="button" onclick="location.href='/shop'" class="btn btn-default check_out">홈으로</button>
						</form>
					</div><!--/login form-->
				</div>
			</div>
		</div>
		<script>
		function button1_click() {
				if(confirm("정말로 탈퇴하시겠습니다까?")){
					$("#form_mypage").attr("action","/shop/mypage/delete");
					$("#form_mypage").submit();
				}
			}
		</script>
<%@ include file="../include/footer.jsp"%>