<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>회원가입 페이지</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="/resources/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
<script>
if('${param.msg}' == "fail"){
	alert('로그인에 실패했습니다.! 상세메세지 ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}');
}
</script>

</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <b>회원</b>가입
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">회원정보를 입력해주세요.</p>

      <form role="form" action="/join" method="post">
        <div class="input-group mb-3">
          <input required value="${memberVO.user_id}" name="user_id" type="text" class="form-control" id="user_id" placeholder="아이디를 입력해주세요" />
          <span id="validayion_idcheck"></span>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input value="" name="user_pw" type="password" class="form-control"placeholder="비밀번호를 입력해주세요"/>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input required value="${memberVO.user_name}" name="user_name" type="text" class="form-control" placeholder="이름를 입력해주세요"/>
        </div>
        <div class="input-group mb-3">
          <input value="${memberVO.email}" name="email" type="text" class="form-control" placeholder="이메일를 입력해주세요"/>
        </div>
        <input value="0" name="point" type="hidden" class="w100p"/>
		<input value="1" name="enabled" type="hidden" class="w100p"/>								
		<input value="ROLE_USER" name="levels" type="hidden" class="w100p"/>
 		<div class="row">
          <div class="col-4">
            <button disabled id="submit_check" type="submit" class="btn btn-primary btn-block">회원가입</button>         
          </div>
          <p class="btn_line">
				
				</p>
          <!-- /.col -->
        </div>
      </form>

      <!-- /.social-auth-links -->
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/dist/js/adminlte.min.js"></script>
<!-- 아이디 중복체크 -->
<script>
		$(document).ready(function(){
			//.forus() <-> .blur()
			$("#user_id").blur(function(){
				var user_id = $("#user_id").val();
				//Ajax => asyn비동기 Javascript And Xml(json사용-key:value)
				$.ajax({
					type:'get',
					url:'/admin/member/idcheck?user_id=' + user_id,
					success:function(result){ //중복아이디가 존재할떄
						if(result=='1'){							
							$("#submit_check").attr("disabled",true);
							$("#submit_check").css({"cursor":"none","opacity":"0.5"});
							$("#validayion_idcheck").text("기존 아이디가 존재합니다.");
							$("#validayion_idcheck").css({"color":"red","font-size":"14px"});
						}else{//중복아이디가 존재하지 않을떄
							$("#submit_check").attr("disabled",false);
							$("#submit_check").css({"cursor":"pointer","opacity":"1"});
							$("#validayion_idcheck").text("사용가능한 아이디 입니다.");
							$("#validayion_idcheck").css({"color":"blue","font-size":"14px"});
						}
					},
					error:function(){
						alert("RestAPI서버에서 에러가 발생되었습니다");
					}
				});
			});
		});
		</script>
</body>
</html>
