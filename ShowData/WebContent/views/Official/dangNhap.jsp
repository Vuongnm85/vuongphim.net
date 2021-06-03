<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Layout</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
.row.main {
	margin: 0;
	padding: 0;
	width: 100%;
	height: 1100px;
	background-color: navajowhite;
	width: 100%;
}

.row.footer {
	position: relative;
	height: 80px;
	background-color: #151515;
	font-size: 16px;
}

[class*="col-"] {
	float: left;
	padding: 15px;
	min-height: 600px;
}

.col-4 {
	margin: 0;
	padding: 0;
	width: 33.333%;
	background-color: #610B21;
}

.col-8 {
	margin: 0;
	padding: 0;
	width: 66.667%;
	background-color: #610B21;
}

.phan9 {
	margin: 0;
	padding: 0;
	width: 75%;
	height: 1100px;
	background-color: #610B21;
}

.col-3 {
	margin: 0;
	padding: 0;
	width: 25%;
	height: 1100px;
	background-color: #212529;
}

.col-10 {
	margin: 0;
	padding: 0;
	width: 83.333%;
	height: 80px;
}

.col-2 {
	margin: 0;
	padding: 0;
	width: 16.667%;
	height: 80px;
}

.top {
	height: 50%;
	width: 100%;
	background-color: red;
	position: relative;
}

.bottom {
	height: 50%;
	width: 100%;
	background-color: yellow;
	position: relative;
	background-color: yellow;
}

.class-card {
	margin-left: 30px;
	margin-top: 15px;
}

h1 {
	padding-top: 10px;
	font-weight: bold;
}

.card-img {
	margin-left: 0;
}

.text {
	margin-top: 20px;
	color: white;
	margin-top: 20px;
	margin-left: 10px;
}

h5 : hover {
	color: yellow;
}
</style>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />

<!-- CSS BODY -->
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet"
	href="/ShowData/views/Official/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet"
	href="/ShowData/views/Official/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="/ShowData/views/Official/css/elegant-icons.css" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css"
	rel="stylesheet">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
<style>
.product__pagination a {
	display: inline-block;
	font-size: 15px;
	color: #b7b7b7;
	font-weight: 600;
	height: 50px;
	width: 50px;
	border: 1px solid transparent;
	border-radius: 50%;
	line-height: 48px;
	text-align: center;
	-webkit-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
}

html, body {
	height: 100%;
	font-family: "Cairo", sans-serif;
	-webkit-font-smoothing: antialiased;
	font-smoothing: antialiased;
	background: #111;
}

h1, h2, h3, h4, h5, h6 {
	margin: 0;
	color: #111111;
	font-weight: 400;
	font-family: "Cairo", sans-serif;
}

h1 {
	font-size: 70px;
}

h2 {
	font-size: 36px;
}

h3 {
	font-size: 30px;
}

h4 {
	font-size: 24px;
}

h5 {
	font-size: 18px;
}

h6 {
	font-size: 16px;
}

p {
	font-size: 16px;
	font-family: "Cairo", sans-serif;
	color: #6f6f6f;
	font-weight: 400;
	line-height: 26px;
	margin: 0 0 15px 0;
}

img {
	max-width: 100%;
}

input:focus, select:focus, button:focus, textarea:focus {
	outline: none;
}

a:hover, a:focus {
	text-decoration: none;
	outline: none;
	color: #ffffff;
}

ul, ol {
	padding: 0;
	margin: 0;
}
/*---------------------
        Featured
        -----------------------*/
.featured {
	padding-top: 80px;
	padding-bottom: 40px;
}

.featured__controls {
	text-align: center;
	margin-bottom: 30px;
}

.featured__controls ul li {
	list-style: none;
	font-size: 18px;
	color: #9B9B9B;
	display: inline-block;
	margin-right: 25px;
	position: relative;
	cursor: pointer;
}

.featured__controls ul li.active:after {
	opacity: 1;
}

.featured__controls ul li:after {
	position: absolute;
	left: 0;
	bottom: -2px;
	width: 100%;
	height: 2px;
	background: #ff6500;
	content: "";
	opacity: 0;
}

.featured__controls ul li:last-child {
	margin-right: 0;
}

.featured__item {
	margin-bottom: 50px;
}

.featured__item:hover .featured__item__pic .featured__item__pic__hover {
	bottom: 20px;
}

.featured__item__pic {
	height: 270px;
	width: 193px;
	margin: auto;
	position: relative;
	overflow: hidden;
	background-position: center center;
}

.featured__item__pic__hover {
	position: absolute;
	left: 0;
	bottom: -50px;
	width: 100%;
	text-align: center;
	-webkit-transition: all, 0.5s;
	-moz-transition: all, 0.5s;
	-ms-transition: all, 0.5s;
	-o-transition: all, 0.5s;
	transition: all, 0.5s;
}

.featured__item__pic__hover li {
	list-style: none;
	display: inline-block;
	margin-right: 6px;
}

.featured__item__pic__hover li:last-child {
	margin-right: 0;
}

.featured__item__pic__hover li:hover a {
	background: #ff6500;
	border-color: #ff6500;
}

.featured__item__pic__hover li:hover a i {
	color: #ffffff;
	transform: rotate(360deg);
}

.featured__item__pic__hover li a {
	font-size: 16px;
	color: #1c1c1c;
	height: 40px;
	width: 40px;
	line-height: 40px;
	text-align: center;
	border: 1px solid #ebebeb;
	background: #ffffff;
	display: block;
	border-radius: 50%;
	-webkit-transition: all, 0.5s;
	-moz-transition: all, 0.5s;
	-ms-transition: all, 0.5s;
	-o-transition: all, 0.5s;
	transition: all, 0.5s;
}

.featured__item__pic__hover li a i {
	position: relative;
	transform: rotate(0);
	-webkit-transition: all, 0.3s;
	-moz-transition: all, 0.3s;
	-ms-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
}

.featured__item__text {
	text-align: center;
	padding-top: 15px;
}

.featured__item__text h6 {
	margin-bottom: 10px;
}

.featured__item__text h6 a {
	color: #9B9B9B;
}

.featured__item__text h5 {
	color: #9B9B9B;
	font-weight: 700;
}
/*---------------------
  Helper CSS
-----------------------*/
.section-title {
	margin-bottom: 50px;
	text-align: center;
}

.section-title h2 {
	color: #9B9B9B;
	font-weight: 700;
	position: relative;
}

.section-title h2:after {
	position: absolute;
	left: 0;
	bottom: -15px;
	right: 0;
	height: 4px;
	width: 80px;
	background: #ff6500;
	content: "";
	margin: 0 auto;
}

.set-bg {
	background-repeat: no-repeat;
	background-size: cover;
	background-position: top center;
}

.spad {
	padding-top: 0px;
	padding-bottom: 100px;
}

.text-white h1, .text-white h2, .text-white h3, .text-white h4,
	.text-white h5, .text-white h6, .text-white p, .text-white span,
	.text-white li, .text-white a {
	color: #fff;
}

@media only screen and (min-width: 1200px) {
	.container {
		max-width: 1170px;
	}
}

.product__pagination, .blog__pagination {
	padding-top: 0px;
	padding-left: 38%;
}

.product__pagination a, .blog__pagination a {
	display: inline-block;
	width: 30px;
	height: 30px;
	border: 1px solid #b2b2b2;
	font-size: 14px;
	color: #b2b2b2;
	font-weight: 700;
	line-height: 28px;
	text-align: center;
	margin-right: 16px;
	-webkit-transition: all, 0.3s;
	-moz-transition: all, 0.3s;
	-ms-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
}

.product__pagination a:hover, .blog__pagination a:hover {
	background: #ff6500;
	border-color: #ff6500;
	color: #ffffff;
}

.product__pagination a:last-child, .blog__pagination a:last-child {
	margin-right: 0;
}
</style>
<!--CSS SIDEBAR -->
<style>
:root { -
	-white-color: #fff; -
	-black-color: #000; -
	-text-color: #333; -
	-primary-color-dark: #01060a; -
	-border-color: #dbdbdb; -
	-color-primary: #5a73fc; -
	-color-primary-light: #8e9efc; -
	-color-primary-dark: #1c3eff; -
	-color-grey: #777777; -
	-color-grey-light-1: #f7f7f7; -
	-color-grey-dark-1: #333;
}

* {
	box-sizing: inherit;
}

/* 100% = 16px */
body {
	background-color: #020d18;
}

.slider {
	max-width: 100%;
	display: flex;
	padding-left: 10px;
}

.slider .card {
	flex: 1;
	margin: 0 10px;
}

.slider .card .img {
	height: 240px;
	width: 100%;
}

.slider .card .img img {
	height: 100%;
	width: 100%;
	object-fit: cover;
	transition: all 0.2s;
}

.slider .card .content {
	padding: 10px 0;
}

/*================SIDE BAR=============*/
.sidebar {
	flex: 1;
	background-color: var(- -primary-color-dark);
	width: 370px;
}

.sidebar__heading {
	padding: 10px 15px 10px 0;
	margin-left: 0px;
	width: 332px;
}

.sidebar__heading--has-border {
	border-top: 1px solid var(- -border-color);
}

.sidebar__heading h1 {
	font-weight: 700;
	font-size: 2.2rem;
	color: var(- -white-color);
}

.sidebar__list-btn {
	display: flex;
	list-style: none;
	padding-left: 0%;
}

.sidebar__list-item-btn {
	width: 114px;
	background-color: #020d18;
}

.sidebar__list-item-btn a {
	text-decoration: none;
	color: var(- -white-color);
	font-size: 1.4rem;
	display: block;
	line-height: 40px;
	padding: 0 10px;
}

.sidebar__list-item-btn a:hover {
	background-color: #000;
	border-bottom: 1px solid orangered;
}

.sidebar__list-item-btn--active {
	background-color: #000;
	border-bottom: 1px solid orangered;
}

.sidebar__list {
	list-style: none;
	padding-left: 15px;
	max-height: 900px;
	overflow-y: auto;
	overflow-x: hidden;
	width: 100%;
	margin-bottom: 0;
	padding-left: 0%;
}

.sidebar__list--notscrollbar {
	overflow: hidden;
	max-height: 100%;
}

.sidebar__list::-webkit-scrollbar {
	width: 4px;
}

.sidebar__list::-webkit-scrollbar-thumb {
	background-color: #2d2d2d;
	border-radius: 2px;
}

.sidebar__item {
	position: relative;
}

.sidebar__item:not(:last-child) {
	margin-bottom: 20px;
}

.sidebar__item:hover .sidebar__img {
	filter: brightness(70%);
}

.sidebar__item:hover .sidebar__item-head {
	color: #dcf842;
}

.sidebar__item:hover .sidebar__item-icon {
	display: block;
}

.sidebar__item-link {
	display: block;
	text-decoration: none;
}

.sidebar__img {
	width: 170px;
	height: 220px;
	object-fit: cover;
}

.sidebar__item-head {
	font-size: 1.3rem;
	font-weight: 700;
	color: var(- -white-color);
	display: block;
	text-shadow: 0 1rem 2rem rgba(0, 0, 0, 0.8);
}

.sidebar__item-subhead {
	font-size: 1.2rem;
	font-weight: 500;
	color: var(- -white-color);
	display: block;
	text-shadow: 0 1rem 2rem rgba(0, 0, 0, 0.8);
}

.sidebar__item-info {
	position: absolute;
	bottom: 20px;
	left: 186px;
}

.sidebar__item-icon {
	font-size: 2.2rem;
	color: var(- -white-color);
	position: absolute;
	top: 60px;
	left: 158px;
	display: none;
}

.sidebar__item-ep {
	margin-top: 4px;
}

.sidebar__item-ep-name {
	color: var(- -white-color);
	font-size: 1.2rem;
	font-weight: 500;
	background-color: #7d0606;
	border-radius: 3px;
	padding: 2px 4px;
}

/*=========== SIDEBAR 2==========*/
.sidebar__item2 {
	padding: 10px 0;
	border-bottom: 1px solid #1d1d1d;
}

.sidebar__item2:hover .sidebar__item2-name {
	color: #dcf842;
}

.sidebar__item2-link {
	text-decoration: none;
	display: flex;
}

.sidebar__item2-img {
	width: 90px;
	height: 128px;
}

.sidebar__item2-info {
	padding-left: 10px;
}

.sidebar__item2-name {
	font-size: 1.4rem;
	color: var(- -white-color);
	font-weight: 300;
}

.sidebar__item2-subname {
	font-size: 1.2rem;
	color: #abb7c4;
	font-weight: 300;
	margin-top: 10px;
}

<!--
-->
h1 {
	text-align: center;
	color: white;
}

.content-sidebar {
	padding-top: 8px;
	padding-bottom: 25px;
}

.cardSidebar {
	width: 430px;
	height: 830px;
	margin-bottom: 10px;
}

a {
	color: white;
}

/**/

/*---------------------
  Contact Form
-----------------------*/
.contact__form__title {
	margin-bottom: 50px;
	text-align: center;
}

.contact__form__title h2 {
	color: #9B9B9B;
	font-weight: 700;
}

.checkboxform {
	color: #9B9B9B;
	font-weight: 700;
}

.contact-form {
	padding-top: 30px;
	padding-bottom: 80px;
}

.contact-form form input {
	width: 100%;
	height: 50px;
	font-size: 16px;
	color: #6f6f6f;
	padding-left: 20px;
	margin-bottom: 30px;
	border: 1px solid #ebebeb;
	border-radius: 4px;
}

.contact-form form input::placeholder {
	color: #6f6f6f;
}

.contact-form form textarea {
	width: 100%;
	height: 150px;
	font-size: 16px;
	color: #6f6f6f;
	padding-left: 20px;
	margin-bottom: 24px;
	border: 1px solid #ebebeb;
	border-radius: 4px;
	padding-top: 12px;
	resize: none;
}

.contact-form form textarea::placeholder {
	color: #6f6f6f;
}

.contact-form form button {
	font-size: 18px;
	letter-spacing: 2px;
}

.site-btn {
	font-size: 13px;
	color: #ffffff;
	background: #e53637;
	font-weight: 700;
	border: none;
	border-radius: 2px;
	letter-spacing: 2px;
	text-transform: uppercase;
	display: inline-block;
	padding: 12px 30px;
}

.formHienThi {
	margin-left: 10%;
}
</style>
</head>
<body>


	<%@include file="slider.jsp"%>
	<div class="row main">
		<div class="phan9">
			<!-- Breadcrumb Section Begin -->
			<section class="breadcrumb-section set-bg"
				data-setbg="/ShowData/views/Official/img/phim.jpg">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 text-center">
							<div class="breadcrumb__text">
								<h2>Đăng nhập</h2>
								<div class="breadcrumb__option">
									<a href="./index.html">Trang chủ</a> <span>-Đăng nhập</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Breadcrumb Section End -->

			<div class="formHienThi">
				<div class="row">
					<!-- Contact Form Begin -->
					<div class="contact-form spad">
						<div class="container">
							<div class="row">
								<div class="col-lg-12">
									<div class="contact__form__title">

										<hr>
									</div>
								</div>
							</div>
							${message}
							<form method="post" action="/ShowData/account/sign-in"
								method="post" role="form">
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<label>Tên người dùng</label> <input type="text"
											placeholder="Tên người dùng" name="username"
											value="${username}"">
									</div>
									<div class="col-lg-12 col-md-12">
										<label>Mật khẩu</label> <input type="text" name="password"
											placeholder="Mật khẩu" value="${password}"">
									</div>

									<div class="col-lg-1 ">
										<input type="checkbox" name="remember" placeholder="Mật khẩu"
											value=${form.description}>
									</div>
									<div class="col-lg-1 ">
										<label>Nhớ mật khẩu</label>
									</div>



									<div class="col-lg-12 text-center">
										<button type="submit" class="site-btn">Đăng nhập</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- Contact Form End -->
				</div>
			</div>
		</div>
		<div class="col-3">

			<div class="sidebar">
				<div class="content-sidebar">
					<h1>BẢNG XẾP HẠNG</h1>
				</div>
				<ul class="sidebar__list-btn">
					<li class="sidebar__list-item-btn sidebar__list-item-btn--active">
						<a href="#">Phim Bộ</a>
					</li>
					<li class="sidebar__list-item-btn"><a href="#">Phim Lẻ</a></li>
					<li class="sidebar__list-item-btn"><a href="#">Hoạt Hình</a></li>
				</ul>

				<ul class="sidebar__list">

					<div class="card"
						style="width: 32rem; margin-left: 20px; margin-bottom: 15px">

						<a href=""><img
							src="/ShowData/views/Official/img/30ChuaTet.jpg"
							class="card-img-top"
							style="height: 250px; width: 175px; margin: auto"
							alt="Ảnh girl xinh"></a>

						<div class="card-body"
							style="margin-left: 179px; margin-top: -125px;">
							<h5 class="card-title">30 Chưa Phải Tết</h5>
							<a href="#" class="btn btn-primary">Thích</a> <a href="#"
								class="btn btn-primary">Chia sẻ</a>
						</div>
					</div>

					<div class="card"
						style="width: 32rem; margin-left: 20px; margin-bottom: 15px">

						<a href=""><img
							src="/ShowData/views/Official/img/trangQuynh.jpg"
							class="card-img-top"
							style="height: 250px; width: 175px; margin: auto"
							alt="Ảnh girl xinh"></a>

						<div class="card-body"
							style="margin-left: 179px; margin-top: -125px;">
							<h5 class="card-title">Trạng Quỳnh</h5>
							<a href="#" class="btn btn-primary">Thích</a> <a href="#"
								class="btn btn-primary">Chia sẻ</a>
						</div>
					</div>
					<div class="card"
						style="width: 32rem; margin-left: 20px; margin-bottom: 15px">

						<a href=""><img src="/ShowData/views/Official/img/matBiec.jpg"
							class="card-img-top"
							style="height: 250px; width: 175px; margin: auto"
							alt="Ảnh girl xinh"></a>

						<div class="card-body"
							style="margin-left: 179px; margin-top: -125px;">
							<h5 class="card-title">Mắt Biếc</h5>
							<a href="#" class="btn btn-primary">Thích</a> <a href="#"
								class="btn btn-primary">Chia sẻ</a>
						</div>
					</div>
					<div class="card"
						style="width: 32rem; margin-left: 20px; margin-bottom: 15px">

						<a href=""><img
							src="/ShowData/views/Official/img/phapSuMu.jpg"
							class="card-img-top"
							style="height: 250px; width: 175px; margin: auto"
							alt="Ảnh girl xinh"></a>

						<div class="card-body"
							style="margin-left: 179px; margin-top: -125px;">
							<h5 class="card-title">Pháp Sư Mù</h5>
							<a href="#" class="btn btn-primary">Thích</a> <a href="#"
								class="btn btn-primary">Chia sẻ</a>
						</div>
					</div>
					<div class="card"
						style="width: 32rem; margin-left: 20px; margin-bottom: 15px">

						<a href=""><img src="/ShowData/views/Official/img/hoanDoi.jpg"
							class="card-img-top"
							style="height: 250px; width: 175px; margin: auto"
							alt="Ảnh girl xinh"></a>

						<div class="card-body"
							style="margin-left: 179px; margin-top: -125px;">
							<h5 class="card-title">Hoán Đổi</h5>
							<a href="#" class="btn btn-primary">Thích</a> <a href="#"
								class="btn btn-primary">Chia sẻ</a>
						</div>
					</div>
					<div class="card"
						style="width: 32rem; margin-left: 20px; margin-bottom: 15px">

						<a href=""><img src="/ShowData/views/Official/img/coBa.jpg"
							class="card-img-top"
							style="height: 250px; width: 175px; margin: auto"
							alt="Ảnh girl xinh"></a>

						<div class="card-body"
							style="margin-left: 179px; margin-top: -125px;">
							<h5 class="card-title">Cô Ba Sài Gòn</h5>
							<a href="#" class="btn btn-primary">Thích</a> <a href="#"
								class="btn btn-primary">Chia sẻ</a>
						</div>
					</div>
					<div class="card"
						style="width: 32rem; margin-left: 20px; margin-bottom: 15px">

						<a href=""><img
							src="/ShowData/views/Official/img/biMatCuaGio.jpg"
							class="card-img-top"
							style="height: 250px; width: 175px; margin: auto"
							alt="Ảnh girl xinh"></a>

						<div class="card-body"
							style="margin-left: 179px; margin-top: -125px;">
							<h5 class="card-title">Bí Mật Của Gió</h5>
							<a href="#" class="btn btn-primary">Thích</a> <a href="#"
								class="btn btn-primary">Chia sẻ</a>
						</div>
					</div>
				</ul>
			</div>

		</div>
	</div>
	</div>
	<div class="row footer">
		<div class="card-text">
			<p class="text">FPT Polytechnic @2020.All rights reserved.</p>
		</div>

	</div>
	<script src="/ShowData/views/Official/js/jquery-ui.min.js"></script>
	<script src="/ShowData/views/Official/js/jquery.slicknav.js"></script>
	<script src="/ShowData/views/Official/js/mixitup.min.js"></script>
	<script src="/ShowData/views/Official/js/main.js"></script>

</body>
</html>