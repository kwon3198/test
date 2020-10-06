<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp"%>
	<html lang="kor" class="no-js">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Kwon HeeKyung | portfolio</title>
		<meta name="description" content="A simple slideshow with a diagonal look.">
		<meta name="keywords" content="slideshow, diagonal, thumbnails, images, front end, javascript, css">
		<meta name="author" content="Codrops">
		<link rel="shortcut icon" href="/resources/dist/favicon.26242483.ico">
		<link rel="stylesheet" href="https://use.typekit.net/ldj8uhs.css">
		<link rel="stylesheet" type="text/css" href="/resources/dist/base.98fd6c19.css">
		
		<script>document.documentElement.className = "js";

var supportsCssVars = function supportsCssVars() {
  var e,
      t = document.createElement("style");
  return t.innerHTML = "root: { --tmp-var: bold; }", document.head.appendChild(t), e = !!(window.CSS && window.CSS.supports && window.CSS.supports("font-weight", "var(--tmp-var)")), t.parentNode.removeChild(t), e;
};

supportsCssVars()</script>
		<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js"></script>
		<script src="//tympanus.net/codrops/adpacks/analytics.js"></script>
	<link rel="stylesheet" href="/resources/dist/demo1.151408fb.css"></head>
	<body class="loading">
		<main>
			<div class="slides">
				<div class="slide slide--current">
					<div class="slide__img-wrap">
						<img class="slide__img slide__img--1" src="/resources/dist/1.dc197a9a.jpg" alt="Some image">
						<img class="slide__img slide__img--2" src="/resources/dist/2.3ca6bb44.jpg" alt="Some image">
						<div class="break"></div>
						<img class="slide__img slide__img--3" src="/resources/dist/3.a433b89d.jpg" alt="Some image">
						<img class="slide__img slide__img--4" src="/resources/dist/4.c6d96be5.jpg" alt="Some image">
					</div>
					<h3 class="slide__title">
					<a href="/book">
						<span class="slide__title-inner" data-splitting="">Hotels</span>
						<span class="slide__title-inner slide__title-inner--middle" data-splitting="">and</span>
						<span class="slide__title-inner" data-splitting="">Resorts</span>
					</a>
					</h3>
				</div>
				<div class="slide">
					<div class="slide__img-wrap">
						<img class="slide__img slide__img--1" src="/resources/dist/5.689b68fd.jpg" alt="Some image">
						<img class="slide__img slide__img--2" src="/resources/dist/6.e96dcfff.jpg" alt="Some image">
						<div class="break"></div>
						<img class="slide__img slide__img--3" src="/resources/dist/7.2d66e3ed.jpg" alt="Some image">
						<img class="slide__img slide__img--4" src="/resources/dist/8.f4323fe0.jpg" alt="Some image">
					</div>
					<h5 class="slide__title">
					<a href="/airplane">
						<span class="slide__title-inner" data-splitting="">Air</span>
						<span class="slide__title-inner slide__title-inner--middle" data-splitting=""></span>
						<span class="slide__title-inner" data-splitting="">plane</span>
						</a>
					</h5>
				</div>
				<div class="slide">
					<div class="slide__img-wrap">
						<img class="slide__img slide__img--1" src="/resources/dist/9.c9233dac.jpg" alt="Some image">
						<img class="slide__img slide__img--2" src="/resources/dist/10.5e22fdc3.jpg" alt="Some image">
						<div class="break"></div>
						<img class="slide__img slide__img--3" src="/resources/dist/11.a56b8aeb.jpg" alt="Some image">
						<img class="slide__img slide__img--4" src="/resources/dist/12.b5a57fd7.jpg" alt="Some image">
					</div>
					<h5 class="slide__title">
					<a href="">
						<span class="slide__title-inner" data-splitting="">Car</span>
						<span class="slide__title-inner slide__title-inner--middle" data-splitting=""></span>
						<span class="slide__title-inner" data-splitting="">Rentals</span>
					</a>
					</h5>
				</div>
				<div class="slide">
					<div class="slide__img-wrap">
						<img class="slide__img slide__img--1" src="/resources/dist/13.3858c623.jpg" alt="Some image">
						<img class="slide__img slide__img--2" src="/resources/dist/14.c732d2b3.jpg" alt="Some image">
						<div class="break"></div>
						<img class="slide__img slide__img--3" src="/resources/dist/15.61b13bcc.jpg" alt="Some image">
						<img class="slide__img slide__img--4" src="/resources/dist/16.39461312.jpg" alt="Some image">
					</div>
					<h5 class="slide__title">
					<a href="/shop">
						<span class="slide__title-inner" data-splitting="">look</span>
						<span class="slide__title-inner slide__title-inner--middle" data-splitting="">and</span>
						<span class="slide__title-inner" data-splitting="">buy</span>
					</a>
					</h5>
				</div>
				<button class="slides__nav slides__nav--prev">
					<svg><path d="M82 10H9" stroke="#fff" stroke-width="2"></path><path d="M10.474 0C7.988 4 4.118 7.422 0 10c4.156 2.539 7.865 6 10.474 10h2.485c-2.608-4-5.744-7.379-9.618-10C7.215 7.34 10.474 4 13 0h-2.526zm6 0C13.987 4 10.116 7.422 6 10c4.156 2.539 7.865 6 10.474 10h2.485c-2.606-4-5.745-7.379-9.617-10C13.214 7.34 16.474 4 19 0h-2.526z" fill="#fff"></path></svg>
				</button>
				<button class="slides__nav slides__nav--next">
					<svg><path d="M0 10h73" stroke="#fff" stroke-width="2"></path><path d="M71.526 0C74.012 4 77.882 7.422 82 10c-4.156 2.539-7.865 6-10.474 10h-2.485c2.608-4 5.744-7.379 9.618-10C74.785 7.34 71.526 4 69 0h2.526zm-6 0C68.013 4 71.884 7.422 76 10c-4.156 2.539-7.865 6-10.474 10H63.04c2.606-4 5.745-7.379 9.617-10C68.786 7.34 65.526 4 63 0h2.526z" fill="#fff"></path></svg>
				</button>
			</div>
		</main>
		<svg class="cursor" width="60" height="60" viewBox="0 0 60 60">
			<circle class="cursor__inner" cx="30" cy="30" r="15"></circle>
		</svg>
		<script src="/resources/dist/demo1.151408fb.js"></script>
	</body>
</html>