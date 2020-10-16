<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Kwon | Shop</title>
    <link href="/resources/shop/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/shop/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/shop/css/prettyPhoto.css" rel="stylesheet">
    <link href="/resources/shop/css/price-range.css" rel="stylesheet">
    <link href="/resources/shop/css/animate.css" rel="stylesheet">
	<link href="/resources/shop/css/main.css" rel="stylesheet">
	<link href="/resources/shop/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="/resources/shop/js/html5shiv.js"></script>
    <script src="/resources/shop/js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/shop/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/shop/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/shop/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/resources/shop/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +82 010-9822-7768</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> dkssk4468@naver.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<c:choose> 
								<c:when test ="${session_enabled eq 'true'}">
								<li><span style="padding: 11px 15px;color:black">${session_username}님</span>
								</li>
								<li><a href="/logout"><i class="fa fa-lock">로그아웃</i></a>
								</li>
								<c:if  test="${session_levels eq 'ROLE_ADMIN'}"> 
									<li><a href="/admin"><i class="fa fa-lock">관리자</i></a>
									</li>
								</c:if>
								</c:when>
								<c:otherwise> 
									<li><a href="/login" onclick='window.open("/login","_blank","height=500,width=500, status=yes,toolbar=no,menubar=no,location=no");return false'><i class="fa fa-lock">로그인</i></a></li>
									<li><a href="/join" onclick='window.open("/join","_blank","height=500,width=500, status=yes,toolbar=no,menubar=no,location=no");return false'><i class="fa fa-lock">회원가입</i></a></li>
								</c:otherwise>
							</c:choose>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="/shop"><img src="/resources/shop/images/home/logo2.png" alt="로고"/></a>
						</div>
						<div class="btn-group pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									한국어
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="#">영어</a></li>
									<li><a href="#">UK</a></li>
								</ul>
							</div>
							
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									원화
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="#">DOLLAR</a></li>
									<li><a href="#">Pound</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<c:choose> 
								<c:when test ="${session_enabled eq 'true'}">
								<li><a href="/shop/mypage/update"><i class="fa fa-user"></i> 내정보</a></li>
								<li><a href="#"><i class="fa fa-star"></i> 찜목록</a></li>
								<li><a href="checkout.html"><i class="fa fa-crosshairs"></i> 결제하기</a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> 쇼핑카트</a></li>
								</c:when>
								<c:otherwise> 
								<li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Checkout</a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> 쇼핑카트</a></li>
								</c:otherwise>
								</c:choose>
					
								
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="/shop" class="active">홈으로</a></li>
								<li class="dropdown"><a href="#">샵<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="/shop/menu/products">전체보기</a></li>
										<li><a href="/shop/menu/cart">쇼핑카트</a></li> 
										<li><a href="/shop/menu/checkout">결제하기</a></li> 
                                    </ul>
                                </li> 
								<li class="dropdown"><a href="#">블로그<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="blog.html">Blog List</a></li>
										<li><a href="blog-single.html">Blog Single</a></li>
                                    </ul>
                                </li> 
								<li><a href="/shop/menu/contact">고객센터</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->