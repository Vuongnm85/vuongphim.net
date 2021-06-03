<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<link rel="apple-touch-icon" sizes="180x180"
	href="https://media.voocdn.com/media/image/id/5c9491ecacc399874b8b45a7_180x">
<link rel="icon shortcut" type="image/png"
	href="https://media.voocdn.com/media/image/id/5c9491ecacc399874b8b45a7_32x"
	sizes="32x32">
<link rel="icon" type="image/png"
	href="https://media.voocdn.com/media/image/id/5c9491ecacc399874b8b45a7_16x"
	sizes="16x16">
<link rel="manifest" href="/images/manifest.json">
<link rel="mask-icon" href="/images/safari-pinned-tab.svg"
	color="#5bbad5">
<meta name="theme-color" content="#ffffff">
<meta name="propeller" content="e814821687959fa2f8bd52374b93e530">
<meta name="referrer" content="no-referrer">
<link rel="alternate" hreflang="en" href="https://dongphym.net/en" />
<script type="text/javascript"
	src="https://static.voocdn.com/bower_components/jquery/dist/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://static.voocdn.com/bower_components/flickity/flickity.min.css" />
<link rel="stylesheet" type="text/css"
	href="https://static.voocdn.com/css/desktop/slider.css" />
<link rel="stylesheet" type="text/css"
	href="https://static.voocdn.com/bower_components/bootstrap/dist/css/bootstrap.min.css" />

<link rel="stylesheet" type="text/css"
	href="https://static.voocdn.com/css/dp/main.css?v=1.3.7" />

<script>
	IMG_ADS = {
		random : function(arr) {
			return arr[arr.length * Math.random() | 0];
		}
	};
</script>
<style>
header {
	position: absolute;
	z-index: 100;
	width: 100%;
	background-color: transparent;
	-webkit-transition: all 0.5s ease-out;
	-moz-transition: all 0.5s ease-out;
	-o-transition: all 0.5s ease-out;
	transition: all 0.5s ease-out;
}

header .top-search {
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	align-items: center;
	justify-content: flex-start;
	border: none;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}

header .top-search select, header .top-search input {
	height: 46px;
	border: none;
	background-color: #01060a !important;
	font-family: 'Nunito', sans-serif;
	font-size: 12px;
	color: #abb7c4;
	font-weight: 300;
	text-transform: none;
	border: 1px solid #9b9999;
}

header .top-search select {
	width: 20%;
	border-right: 1px solid #020d18;
	-webkit-appearance: none;
	-moz-appearance: none;
	/* Firefox */
	text-transform: uppercase;
	color: #ffffff;
}

header .top-search input::-webkit-input-placeholder {
	color: #abb7c4;
}

.sticky {
	background-color: #0f2133;
	position: fixed;
	width: 100%;
	z-index: 9999;
	-moz-opacity: 1;
	-khtml-opacity: 1;
	-webkit-opacity: 1;
	opacity: 1;
	-ms-filter: progid:DXImageTransform.Microsoft.Alpha(opacity=100);
	filter: alpha(opacity = 100);
	top: 0;
	left: 0;
	-webkit-transition: all 0.5s ease-out;
	-moz-transition: all 0.5s ease-out;
	-o-transition: all 0.5s ease-out;
	transition: all 0.5s ease-out;
}

.menu-icon {
	height: 30px;
	width: 30px;
	cursor: pointer;
	margin: 0 10px;
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.nav__content .menu-icon {
	margin: 0 auto;
}

.menu-icon__line {
	height: 2px;
	width: 30px;
	display: block;
	background-color: #ffffff;
	margin-bottom: 4px;
	transition: background-color .5s ease, -webkit-transform .2s ease;
	transition: transform .2s ease, background-color .5s ease;
	transition: transform .2s ease, background-color .5s ease,
		-webkit-transform .2s ease;
}

.menu-icon__line-left {
	width: 15px;
}

.menu-icon__line-right {
	width: 15px;
	margin-left: auto;
}

.nav {
	position: relative;
	z-index: 1;
	border-bottom: 1px solid #000;
	transition: background-color .2s ease;
}

.nav:before, .nav:after {
	content: "";
	position: absolute;
	width: 100%;
	height: 100vh;
	top: 0;
	left: 0;
	background: rgba(234, 234, 234, 0.2);
	z-index: -1;
	transition: -webkit-transform cubic-bezier(0.77, 0, 0.175, 1) 0.8s;
	transition: transform cubic-bezier(0.77, 0, 0.175, 1) 0.8s;
	transition: transform cubic-bezier(0.77, 0, 0.175, 1) 0.8s,
		-webkit-transform cubic-bezier(0.77, 0, 0.175, 1) 0.8s;
	-webkit-transform: translateX(0%) translateY(-100%);
	transform: translateX(0%) translateY(-100%);
}

.nav:after {
	background: white;
	transition-delay: 0s;
}

.nav:before {
	transition-delay: .1s;
}

.nav__header {
	padding: 10px 0;
	transition: background-color .2s ease;
	min-height: 69px;
	width: 100%;
}

.nav__header .nav__wrapper {
	display: flex;
	align-items: center;
}

.nav__header .nav__search {
	margin-left: auto;
	display: flex;
}

.nav__header .top-search {
	margin-bottom: 0;
}

.nav__header .top-search input {
	min-width: 330px;
	padding-right: 34px;
}

.nav__header .top-search .input {
	position: relative;
}

.nav__header .top-search i.fa-search {
	position: absolute;
	top: 0;
	right: 0;
	padding: 0 12px;
	height: 46px;
	line-height: 46px;
}

.nav__header .top-search>a {
	white-space: nowrap;
	background-color: #01060a;
	margin-left: 15px;
	font-size: 10px;
	text-transform: uppercase;
	font-weight: bold;
	height: 46px;
	border-radius: 5px;
	line-height: 46px;
	padding: 0 10px;
	color: #abb7c4;
	border: 1px solid #9b9999;
}

.nav__content {
	cursor: pointer;
	background-color: rgba(1, 6, 9, .8);
	position: relative;
	width: 100%;
}

.nav__list {
	display: flex;
	align-items: center;
}

.nav__list, .nav__sub-list {
	padding-left: 0;
	margin-bottom: 0;
}

.nav__list-item {
	position: relative;
	list-style: none;
	border-left: 1px solid #010609;
	transition: background-color .2s ease;
}

.nav__list .nav__list-item:last-child {
	margin-left: auto;
	border-left: unset;
}

.nav__list-item a {
	display: block;
	text-align: center;
	padding: 10px 20px;
	text-transform: capitalize;
	font-weight: bold;
	color: #abb7c4;
}

.nav__list-item:hover {
	background-color: #fff;
}

.nav__list-item:hover>a {
	color: #111;
}

.nav__list .nav__list-item:last-child:hover {
	background-color: transparent;
}

.nav__sub-list {
	display: none;
	position: absolute;
	top: 100%;
	left: 0;
	background-color: #fff;
	width: 60vw;
	flex-wrap: wrap;
	align-items: center;
	border-bottom: 1px solid #111;
}

.nav__list-item:hover .nav__sub-list {
	display: flex;
}

.nav__sub-list-item {
	display: block;
	width: 25%;
}

.nav__list-item__3 .nav__sub-list-item {
	width: 33.33%;
}

.nav__list-item__3 .nav__sub-list {
	width: 45vw;
}

.nav__sub-list-item a {
	color: #010609;
	font-weight: normal;
}

.nav__sub-list-item:hover a {
	color: #7d0606;
	text-decoration: underline;
}

body.nav-active .menu-icon__line {
	background-color: #abb7c4;
	-webkit-transform: translateX(0px) rotate(-45deg);
	transform: translateX(0px) rotate(-45deg);
}

body.nav-active .menu-icon__line-left {
	-webkit-transform: translateX(1px) rotate(45deg);
	transform: translateX(1px) rotate(45deg);
}

body.nav-active .menu-icon__line-right {
	-webkit-transform: translateX(-2px) rotate(45deg);
	transform: translateX(-2px) rotate(45deg);
}

body.nav-active .nav:before, body.nav-active .nav:after {
	-webkit-transform: translateX(0%) translateY(0%);
	transform: translateX(0%) translateY(0%);
}

body.nav-active .nav:after {
	transition-delay: .1s;
}

body.nav-active .nav:before {
	transition-delay: 0s;
}

body.nav-active .nav__header {
	background-color: #111;
}

body.nav-active .nav {
	position: fixed;
	width: 100%;
	height: 100%;
	background-color: #fff;
	transition-delay: .8s;
	overflow-y: auto;
}

body.nav-active .nav__content {
	background-color: transparent;
}

body.nav-active .nav__list {
	flex-wrap: wrap;
}

body.nav-active .nav__list-item {
	border-left: unset;
	flex-wrap: wrap;
	width: 100%;
}

body.nav-active .nav__list-item a {
	text-align: left;
	padding-left: 0;
}

body.nav-active .nav__list-item>a {
	font-size: 20px;
	color: #111;
}

body.nav-active .nav__list-item a .fa {
	display: none;
}

body.nav-active .nav__sub-list {
	display: flex;
	position: static;
	width: 100%;
	background-color: transparent;
	align-items: flex-start;
	border: unset;
}

body.nav-active .nav__list-item.nav__list-item__0:before {
	content: "";
	position: absolute;
	background: #111;
	width: 20px;
	height: 1px;
	top: 100%;
	-webkit-transform: translate(0%, 0%);
	transform: translate(0%, 0%);
	transition: all .3s ease;
}

body.nav-active .nav__list-item.nav__list-item__0:hover:before {
	width: 200px;
}

body.nav-active .nav__sub-list-item {
	width: 25%;
}

.nav__header .menu-icon {
	display: none;
}

.nav__search-icon {
	display: none;
	color: #abb7c4;
	padding: 15px 20px;
	cursor: pointer;
	background-color: #01060a;
	border-radius: 5px;
}

.nav__header.search-active .nav__logo {
	display: none;
}

.nav__header.search-active .nav__search {
	flex-grow: 1;
}

.nav__header.search-active .top-search {
	flex-grow: 1;
	display: flex !important;
}

.nav__header.search-active .top-search .input {
	width: 100%;
}

.nav__header.search-active .top-search input {
	min-width: unset;
	width: 100%;
}

.nav__header.search-active .top-search a {
	display: none;
}

@media ( max-width : 480px) {
	.nav__sub-list-item {
		width: 50% !important;
	}
}

@media ( min-width : 768px) {
	body.nav-active .nav__list .nav__list-item:last-child {
		position: absolute;
		top: 10px;
		right: 0;
		width: 30px;
		height: 30px;
	}
	body.nav-active .nav__list {
		position: relative;
	}
}

@media ( max-width : 767px) {
	header .top-search {
		display: none;
	}
	body:not(.nav-active) .nav__content {
		display: none;
	}
	.nav__header .menu-icon {
		display: flex;
	}
	.nav__search-icon {
		display: block;
	}
	.nav__logo {
		flex-grow: 1;
	}
	.nav__logo img {
		margin: auto;
	}
}

footer {
	/* background: url(/images/slider-bg.jpg) no-repeat; */
	background-position: center;
	background-size: cover;
}

footer .flex-parent-ft {
	padding: 80px 0 60px 0;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	align-items: center;
	justify-content: space-between;
	align-items: flex-start;
}

@media ( max-width : 991px) {
	footer .flex-parent-ft {
		display: flex;
		flex-direction: column;
		max-width: 550px;
		margin: 0 auto;
	}
}

@media ( max-width : 991px) {
	footer .flex-parent-ft .flex-child-ft {
		width: 100%;
	}
}

footer .flex-parent-ft .flex-child-ft img {
	margin-bottom: 60px;
}

footer .flex-parent-ft .flex-child-ft p {
	margin-bottom: 15px;
}

footer .flex-parent-ft .flex-child-ft p a {
	color: #ffffff;
	font-size: 18px;
}

footer .flex-parent-ft .flex-child-ft h4 {
	font-family: 'Cuprum', sans-serif;
	font-size: 18px;
	color: #ffffff;
	font-weight: bold;
	text-transform: capitalize;
	margin-bottom: 30px;
}

footer .flex-parent-ft .flex-child-ft ul {
	list-style: none;
	margin-left: 0;
}

footer .flex-parent-ft .flex-child-ft ul li {
	margin-bottom: 5px;
}

footer .flex-parent-ft .flex-child-ft ul li a {
	font-family: 'Nunito', sans-serif;
	font-size: 14px;
	color: #abb7c4;
	font-weight: regular;
	text-transform: none;
}

footer .flex-parent-ft .flex-child-ft ul li a:hover {
	color: #dcf836;
}

footer .flex-parent-ft .flex-child-ft a.btn {
	font-family: 'Cuprum', sans-serif;
	font-size: 14px;
	color: #dd003f;
	font-weight: bold;
	text-transform: uppercase;
}

footer .flex-parent-ft .flex-child-ft form {
	margin-bottom: 20px;
}

footer .flex-parent-ft .flex-child-ft form input {
	font-family: 'Nunito', sans-serif;
	font-size: 12px;
	color: #abb7c4;
	font-weight: 300;
	text-transform: none;
	background-color: #020d18;
	border-color: #405266;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	background: url('../images/uploads/search-bg.png') no-repeat right 20px
		center;
}

footer .ft-copyright {
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	align-items: center;
	justify-content: space-between;
	border-top: 1px solid #405266;
	padding-top: 20px;
	padding-bottom: 10px;
	background-color: #020d18;
	-moz-opacity: 0.7;
	-khtml-opacity: 0.7;
	-webkit-opacity: 0.7;
	opacity: 0.7;
	-ms-filter: progid:DXImageTransform.Microsoft.Alpha(opacity=70);
	filter: alpha(opacity = 70);
	padding-left: 380px;
	padding-right: 380px;
}

@media ( max-width : 1200px) {
	footer .ft-copyright {
		padding-left: 125px;
		padding-right: 125px;
	}
}

@media ( max-width : 767px) {
	footer .ft-copyright {
		padding: 15px;
		display: flex;
		flex-direction: column;
		align-items: inherit;
	}
}

footer .ft-copyright .backtotop a:hover {
	color: #dcf836;
}

footer.full-width-ft .ft-copyright {
	border-top: none;
	padding: 0;
	padding-bottom: 15px;
	padding-top: 15px;
}

@media ( max-width : 767px) {
	footer.full-width-ft .ft-copyright {
		background: none;
	}
}

.ft-copyright-landing {
	text-align: center;
	background-color: #e8e8e8;
	padding: 23px;
}

.ft-copyright-landing p {
	text-transform: uppercase;
	margin-bottom: 0;
	color: #8c9296;
	font-family: 'Cuprum', sans-serif;
	font-weight: 700;
}

p {
	font-family: 'Nunito', sans-serif;
	font-size: 14px;
	color: #abb7c4;
	font-weight: 300;
	text-transform: none;
	line-height: 24px !important;
}

.cate {
	margin-bottom: 15px;
}

.cate span {
	padding: 3px 5px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}

.cate span a {
	font-family: 'Cuprum', sans-serif;
	font-size: 12px;
	color: #ffffff;
	font-weight: 700;
	text-transform: uppercase;
}

.cate .blue {
	background-color: #1692bb;
}

.cate .yell {
	background-color: #f5b50a;
}

.cate .green {
	background-color: #a6bb16;
}

.cate .orange {
	background-color: #ec5a1a;
}

.more-btn {
	font-family: 'Cuprum', sans-serif;
	font-size: 14px;
	color: #abb7c4;
	font-weight: bold;
	text-transform: uppercase;
	padding: 13px 25px;
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;
	border-radius: 30px;
	text-decoration: none;
	transition: background-color 0.3s ease-in-out;
	margin-bottom: 7px;
	margin-top: 8px;
	display: inline-block;
}

.more-btn img {
	margin-top: -0.2em;
}

.more-btn:hover {
	text-decoration: none;
	background-color: #020d18;
	color: #dcf836;
}

.red-btn {
	background-color: #dd003f;
	color: #ffffff;
}

.yellow-btn {
	background-color: #dcf836;
	color: #020d18;
}

.btn-nav {
	border-radius: 5px;
}

.btn-fw {
	width: 100%;
	border-radius: 5px;
	display: block;
	text-align: center;
}

.title-hd {
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-bottom: 15px;
}

.title-hd .more-btn {
	font-size: 12px;
	padding: 10px 15px;
	vertical-align: middle;
	margin-left: 10px;
}

.title-hd h2 {
	font-size: 24px;
	color: #ffffff;
	font-weight: bold;
	text-transform: uppercase;
}

.title-hd h2 span {
	font-size: 15px;
	color: #4f5b68;
	font-weight: normal;
	text-transform: uppercase;
}

.title-hd h2 span .messenger-icn path {
	fill: #4f5b68;
}

.title-hd h2 span .messenger-icn polygon {
	fill: #020d18;
}

.title-hd h2 span .messenger-icn {
	vertical-align: text-top;
}

@media ( max-width : 767px) {
	.title-hd h2 {
		margin: 0;
	}
}

.title-hd a.viewall {
	font-family: 'Cuprum', sans-serif;
	font-size: 14px;
	color: #abb7c4;
	font-weight: bold;
	text-transform: uppercase;
	margin-right: 10px;
}

.title-hd a.viewall i {
	margin-left: 5px;
}

.title-hd a.viewall:hover {
	color: #dcf836;
}

.flex-wrap-movielist {
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	justify-content: flex-start;
	flex-wrap: wrap;
	align-items: inherit;
	margin-right: -15px;
}

.flex-wrap-movielist .movie-item {
	display: flex;
	flex-direction: column;
	align-items: inherit;
	width: calc(20% - 30px);
	position: relative;
	margin-right: 30px;
	margin-bottom: 30px;
}

.flex-wrap-movielist .vertical-display {
	width: 300px;
}

.flex-wrap-movielist .list-display {
	width: calc(24% - 21px);
}

@media ( max-width : 1199px) {
	.flex-wrap-movielist .movie-item {
		width: calc(25% - 30px);
	}
}

@media ( max-width : 991px) {
	.flex-wrap-movielist .movie-item {
		width: calc(33.3333% - 30px);
	}
}

@media ( max-width : 767px) {
	.flex-wrap-movielist .movie-item {
		width: calc(50% - 30px);
	}
}

@media ( max-width : 479px) { /* .flex-wrap-movielist{
		margin-right: 0;
	}
	
	.flex-wrap-movielist .movie-item {
	  	margin-right: 0px;
	  	width: 100%;
	} */
}

.flex-wrap-movielist .movie-item img {
	width: 100%;
	-webkit-transition: all 0.5s ease-out;
	-moz-transition: all 0.5s ease-out;
	-o-transition: all 0.5s ease-out;
	transition: all 0.5s ease-out;
}

.flex-wrap-movielist .movie-item .mv-img {
	position: relative;
	padding-bottom: 56.25%;
	background-size: cover;
	background-position: center;
}

.flex-wrap-movielist .movie-item .mv-img:after {
	box-shadow: inset -5px -50px 100px -15px #000000;
	-webkit-box-shadow: inset -5px -50px 100px -15px #000000;
	-moz-box-shadow: inset -5px -50px 100px -15px #000000;
	-o-box-shadow: inset -5px -50px 100px -15px #000000;
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	content: "";
}

.flex-wrap-movielist .movie-item .title-in {
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	padding-left: 10px;
	bottom: 0;
	left: 0;
	width: 100%;
	position: absolute;
}

.title-in h6, .title-in p {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	width: 100%;
}

.flex-wrap-movielist .movie-item .title-in h6 {
	font-family: 'Cuprum', sans-serif;
	font-size: 14px;
	color: #ffffff;
	font-weight: bold;
	text-transform: uppercase;
}

.flex-wrap-movielist .movie-item .title-in p {
	font-size: 12px;
	color: #ffffff;
}

.flex-wrap-movielist .movie-item .title-in p i {
	color: #f5b50a;
	font-size: 22px;
}

.flex-wrap-movielist .movie-item .title-in p span {
	font-weight: 400;
	font-size: 18px;
}

.flex-wrap-movielist .movie-item .hvr-inner {
	margin: auto;
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	background-color: #dd003f;
	padding: 8px 15px;
	width: 110px;
	height: 38px;
	text-align: center;
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;
	border-radius: 30px;
	cursor: pointer;
	opacity: 0;
	-webkit-transition: all 0.5s ease-out;
	-moz-transition: all 0.5s ease-out;
	-o-transition: all 0.5s ease-out;
	transition: all 0.5s ease-out;
}

.flex-wrap-movielist .movie-item .hvr-inner {
	font-family: 'Cuprum', sans-serif;
	font-size: 14px;
	color: #abb7c4;
	font-weight: bold;
	text-transform: uppercase;
	color: #ffffff;
}

.flex-wrap-movielist .movie-item .hvr-inner i {
	margin-right: 5px;
}

.flex-wrap-movielist .movie-item:hover .hvr-inner {
	-moz-opacity: 1;
	-khtml-opacity: 1;
	-webkit-opacity: 1;
	opacity: 1;
	-ms-filter: progid:DXImageTransform.Microsoft.Alpha(opacity=100);
	filter: alpha(opacity = 100);
	-webkit-transition: all 0.5s ease-out;
	-moz-transition: all 0.5s ease-out;
	-o-transition: all 0.5s ease-out;
	transition: all 0.5s ease-out;
}

.flex-wrap-movielist .movie-item:hover .title-in, .flex-wrap-movielist .movie-item:hover .mv-img
	{
	-webkit-transition: all 0.5s ease-out;
	-moz-transition: all 0.5s ease-out;
	-o-transition: all 0.5s ease-out;
	transition: all 0.5s ease-out;
	-moz-opacity: 0.25;
	-khtml-opacity: 0.25;
	-webkit-opacity: 0.25;
	opacity: 0.25;
	-ms-filter: progid:DXImageTransform.Microsoft.Alpha(opacity=25);
	filter: alpha(opacity = 25);
}

.flex-wrap-movielist .movie-item:hover h6 a {
	color: #dcf836;
}

.sliderv2 .movie-item {
	padding: 20px 0 50px 0;
}

.sliderv2 .movie-item .title-in {
	text-align: left;
}

.sliderv2 .movie-item .title-in h1 a {
	font-family: 'Cuprum', sans-serif;
	font-size: 30px;
	color: #ffffff;
	font-weight: 700;
	text-transform: uppercase;
	line-height: 45px;
}

.sliderv2 .movie-item .title-in h1 a span {
	font-family: 'Cuprum', sans-serif;
	font-size: 36px;
	color: #abb7c4;
	font-weight: 300;
	text-transform: uppercase;
}

.sliderv2 .movie-item .title-in p {
	font-size: 12px;
	color: #ffffff;
}

.sliderv2 .movie-item .title-in p i {
	color: #f5b50a;
	font-size: 22px;
}

.sliderv2 .movie-item .title-in p span {
	font-weight: 400;
	font-size: 18px;
}

.sliderv2 .movie-item .title-in .social-btn {
	margin-bottom: 15px;
}

.sliderv2 .movie-item .title-in .redbtn {
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;
	border-radius: 30px;
	width: 130px;
}

.sliderv2 .movie-item .title-in .redbtn:hover {
	color: #ffffff;
}

.sliderv2 .movie-item .title-in .btn-transform:hover .hvrbtn {
	background-color: #020d18;
	color: #dcf836;
}

.sliderv2 .movie-item .title-in .mv-details {
	margin-bottom: 15px;
}

@media ( max-width : 991px) {
	.sliderv2 .movie-item .mv-img-2 {
		display: none;
	}
}

@media ( max-width : 767px) {
	.sliderv2 .slider-single-item {
		padding-top: 0;
	}
	.sliderv2 .slider-single-item .movie-item .title-in {
		margin-left: 10px;
		margin-bottom: 15px;
	}
}

.hero {
	text-align: center;
	background-size: cover;
	background-position: center;
	position: relative;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 445px;
}

.hero:before {
	position: absolute;
	content: '';
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.75);
	top: 0;
}

.trans-hero:before {
	background-color: transparent;
}

.hero.common-hero {
	height: auto;
	min-height: 200px;
}

.hero h1 {
	font-size: 36px;
	color: #ffffff;
	font-weight: 700;
	text-transform: uppercase;
	margin-bottom: 20px;
}

.hero ul.breadcumb {
	list-style-type: none;
}

.hero ul.breadcumb li.active a {
	color: #4280bf;
}

.hero ul.breadcumb li, .hero ul.breadcumb a {
	display: inline-block;
	font-size: 14px;
	color: #abb7c4;
	font-weight: 300;
	text-transform: uppercase;
}

.hero ul.breadcumb span {
	margin-left: 15px;
	margin-right: 15px;
}

.page-single {
	background-color: #020d18;
	padding: 75px 0;
}

.movie-single {
	margin-top: -415px;
}

.movie-rate {
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	align-items: center;
	justify-content: flex-start;
	border-top: 1px solid #405266;
	border-bottom: 1px solid #405266;
	/* margin-bottom: 70px; */
	margin-top: 20px;
}

.movie-rate .rate {
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	align-items: center;
	justify-content: flex-start;
}

.movie-rate .rate p {
	margin-bottom: 0;
	margin-left: 10px;
	font-size: 11px;
}

.movie-rate .rate i.fa {
	font-size: 1.5em;
	color: #df433e;
}

.movie-rate .rate-star {
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	align-items: center;
	justify-content: flex-start;
	margin-left: 30px;
	border-left: 1px solid #405266;
	padding-left: 30px;
	flex-wrap: wrap;
	width: 100%;
	padding-top: 5px;
}

.movie-eps-nav {
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	width: 100%;
	justify-content: space-around;
	margin: 5px 0px;
}

.movie-eps-nav>div {
	font-size: 20px;
	cursor: pointer;
}

.movie-eps-all p {
	margin-bottom: 5px;
	text-transform: uppercase;
	font-weight: bold;
	margin-top: 10px;
	border-bottom: 1px solid #405266;
}

.movie-eps-wrapper {
	max-height: 100px;
	overflow: auto;
}

.movie-eps-all__search__input {
	display: inline-block;
	min-width: 200px;
	position: relative;
}

.movie-eps-all__search__input input {
	padding-right: 34px;
	height: 35px;
	background-color: #01060a !important;
	font-family: 'Nunito', sans-serif;
	font-size: 12px;
	color: #abb7c4;
	font-weight: 300;
	text-transform: none;
	min-width: 200px;
	border: 1px solid #4f5b55;
}

.movie-eps-all__search__input i.fa {
	position: absolute;
	right: 0;
	top: 0;
	padding: 10px;
}

.sb-it {
	margin-bottom: 10px;
	margin-left: 10px;
}

.sb-it h6 {
	font-size: 14px;
	color: #abb7c4;
	font-weight: bold;
	text-transform: capitalize;
	margin-bottom: 10px;
}

.sb-it h6 span {
	font-family: 'Nunito', sans-serif;
	font-size: 14px;
	color: #abb7c4;
	font-weight: 300;
	text-transform: none;
	line-height: 24px !important;
}

.sb-img {
	display: flex;
	justify-content: flex-start;
	flex-wrap: wrap;
	align-items: inherit;
}

.img-11 {
	width: 100%;
	background-position: center;
	background-size: cover;
	padding-bottom: 100%;
	border-radius: 50%;
}

.public-people-item {
	width: 120px;
	margin-right: 7px;
	margin-bottom: 10px;
}

.public-people-item p {
	color: #4280bf;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
}

ul.tabs-mv {
	padding: 20px 0;
	margin-bottom: 40px;
	list-style: none;
	margin-left: 0;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	align-items: center;
	justify-content: flex-start;
}

ul.tabs-mv li {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

ul.tabs-mv li a {
	font-size: 18px;
	padding: 0 15px 15px 15px;
	border-bottom: 3px solid transparent;
	font-weight: bold;
	text-transform: uppercase;
	font-family: 'Cuprum', sans-serif;
	display: inline-block;
	color: #abb7c4;
}

ul.tabs-mv li.active a, ul.tabs-mv li:hover a {
	border-bottom: 3px solid #dcf836;
}

ul.tabs-mv li.active a {
	color: #dcf836;
}

select.filter {
	border: none;
	border-bottom: 1px solid #405266;
	font-weight: 400;
	background-color: transparent;
	width: 100%;
	height: 34px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	position: relative;
}

@media ( max-width : 767px) {
	select.filter {
		border: 1px solid #405266;
	}
	ul.tabs-mv {
		margin-bottom: 0;
	}
}

select.filter option {
	background-color: #020d18;
}

.filter input {
	background-color: transparent;
	color: white;
	border: none;
	border-bottom: 1px solid #df4240;
}

.filter input:focus {
	box-shadow: unset;
	border-color: #962a28;
}

.carousel-content {
	position: relative;
	padding-bottom: 28.125%;
	min-height: 300px;
}

.carousel-content-background-image {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	background-size: cover;
	background-position: center center;
	-webkit-filter: blur(10px);
	-moz-filter: blur(10px);
	-o-filter: blur(10px);
	-ms-filter: blur(10px);
	filter: blur(10px);
}

.carousel-content-image {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	left: 0;
	width: 100%;
	height: 100%;
	margin: 0 auto;
}

.carousel-content-image img {
	margin: 0 auto;
	height: 100%;
	display: block;
}

.carousel-content-text a {
	color: black;
}

.carousel-content-text .title {
	color: #444444;
}

.carousel-content-title {
	position: absolute;
	bottom: 50px;
	left: 7%;
	font-size: 25px;
	background: #020d19;
	color: white;
	padding: 5px 10px;
	opacity: 0.9;
	max-width: 85%;
}

.carousel-content-badget {
	font-size: 14px;
	background-color: #7d0606;
	display: inline-block;
	padding: 3px 7px;
	border-radius: 3px;
	font-weight: bold;
	margin-top: -20px;
}

#preloader {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #020d18;
	/* change if the mask should have another color then white */
	z-index: 99999;
	text-align: center;
	/* makes sure it stays on top */
}

#preloader img {
	margin-top: 100px;
}

@media ( max-width : 767px) {
	#preloader img {
		margin-bottom: 50px;
	}
}

#status {
	position: relative;
	width: 70px;
	height: 70px;
	top: 35%;
	margin: 0 auto;
	right: 35px;
}

#status span {
	position: absolute;
	border-radius: 999px;
}

#status span:nth-child(1) {
	border: 5px solid #dcf836;
	border-top: 5px solid transparent;
	width: 70px;
	height: 70px;
	animation: spin1 2s infinite linear;
}

#status span:nth-child(2) {
	border: 5px solid #dd003f;
	border-top: 5px solid transparent;
	top: 20px;
	left: 20px;
	width: 30px;
	height: 30px;
	animation: spin2 1s infinite linear;
	margin-left: 35px;
}

@
keyframes spin1 { 0% {
	transform: rotate(360deg);
	opacity: 1;
}

50






%
{
transform






:






rotate




(






180deg






)




;
opacity






:






0




.75




;
}
100






%
{
transform






:






rotate




(






0deg






)




;
opacity






:






1




;
}
}
@
keyframes spin2 { 0% {
	transform: rotate(0deg);
	opacity: 0.75;
}

50






%
{
transform






:






rotate




(






180deg






)




;
opacity






:






1




;
}
100






%
{
transform






:






rotate




(






360deg






)




;
opacity






:






0




.75




;
}
}
#playlists {
	position: relative;
}

.sidebar-container {
	position: relative;
	background-color: #01060a;
	padding: 10px 15px;
	margin: 0 -15px;
}

@media ( min-width : 992px) {
	.sidebar-container.affix {
		top: 150px;
		width: inherit;
	}
	.affix {
		position: fixed !important;
	}
	.sidebar-container.affix {
		max-height: calc(100vh - 150px);
		overflow-x: hidden;
	}
}

.billboard-tab {
	list-style-type: none;
	padding-left: 0;
	display: flex;
	margin-bottom: 0;
}

.billboard-tab li {
	flex-grow: 1;
	flex-basis: 0;
	text-align: center;
}

.billboard-tab li a {
	display: flex;
	flex-direction: column;
	height: 40px;
	background-color: #020d18;
	color: #fff;
	text-transform: uppercase;
	font-size: 11px;
	font-weight: bold;
	border-bottom: 3px solid #020d18;
	width: 100%;
	align-items: center;
	justify-content: center;
	transition: all 0.2s ease-in-out;
}

.billboard-tab li.active a, .billboard-tab li:hover a {
	background-color: #000;
	border-color: #7e2112;
}

.billboard-content {
	height: 630px;
	overflow-x: hidden;
	overflow-y: auto;
}

.cscroller::-webkit-scrollbar, .y-scroller ul::-webkit-scrollbar {
	width: 5px;
	border-radius: 5px;
	height: 5px;
}

.cscroller::-webkit-scrollbar-thumb, .y-scroller ul::-webkit-scrollbar-thumb
	{
	background-color: #2d2d2d;
	border-radius: 5px;
}

.cscrollerr::-webkit-scrollbar-track, .y-scroller ul::-webkit-scrollbar-track
	{
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
	background-color: #F5F5F5;
	border-radius: 5px;
}

.it-bill-board {
	position: absolute;
	border-bottom-left-radius: 100%;
	top: 0;
	right: 0;
	padding: 3px 5px 6px 10px;
	color: white;
	font-size: 13px;
	background: grey;
	font-weight: 700;
}

.it-bill-board-1 {
	background: #ea000b;
}

.it-bill-board-2 {
	background: #ef8a0d;
}

.it-bill-board-3 {
	background: #f5c824;
}

.it-bill-board-4 {
	background: #39c300;
}

.it-bill-board-5 {
	background: #529e49;
}

.it-bill-board-6 {
	background: #3a18f9;
}

.it-bill-board-7 {
	background: #1b84c1;
}

.it-bill-board-8 {
	background: #82009a;
}

.it-bill-board-9 {
	background: #a22370;
}

.it-img {
	background-position: center;
	background-size: cover;
	position: absolute;
	top: 0;
	right: 0;
	width: 160px;
	height: 100%;
}

.it-tt {
	text-transform: uppercase;
	font-weight: bold;
}

.it-badget {
	background-color: #7d0606;
	display: inline-block;
	padding: 3px 7px;
	border-radius: 3px;
	color: #eee;
	font-size: 11px;
}

.it-content {
	margin-left: 0;
	width: 100%;
	position: absolute;
	padding-left: 10px;
	padding: 5px 80px 0 10px;
}

.it-content a {
	color: white;
	font-weight: bold;
	font-size: 13px;
}

.it-content p {
	color: #eaeaea;
	line-height: 1.3em !important;
	margin-bottom: 5px;
}

.it-content .it-en-tt {
	text-overflow: ellipsis;
	overflow: hidden;
	font-size: 11px;
	color: #b9b9b9;
}

.it-item {
	margin-top: 20px;
	position: relative;
	overflow: hidden;
	height: 90px;
	background: #010609;
}

.it-item::before {
	position: absolute;
	content: '';
	bottom: -7px;
	left: 5%;
	width: 90%;
	border-bottom: 1px solid #292929;
}

.it-item-big .it-img {
	position: relative;
	width: 100%;
	height: 0;
	padding-top: 42.1%;
	background-position: top;
}

.it-item-big {
	height: auto;
}

.it-item-big .it-content {
	margin: 0;
	width: 100%;
	position: absolute;
	bottom: 0;
	padding: 20px 10px 10px 10px;
	box-sizing: border-box;
	/* background-color: #111; */
	background: rgb(0, 0, 0);
	background: linear-gradient(0deg, rgba(0, 0, 0, 1) 0%, rgba(0, 0, 0, 0)
		100%);
}

.it-overlay, .pl-carousel-overlay, .cmsoon-overlay {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	opacity: 0;
	color: #fff;
	font-size: 2em;
	background-color: rgba(1, 1, 1, .3);
	transition: opacity 0.2s ease-in-out;
}

.it-vignette {
	position: absolute;
	width: 160px;
	height: 100%;
	left: 0;
	top: 0;
	background: rgb(1, 6, 9);
	background: linear-gradient(90deg, rgba(1, 6, 9, 1) 0%, rgba(1, 6, 9, 0)
		100%);
}

.it-item-big .it-vignette {
	display: none;
}

.it-item:hover .it-overlay {
	opacity: 1;
}

.it-item:hover .it-tt {
	color: #dcf836;
}

.y-scroller {
	width: 100%;
	position: relative;
	max-width: 1170px;
	margin: 0 auto;
	padding-bottom: 10px;
}

.y-scroller ul {
	-webkit-overflow-scrolling: touch;
	overflow: hidden;
	overflow-x: auto;
	height: 150px;
	position: relative;
	white-space: nowrap;
}

.y-scroller.tall ul {
	/*height: 300px;*/
	
}

.y-scroller ul li {
	display: inline-block;
	float: none !important;
	vertical-align: top;
	padding: 10px;
}

.y-scroller ul li:first-child {
	margin-left: 0;
}

@media ( max-width : 840px) {
	.instant-trending {
		display: none;
	}
}

@media ( max-width : 767px) {
	header .navbar-default {
		padding: 10px 0;
	}
	header .navbar-default img.logo {
		width: 30%;
		margin-top: 5px;
	}
}

.luna .boxed {
	background-size: 135%;
}

.luna header .navbar-default .navbar-nav li a {
	color: #fff !important;
	padding: 10px;
	background: #2f2f2f;
}

.luna footer p, .luna footer ul li a {
	color: #fff !important;
}

.luna footer {
	background-position: bottom;
}

.fa-circle-o-notch {
	color: #ea7979;
	font-size: 25px;
	animation: spin1 1s infinite linear;
}

@media ( max-width : 991px) {
	.luna header {
		background-color: unset;
	}
}

.border-top {
	border-top: 1px solid #1d1d1d;
}

.img {
	background-size: cover;
	background-position: center center;
}

.r43 {
	padding-top: 133.33%;
}

.r169 {
	padding-top: 56.25%;
}

.elipsis {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.pl-carousel-cell {
	width: 20%;
	min-width: 180px;
	padding: 0 5px;
}

.pl-carousel-cell.lg {
	width: 25%;
}

.pl-carousel-img {
	position: relative;
}

.pl-carousel-cell:hover .pl-carousel-overlay {
	opacity: 1;
}

.pl-carousel-badget {
	position: absolute;
	color: #fff;
	font-size: 12px;
	top: 0;
	left: 0;
	margin: 5px;
	padding: 5px;
	background-color: rgba(2, 13, 24, 0.6);
	border-radius: 8px;
}

.pl-carousel-content h6 {
	font-size: 1em;
	color: #fff;
	/* text-transform: uppercase; */
	font-weight: bold;
	margin-bottom: 0;
}

.pl-carousel-cell.lg .pl-carousel-content h6 {
	white-space: unset;
	overflow: unset;
	text-overflow: unset;
	line-height: 1.3;
}

.pl-carousel-cell:hover .pl-carousel-content h6 {
	color: #dcf836;
}

.pl-carousel-content p {
	font-size: 12px;
}

.playlist-wrapper {
	padding: 0 15px;
	margin: 0 -15px;
}

#playlists .playlist-wrapper:nth-child(even) {
	background-color: #01060a;
}

.bn-carousel, .bn-carousel-sm {
	padding-bottom: 0 !important;
}

.bn-carousel-cell {
	width: 100%;
	overflow: hidden;
}

.bn-carousel-cell>a {
	background-color: rgb(1, 6, 9);
}

.bn-carousel-img {
	position: relative;
	padding-bottom: 28.125%;
	min-height: 180px;
	background-color: rgb(1, 6, 9);
	overflow: hidden;
	background-size: cover;
	background-position: center;
}

.bn-carousel-img img {
	height: 100%;
}

.bn-carousel-vignette {
	position: absolute;
	width: 80%;
	height: 100%;
	left: 0;
	top: 0;
	background: rgb(1, 6, 9);
	background: linear-gradient(90deg, rgba(1, 6, 9, 1) 0%, rgba(1, 6, 9, 0)
		100%)
}

.bn-carousel-content {
	max-width: 70%;
	position: absolute;
	top: 20px;
	left: 10%;
	background-color: rgba(1, 1, 1, 0.6);
	padding: 10px 20px;
	border-radius: 10px;
}

.bn-carousel-content h6 {
	font-size: 2em;
	color: #fff;
	text-transform: uppercase;
	font-weight: bold;
}

.bn-carousel-content img {
	max-height: 100px;
}

@media ( max-width : 767px) {
	.bn-carousel-sm {
		display: none;
	}
	.bn-carousel-content {
		display: none;
	}
}

.bn-carousel-sm-cell {
	width: 72px;
	margin-right: 15px;
	border: 1px solid #fff;
}

.bn-carousel-sm-cell.is-nav-selected {
	border: 1px solid #7e2112;
}

.banner-wrapper {
	position: relative;
}

.bn-carousel-sm-wrapper {
	width: 60%;
	position: absolute;
	bottom: 30px;
	right: 30px;
}

.cmsoon-content-wrapper {
	height: 585px;
	overflow-x: hidden;
	overflow-y: auto;
}

.cmsoon-item {
	display: flex;
	margin-bottom: 10px;
	padding-bottom: 10px;
	border-bottom: 1px solid #1d1d1d;
}

.cmsoon-img {
	width: 96px;
	position: relative;
}

.cmsoon-content {
	padding-left: 10px;
	flex: 1;
}

.cmsoon-content h6 {
	color: #fff;
	font-size: 1em;
	margin-top: 0;
}

.cmsoon-item:hover .cmsoon-content h6 {
	color: #dcf836;
}

.cmsoon-content p {
	font-size: 12px;
}

@media ( max-width : 767px) {
	.sidebar-container .title-hd h2 {
		margin: 15px 0;
	}
}

/* Article CSS */
.v-item-list>a {
	display: flex;
}

.v-item-list {
	position: relative;
	padding: 10px 15px;
	/* border-bottom : 2px solid #020d19; */
}

.v-item-list.common-news {
	border-right: 1px solid #072333;
}

.related-news .v-item-list:nth-child(odd) {
	background-color: #041221;
}

.v-item-img {
	flex: 0 0 40%;
	/* align-self: flex-end;
  margin-top: .2em; */
}

.related-news-header span {
	color: white;
	padding: 15px;
	font-weight: bold;
	text-transform: uppercase;
	font-size: 17px;
}

.related-news-header .pull-right {
	margin-right: 15px;
	font-size: 20px;
	color: white;
	cursor: pointer;
}

.related-movie-news {
	background-color: #01060a;
	border-color: #072333;
}

.related-news {
	display: flex;
	flex-wrap: wrap;
}

.related-news .img {
	border-radius: 3px;
}

.v-item-content p {
	color: #cecece;
	line-height: 20px !important;
	font-size: 1em;
	font-weight: bold;
	margin-bottom: 5px;
}

.v-item-content {
	margin-top: .2em;
	overflow: hidden;
	padding: 0 10px 0 0;
	max-height: 60px;
	flex: 0 0 60%;
	align-self: flex-start;
}

.clearfix {
	clear: both;
}

.fullscreen {
	z-index: 10000;
}

#related_news_modal .modal-dialog {
	width: 85%;
	margin-top: 0;
}

.modal-open {
	overflow: hidden !important;
}

#related_news_modal .close {
	color: white;
	/* margin-top: -16px; */
	background: #ffffff;
	border-radius: 50%;
	/* border-bottom-left-radius: 100%; */
	/* margin-right: -16px; */
	/* padding: 7px 10px; */
	padding: 13px 2px 13px 0;
	opacity: 1;
	position: fixed;
	top: 20px;
	right: 7%;
}

#related_news_modal .close span {
	/* margin-top: -16px; */
	background: #ff5200;
	border-radius: 50%;
	/* border-bottom-left-radius: 100%; */
	/* margin-right: -16px; */
	padding: 7px 14px;
}

#related_news_modal a, #related_news_modal h4 {
	font-family: "Times New Roman", Times, serif;
	color: black;
}

#related_news_modal .item h3 {
	font-size: 15px;
	margin-top: 10px;
}

.flex-container {
	display: flex;
	flex-wrap: wrap;
}

#related_news_modal .modal-content {
	background: #f6f6f6;
	position: relative;
}

#related_news_modal .r169 {
	margin-top: 10px;
}

.entity_content img, .feature-img-thumb img, .entity_content video {
	display: block;
	margin: 0 auto;
	width: 100%;
}

.entity_content {
	color: black;
	font-size: 20px;
}

.single-post-wrap .content-wrap h3 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	font-weight: bold;
	margin-top: 5px;
}

.single-post-wrap li {
	display: inline-block;
}

.single-post-wrap ul {
	margin-left: -40px;
}

.single-post-wrap li a, .source {
	color: grey !important;
	font-weight: bold;
}

.category-label {
	padding: 5px 10px;
	color: white;
	border-radius: 5px;
	background: #4e589d;
	font-weight: bold;
	margin-left: 10px;
}

.entity_content * {
	font-family: "Times New Roman", Times, serif;
}

.entity_content .img {
	margin-bottom: .5em;
}

.entity_content p {
	color: black;
	font-size: 17px;
	line-height: 30px !important;
}

.entity_content .img p, .entity_content .gallery p, .entity_content .video p
	{
	text-align: center;
	font-weight: bold;
	color: #606060;
	background: #d7d7d7;
	padding: .05em 0;
	margin: 0;
	font-style: italic;
	font-size: 13px;
}

.gallery p.image_caption {
	margin-top: -10px;
	margin-bottom: 10px;
}

.img p strong {
	color: #0f0f53;
}

.entity_content h3, .entity_content h2 {
	font-size: 20px;
}

.stream_detail .title {
	font-size: 20px;
	margin-top: 5px;
	/* text-align: center; */
	color: #2a2a2a;
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
	border-bottom: 2px solid #2a2a2a;
	padding-bottom: 10px;
}

.stream_detail .thumb {
	width: 120px;
	padding-bottom: 56.25%;
	background-size: cover;
	background-position: center;
}

.stream_detail .detail {
	margin-left: 10px;
}

.stream_detail .detail h6 {
	margin-top: 0;
	font-family: "Times New Roman", Times, serif;
	font-size: 15px;
}

.stream_detail .flex-row {
	display: flex;
	flex-direction: row;
	margin-bottom: 10px;
}

.gallery img {
	margin-bottom: 10px;
}

#related_news_modal .preloader {
	position: relative;
	margin: 15% auto;
	width: 200px;
	display: none;
}

#related_news_modal .preloader-img, #related_news_modal .editors-pick-post .img-fluid
	{
	background-size: cover;
	background-position: center;
	width: 100%;
	padding-bottom: 56.25%;
}

#related_news_modal .preloader span {
	position: absolute;
	border-radius: 999px;
}

#related_news_modal .preloader span:nth-child(1) {
	border: 5px solid #dcf836;
	border-top: 5px solid transparent;
	width: 70px;
	height: 70px;
	animation: spin1 2s infinite linear;
}

#related_news_modal .preloader span:nth-child(2) {
	border: 5px solid #dd003f;
	border-top: 5px solid transparent;
	top: 20px;
	left: 20px;
	width: 30px;
	height: 30px;
	animation: spin2 1s infinite linear;
	margin-left: 35px;
}

.back-to-top {
	position: fixed;
	top: 85%;
	right: 8.5%;
	background: #202020;
	color: white;
	z-index: 10001;
	padding: 10px;
	opacity: .8;
	font-weight: bold;
	font-size: 20px;
	display: none;
	border: none;
}

.top-fixed {
	position: fixed;
	top: 0;
}

#related_news_modal .fb-comments {
	text-align: center;
	width: 100%;
}

:focus {
	outline: none;
}

#related_news_modal .mt-20 {
	font-size: 17px;
	font-weight: bold;
}

@media ( max-width : 840px) {
	#related_news_modal .modal-dialog {
		width: 100%;
		margin: 0;
		border-radius: 0;
	}
	#related_news_modal .close {
		/*margin-top : -15px;*/
		/*border-top-right-radius: 0;*/
		/*border-bottom-left-radius: 10px;*/
		right: 0;
		top: 0;
		padding: 10px 0;
		opacity: .9;
	}
	#related_news_modal .close span {
		border-radius: 0;
	}
	.modal-content {
		border-radius: 0;
	}
	.back-to-top {
		right: 0;
	}
	.related-news {
		display: unset;
	}
}

@media ( max-width : 480px) {
	.related-news .col-xs-6 {
		width: 100%;
	}
}

/* End Article CSS */
.title-cat {
	margin-top: 10px;
}

.title-cat h4 {
	font-size: 18px;
	padding: 0 15px 15px 15px;
	border-bottom: 3px solid transparent;
	font-weight: bold;
	text-transform: uppercase;
	font-family: 'Cuprum', sans-serif;
	display: inline-block;
	color: #dcf836;
	border-bottom: 3px solid #dcf836;
}

/* Banner Search */
.banner_img {
	background-size: cover;
	background-position: center center;
	padding-bottom: 12.25%;
}

.banner_img_mb {
	height: 0;
	padding-bottom: 31.25%;
	display: none;
}

@media ( max-width : 768px) {
	.banner_img {
		display: none;
	}
	.banner_img_mb {
		display: -webkit-flex;
		display: -moz-box;
		display: -ms-flexbox;
		display: flex;
	}
	.trending-container .flickity-prev-next-button {
		display: none;
	}
}
/* Banner Search */
.trending-container {
	max-width: 960px;
	margin: 10px auto 0;
}

.trending-container .flickity-prev-next-button {
	top: 30%;
}
/* Ads Container */
#top_banner, #comment-ads, #airtime-ads, #sidebar-ads {
	text-align: center;
	background: #020d17;
}

.ads-container a {
	color: black;
}
/* Ads Container */
.scroll-x {
	white-space: nowrap;
	overflow-x: scroll;
	-webkit-overflow-scrolling: touch;
	overflow-y: hidden;
}

.scroll-x>div {
	display: inline-block;
	white-space: normal;
	vertical-align: top;
	position: relative;
}

.playlist-view-all {
	padding: 9px 7px !important;
	background-color: #235a74 !important;
}

.playlist-view-all span {
	color: #020d19;
	font-weight: bold;
	padding: 3px 5px;
	background-color: #fafafa;
	border-radius: 5px;
	text-transform: capitalize;
}

.playlist-btn-container {
	display: none;
	margin-bottom: 20px;
}

.current_page {
	font-size: 15px;
	padding: 12px 25px 11px;
	background: #6ed22f;
	border-radius: 5px;
	display: inline-block;
	color: black;
}

/** nav search **/
#nav_search_result {
	position: absolute;
	width: 100%;
	margin-top: 0px;
	z-index: 9999;
	background: #242d35;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.nav_search_item {
	display: block;
	padding: 10px 10px 6px;
	border-bottom: 1px solid #47505d;
}

.nav_search_list {
	padding: 0;
	margin-bottom: 0;
}

.nav_search_item_img {
	background-size: cover;
	background-position: center center;
	float: left;
	width: 35%;
	height: 65px;
	position: relative;
	border-radius: 5px;
}

.nav_search_idol_img {
	height: auto;
}

.nav_search_idol_img div {
	width: 80%;
	margin: 0 auto;
	background-position: top center;
	padding-bottom: 80%;
	border-radius: 50%;
	background-size: cover;
}

.nav_search_item_info {
	float: left;
	width: 60%;
	margin-left: 5%;
}

.nav_search_item_title {
	font-weight: bold;
	margin-bottom: 0px;
	font-size: 13px;
	line-height: 18px !important;
	font-family: "Cuprum", Helvetica, Arial, sans-serif;
	color: white;
}

.nav_search_item_eng_title {
	font-size: 12px;
}

.nav_search_item_img:hover .pl-carousel-overlay {
	opacity: 1;
}

.nav_search_item_title:hover {
	color: #dcf836;
}

.nav_search_view_all_container {
	background: #df4141;
	padding-bottom: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.nav_search_view_all_btn {
	color: white;
	font-weight: bold;
}

.nav_search_list li:last-child {
	border-bottom: none;
}

.nav_search_notif {
	padding: 10px;
	font-size: 13px;
	color: white;
}

.nav_search_notif b {
	font-size: 15px;
}

.nav_search_item_header {
	font-size: 15px;
	background: #0e1317;
	color: white;
	font-weight: bold;
}

.nav-search-table {
	margin-bottom: 0;
}

.nav-search-table-title {
	color: #dedede;
	vertical-align: middle !important;
	font-weight: bold;
	background: #1b2127;
	max-width: 55px;
}

.nav-search-table td {
	border-color: #5a5a5a !important;
}
/** end nav search **/

/** mgid css **/
.ads_banner_img {
	display: block;
	margin: auto;
}

.mgid-container {
	padding: 10px;
	background: #e6e6e6;
	margin: auto;
	display: block;
	max-width: 480px;
}

.mgid-airtime, .mgid-movie-eps {
	margin-top: 10px;
}
/** end mgid css **/

/** tooltips **/
.tooltips {
	display: none;
}

#easyTooltip {
	color: #abb7c4;
	width: 320px;
	padding: 1px;
	background: #01060a;
	border: 1px solid #01060a;
	box-shadow: 1px 1px 5px 1px #333;
}

#easyTooltip .content {
	padding: 5px 10px;
	background: #0e2235;
}

#easyTooltip .des {
	background: #01060a;
	padding: 5px 10px;
}

#easyTooltip p {
	margin-bottom: 0;
	line-height: 1.2em !important;
}

#easyTooltip .title {
	color: #fafafa;
	font-weight: bold;
}

#easyTooltip .title span {
	color: #abb7c4;
}

#easyTooltip .eng_title {
	color: #abb7c4;
	font-size: 12px;
}
/** end tooltips **/
.cc-warning {
	padding: 10px;
	text-align: center;
	margin-top: 1px !important;
	background: #0b1f35;
	font-weight: bold;
	font-size: 18px;
	border: 3px solid #737373;
	max-width: 960px;
	margin: 0 auto;
}

.player-notif {
	padding: 10px;
	text-align: center;
	background: #0b1f35;
	font-weight: bold;
	font-size: 18px;
	border: 2px solid #6b6b6b;
	max-width: 960px;
	margin: 0 auto;
	box-shadow: 3px 3px 6px #a09393;
}

.player-notif span {
	color: #c7860f;
}

.completed_movie_wrapper {
	height: 680px;
	overflow-x: hidden;
	overflow-y: auto;
}

@media ( max-width : 767px) {
	.player-notif {
		font-size: 13px;
	}
}
/** player banner **/
.pl-newsfeed-item {
	width: 15%;
}

.video-detail {
	position: relative;
}

.player-banner {
	position: absolute;
	max-height: 97%;
	max-width: calc(calc(calc(100% - 960px)/2)- 20px);
}

.player-banner-right {
	left: calc(calc(calc(100% - 960px)/2)+ 975px);
}

.player-banner-left {
	right: calc(calc(calc(100% - 960px)/2)+ 975px);
}

@media ( max-width : 1024px) {
	.player-banner {
		display: none;
	}
}
/** end player banner **/

/******************** SHORTENER **********************/
.shortener.shortener-height {
	margin-bottom: 20px;
	overflow: hidden;
	position: relative;
}

.shortener .shortener-nav {
	position: relative;
	height: 30px;
	background: #01060a;
	text-align: center;
	padding-top: 5px;
	border: 1px solid #444444;
	cursor: pointer;
	font-weight: bold;
}

.shortener.shortener-height .shortener-nav {
	position: absolute;
	bottom: 0;
	width: 100%;
}

.shortener img {
	max-width: 100%;
	display: block;
	margin: 0 auto;
}
/******************** SHORTENER **********************/

/**** galak css *****/
.gl-container {
	background: #505050;
}
/**** galak css *****/

/**** star detail ****/
.public-people-cover {
	width: 300px;
	height: 300px;
	display: block;
	margin: 0 auto;
	background-size: cover;
	background-position: top center;
	border: 3px solid #e2e2e2;
}

.star_container {
	background: #020d18;
	padding: 20px 0;
}

.star_name {
	font-size: 30px;
}

.star_nav li {
	margin-right: 20px;
}

.loading div {
	width: 10px;
	height: 10px;
	display: inline-block;
	background: #d9ed39;
	margin-right: 10px;
	border-radius: 5px;
}

.loading .loading1 {
	-webkit-animation: loading-scale 1s 0s infinite ease-in-out;
	animation: loading-scale 1s 0s infinite ease-in-out;
}

.loading .loading2 {
	-webkit-animation: loading-scale 1s 250ms infinite ease-in-out;
	animation: loading-scale 1s 250ms infinite ease-in-out;
}

.loading .loading3 {
	-webkit-animation: loading-scale 1s .5s infinite ease-in-out;
	animation: loading-scale 1s .5s infinite ease-in-out;
}

@
-webkit-keyframes loading-scale { 0%,100% {
	-webkit-transform: scale(1, 1);
	transform: scale(1, 1);
}

50






%
{
-webkit-transform






:






scale




(






2
,
2






)




;
transform






:






scale




(






2
,
2






)




;
}
}
@
keyframes loading-scale { 0%,100% {
	-webkit-transform: scale(1, 1);
	transform: scale(1, 1);
}

50






%
{
-webkit-transform






:






scale




(






2
,
2






)




;
transform






:






scale




(






2
,
2






)




;
}
}
.hidden-movie-alert {
	background: #380101;
	border-radius: 5px;
	border: 1px solid #480101;
	font-size: 20px;
	font-weight: bold;
	color: #b7b7b7;
}

.idol_relatec_content_title {
	border-bottom: 3px solid #dcf836;
	padding-bottom: 5px;
	color: #dcf836 !important;
	margin-top: 15px !important;
}

.star_info div {
	text-transform: capitalize;
}

.star_info h6 {
	font-size: 17px;
	font-weight: bold;
}

.star_info span {
	font-size: 15px;
	color: #abb7c4;
	font-weight: 300;
	font-family: 'Nunito', sans-serif;
}
/**** star detail ****/

/**** mobile banner ****/
@media ( min-width : 768px) {
	.mb_airtime_container img {
		max-width: 220px;
	}
}
/**** mobile banner ****/
.nav__logo {
	position: relative;
	text-align: center;
}

.text-logo {
	font-size: 1.5em;
	text-transform: uppercase;
	color: #fff !important;
}

.text-logo b {
	font-size: 1.5em;
}

/*** search idol ***/
.idol-search-container {
	max-width: 100%;
}

.idol-load-more {
	position: relative;
	height: 100%;
}

.idol-load-more p {
	position: absolute;
	left: 0;
	bottom: 37%;
	color: white;
	font-size: 50px;
	cursor: pointer;
}

.btns-list {
	padding: 5px;
	display: flex;
}

.btns-list li {
	display: inline-block;
	margin-right: 10px;
}

.btn-submit-error {
	text-transform: uppercase;
	padding: 5px 21px;
	background: rgba(193, 26, 26, 0.5);
	border: 1px solid #e45400;
	color: white;
	font-size: 14px;
	font-weight: bold;
	font-family: 'Nunito', sans-serif;
}
/*** search idol ***/
.air_date {
	background: #212121;
	border: 1px dashed #d9ed39;
	padding: 5px 0 0 0;
	margin: 0 0 15px 0;
}

.air_date p {
	padding: 0 15px;
	display: inline-block;
}

.air_date h4 {
	margin-bottom: 0;
	border-bottom: none;
	font-size: 16px;
}

.btn-error-report {
	position: fixed;
	width: 85px;
	height: 85px;
	bottom: 45%;
	right: 10px;
	z-index: 10000;
}

.btn-error-report img {
	width: 100%;
	height: 100%;
	border-radius: 50%;
	border: 3px solid white;
}

/*** responsive ***/
@media ( max-width : 840px) {
	.btn-error-report {
		bottom: 30px;
		right: 5px;
		width: 65px;
		height: 65px;
	}
}

@media ( max-width : 320px) {
	.text-logo, .text-logo b {
		font-size: 1.1em;
	}
}
/*** responsive ***/
.profile-userpic img {
	float: left;
	margin: 10px 0px 0px 15px;
	width: 50px;
	height: 50px;
	border-radius: 9999px !important;
}

.profile-usertitle {
	float: left;
	text-align: left;
	margin: 10px 0 0 12px;
}

.profile-usertitle-name {
	font-size: 20px;
	margin-bottom: 0px;
	margin-top: 22px;
    margin-left: 9px;
}

.profile-usertitle-status {
	text-transform: uppercase;
	color: #AAA;
	font-size: 12px;
	font-weight: 600;
	margin-bottom: 15px;
}
</style>
</head>
<body>
	<!-- Start header -->
	<header class="ht-header">
		<div class="nav cscroller">
			<div class="nav__header">
				<div class="container nav__wrapper">
					<div class="menu-icon">
						<span class="menu-icon__line menu-icon__line-left"></span> <span
							class="menu-icon__line"></span> <span
							class="menu-icon__line menu-icon__line-right"></span>
					</div>
					<!-- Start logo -->
					<div class="nav__logo">
						<a href="http://localhost:8081/ShowData/video/index"> <span
							class='text-logo'><b>VuongPhim</b><span>.net</span></span>
						</a>
					</div>
					<!-- End logo -->
					<div class="nav__search">
						<!--Start tìm kiếm-->
						<form action="/content/search" class="top-search">
							<input type="hidden" name="t" value="kw">
							<div class="input">
								<input class="form-control" autocomplete="off" name="q"
									type="text"
									placeholder="Tìm kiếm phim, tv show hoặc người nổi tiếng">
								<i class="fa fa-search"></i>
								<div id="nav_search_result"></div>
							</div>
							<a href="/content/search?t=ft">Tìm kiếm nâng cao</a>
							<!--End tìm kiếm-->
							<!-- Thông tin người dùng -->


							<div class="profile-usertitle">
								<c:choose>
									<c:when test="${empty sessionScope.user}">
									<div class = "row">
									<div class="profile-userpic">
											<img src="http://placehold.it/50/30a5ff/fff"
												class="img-responsive" alt="">
										</div>
										<div class="profile-usertitle-name" name="UserId">
										Welcome you
										</div>
		                                
									</div>
										
	                                </c:when>

									<c:otherwise>
										<div class="row">
											<div class="profile-userpic">
												<img
													src="/ShowData/views/Official/img/${sessionScope.user.img}"
													class="img-responsive" alt="">
											</div>
											<div class="profile-usertitle-name" name="UserId">

												${sessionScope.user.fullname}</div>
										
										</div>


									</c:otherwise>
								</c:choose>

								
							</div>
							<!-- End thông tin người dùng -->
						</form>
						<div class="nav__search-icon">
							<i class="fa fa-search"></i>
						</div>
					</div>
				</div>
			</div>
			<!-- Start menu -->
			<div class="nav__content">
				<div class="container nav__wrapper">
					<ul class="nav__list">
						<!-- Thể loại -->
						<li class="nav__list-item nav__list-item__4"><a href="#"
							title='Thể loại'> Thể loại <i class="fa fa-caret-down"></i>
						</a>
							<ul class="nav__sub-list">
								<li class="nav__sub-list-item"><a href="#"
									title='Tình cảm - Lãng mạn'> Tình cảm - Lãng mạn </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Võ thuật'>
										Võ thuật </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Cổ trang'>
										Cổ trang </a></li>
								<li class="nav__sub-list-item"><a href="#"
									title='Hành động'> Hành động </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Hài hước'>
										Hài hước </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Gia đình'>
										Gia đình </a></li>
								<li class="nav__sub-list-item"><a href="#"
									title='Chiến tranh'> Chiến tranh </a></li>
								<li class="nav__sub-list-item"><a href="#"
									title='Chính kịch'> Chính kịch </a></li>
								<li class="nav__sub-list-item"><a href="#"
									title='Học đường'> Học đường </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Giải trí'>
										Giải trí </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Hình sự'>
										Hình sự </a></li>
								<li class="nav__sub-list-item"><a href="#"
									title='Khoa học - Viễn tưởng'> Khoa học - Viễn tưởng </a></li>
								<li class="nav__sub-list-item"><a href="#"
									title='Phiêu lưu'> Phiêu lưu </a></li>
								<li class="nav__sub-list-item"><a href="#"
									title='Thần thoại'> Thần thoại </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Tâm lý'>
										Tâm lý </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Tài liệu'>
										Tài liệu </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Webdrama'>
										Webdrama </a></li>
								<li class="nav__sub-list-item"><a href="#"
									title='Đam Mỹ - Bách Hợp'> Đam Mỹ - Bách Hợp </a></li>
							</ul></li>
						<!-- Quốc gia -->
						<li class="nav__list-item nav__list-item__3"><a href="#"
							title='Quốc gia'> Quốc gia <i class="fa fa-caret-down"></i>
						</a>
							<ul class="nav__sub-list">
								<li class="nav__sub-list-item"><a href="#" title='Hàn Quốc'>
										Hàn Quốc </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Nhật Bản'>
										Nhật Bản </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Thái Lan'>
										Thái Lan </a></li>
								<li class="nav__sub-list-item"><a href="#"
									title='Trung Quốc'> Trung Quốc </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Mỹ'>
										Mỹ </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Việt Nam'>
										Việt Nam </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Ấn Độ'>
										Ấn Độ </a></li>
								<li class="nav__sub-list-item"><a href="#"
									title='Phillipines'> Phillipines </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Âu Mỹ'>
										Âu Mỹ </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Tất cả'>
										Tất cả </a></li>
							</ul></li>
						<!-- Phim bộ -->
						<li class="nav__list-item nav__list-item__3"><a href="#"
							title='Phim bộ'> Phim bộ <i class="fa fa-caret-down"></i></a>
							<ul class="nav__sub-list">
								<li class="nav__sub-list-item"><a href="#" title='Hàn Quốc'>
										Hàn Quốc </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Nhật Bản'>
										Nhật Bản </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Thái Lan'>
										Thái Lan </a></li>
								<li class="nav__sub-list-item"><a href="#"
									title='Trung Quốc'> Trung Quốc </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Mỹ'>
										Mỹ </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Việt Nam'>
										Việt Nam </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Ấn Độ'>
										Ấn Độ </a></li>
								<li class="nav__sub-list-item"><a href="#"
									title='Phillipines'> Phillipines </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Âu Mỹ'>
										Âu Mỹ </a></li>
								<li class="nav__sub-list-item"><a href="#" title='Tất cả'>
										Tất cả </a></li>
							</ul></li>
						<!-- Phim chiếu rạp -->
						<li class="nav__list-item nav__list-item__0"><a href="#"
							title='Phim chiếu rạp'> Phim chiếu rạp </a></li>
						<!-- Phim TV Show -->
						<li class="nav__list-item nav__list-item__0"><a href="#"
							title='TV Show'> TV Show </a></li>
						<!-- Phim yêu thích -->
						<li class="nav__list-item nav__list-item__0"><a
							href="/ShowData/yeuThich/edit/${sessionScope.user.id}"
							title='Hoạt hình - Anime'> Phim yêu thích </a></li>
						<!-- Tài khoản -->
						<li class="nav__list-item nav__list-item__3"><a href="#"
							title='Quốc gia'> Tài khoản <i class="fa fa-caret-down"></i>
						</a>
							<ul class="nav__sub-list">
								<li class="nav__sub-list-item"><a
									href="/ShowData/views/Official/dangNhap.jsp" title='Đăng nhập'>
										Đăng nhập</a></li>
								<li class="nav__sub-list-item"><a
									href="/ShowData/account/remember-password"
									title='Quên mật khẩu'> Quên mật khẩu </a></li>
								<li class="nav__sub-list-item"><a
									href="/ShowData/views/Official/dangKy.jsp" title='Đăng ký'>
										Đăng ký </a></li>
								<li class="nav__sub-list-item"><a
									href="/ShowData/account/sign-out" title='Đăng xuất'> Đăng
										xuất </a></li>
								<li class="nav__sub-list-item"><a
									href="/ShowData/account/change-pass" title='Đổi mật khẩu'>
										Đổi mật khẩu </a></li>
								<li class="nav__sub-list-item"><a
									href="/ShowData/account/edit-profile"
									title='Chỉnh sửa thông tin'> Chỉnh sửa</a></li>
							</ul></li>

						<li class="nav__list-item">
							<div class="menu-icon">
								<span class="menu-icon__line menu-icon__line-left"></span> <span
									class="menu-icon__line"></span> <span
									class="menu-icon__line menu-icon__line-right"></span>
							</div>
						</li>

					</ul>
				</div>
			</div>
			<!-- End menu -->
		</div>
	</header>

	<!-- End header -->

	<script>
		function search_item() {
			var result_container = $('#nav_search_result');
			var xhr = null;
			var inputTimer = null;
			var input = '';
			var search_item = function(str) {
				if (xhr)
					xhr.abort();
				xhr = $.ajax({
					type : 'GET',
					url : '/content/search',
					dataType : 'json',
					data : {
						t : 'nav_search',
						q : str,
						num : 3
					},
					beforeSend : function() {
						result_container.empty();
					},
					success : function(msg) {
						if (msg.error == 0) {
							result_container.html(msg.result).show();
						} else {
							renderError(msg.error_msg, str);
						}
					},
					error : function() {
						renderError('timeout', str);
					}
				});
			};
			var renderError = function(str, keyword) {
				if (str == 'no item found' || str == 'timeout') {
					var _str = '';
					_str += '<p class="nav_search_notif">Không tìm thấy kết quả trả về cho từ khóa <b>\''
							+ keyword + '\'</b></p>';
					result_container.html(_str).show();
				}
			};
			$('.nav__search').find('input[name=q]').on('keyup', function() {
				clearTimeout(inputTimer);
				var input = $(this).val();
				if (input.length > 2) {
					inputTimer = setTimeout(function() {
						search_item(input);
					}, 200);
				} else {
					result_container.hide();
				}
			});
		}
		$(function() {
			if (!isMobile.any()) {
				$(document).mouseup(
						function(e) {
							var container = $(".nav__search");
							if (!container.is(e.target)
									&& container.has(e.target).length === 0) {
								container.find('#nav_search_result').hide();
							}
						});
				search_item();
			}
		});
		$(window)
				.load(
						function() {
							$('.top-search')
									.find('.fa-search')
									.click(
											function() {
												var btn = $(this);
												var value = btn.prev().val();
												var medium = isMobile.mgid() ? 'mobile'
														: 'desktop';
												window.location.href = "/content/search?t=kw&q="
														+ value
														+ '&utm_source=search_icon&utm_medium='
														+ medium
														+ '&utm_campaign=dpnet';
											});
						});
	</script>
	<div class="boxed">
		<div class="abanner-header60201650d47d9ds">
			<div id="abanner-header60201650d47d9ds-elem"></div>
			<script>
				$(function() {
					var ctn = $("#abanner-header60201650d47d9ds-elem");
					ctn.css({
						"margin" : "0 auto",
						"text-align" : "center"
					});
					if (!isMobile.any()) {
						IMG_ADS["PC_Header_980x90"] = {
							load : function(datas) {
								if (datas.length == 0)
									return;
								var data = IMG_ADS.random(datas);
								var sda = $('<div class="sda-wrapper sda-banner-header" style="max-width: 980px;max-height: 90px;display: inline-block;text-align:center;background-color:#777">'
										+ '	<a class="sda-link" rel="nofollow" target="_blank" href="' + data.url + '">'
										+ '		<img class="img-responsive" src="' + data.img + '">'
										+ '	</a>' + '</div>');
								ctn.html(sda);
							}
						};
					} else {
						var sda = $('<div class="sda-wrapper sda-banner-header" style="width: 320px;display: inline-block;text-align:center;background-color:#777">'
								+ '</div>');
						ctn.html(sda);
						sda.hide();
						IMG_ADS["M_TopFloat1_320X50"] = {
							load : function(datas) {
								if (datas.length == 0)
									return;
								var data = IMG_ADS.random(datas);
								sda
										.prepend(
												'	<a class="sda-link" rel="nofollow" target="_blank" href="' + data.url + '">'
														+ '		<img src="' + data.img + '">'
														+ '	</a>')
										.height(
												sda.find(".sda-link").length * 50)
								sda.show();
							}
						};
						IMG_ADS["M_TopFloat2_320x50"] = {
							load : function(datas) {
								if (datas.length == 0)
									return;
								var data = IMG_ADS.random(datas);
								sda
										.append(
												'	<a class="sda-link" rel="nofollow" target="_blank" href="' + data.url + '">'
														+ '		<img src="' + data.img + '">'
														+ '	</a>')
										.height(
												sda.find(".sda-link").length * 50)
								sda.show();
							}
						};
					}
				});
			</script>
		</div>
		<div class="afixed-side60201650d48bads">
			<div class="container">
				<div id="afixed-side60201650d48bads-elem"
					style="position: relative;">
					<script>
						$(function() {
							if (!isMobile.any()) {
								var ctn = $("#afixed-side60201650d48bads-elem");
								var s_elem;
								var inject_css = function() {
									var c_id = 'fixed_aelem';
									s_elem = $("#" + c_id);
									if (s_elem.length == 0) {
										s_elem = $("<style id='" + c_id + "'></style>");
										$("head").append(s_elem);
									}
								};
								var hide = function() {
									if (initFlag) {
										ctn.find(".fx-sda").addClass("hidden");
									}
								};
								var show = function() {
									recalculateCss();
									ctn.find(".fx-sda").removeClass("hidden");
								};
								var initFlag = false;
								var affix = function(fx) {
									fx
											.affix(
													{
														offset : {
															top : function() {
																var t = $(
																		"section.content")
																		.offset().top;
																if ($('.banner-wrapper').length > 0) {
																	t = $(
																			'.banner-wrapper')
																			.offset().top
																			+ $(
																					'.banner-wrapper')
																					.height();
																}
																t -= $(
																		".ht-header")
																		.height();
																return t
															},
															bottom : function() {
																return $(
																		"footer")
																		.height() + 50
															}
														}
													}).on(
													"affixed.bs.affix",
													function() {
														fx.css("top", $(
																".ht-header")
																.height()
																+ "px")
													}).on(
													"affixed-top.bs.affix",
													function() {
														fx.css("top", '');
														fx.css("position",
																'absolute');
													}).on(
													"affixed-bottom.bs.affix",
													function() {
														fx.css("position",
																'absolute');
													});
								};
								var recalculateCss = function() {
									var css = '.sda-fx{width: 160px; height: 600px; background-color: #777;}.fx-sda{position: absolute;z-index: 234;}.fx-left{left: -165px}.fx-right{right: -165px}';
									css += '.fx-sda.affix{position: fixed;}.fx-left.affix{left: 30px}.fx-right.affix{right: 30px}.fx-sda.affix-bottom{position: absolute!important;}';
									css += ".container{max-width: "
											+ ($("body").width() - 330) + "px}";
									if ($('.banner-wrapper').length > 0) {
										var t = $('.banner-wrapper').offset().top
												+ $('.banner-wrapper').height()
												- $("section.content").offset().top;
										css += ".fx-left, .fx-right{top: " + t
												+ "px}";
									}
									s_elem.html(css);
								};
								var resize = function() {
									if (!initFlag) {
										initFlag = true;
										$(window).resize(function() {
											if ($(window).width() < 1330) {
												hide();
											} else {
												show();
											}
										});
										$(".flickity-viewport").parent()
												.flickity('resize');
									}
									$(window).resize();
								};
								IMG_ADS['PC_FoatLeft_160X600'] = {
									load : function(datas) {
										if (datas.length == 0)
											return;
										var data = IMG_ADS.random(datas);
										inject_css();
										ctn
												.append('<div class="fx-left fx-sda">'
														+ '	<div class="sda-wrapper sda-fx">'
														+ '	<a class="sda-link" rel="nofollow" target="_blank" href="' + data.url + '">'
														+ '		<img src="' + data.img + '">'
														+ '	</a>'
														+ '	</div>'
														+ '</div>');
										affix(ctn.find(".fx-left"));
										resize();
									}
								};
								IMG_ADS['PC_FoatRight_160X600'] = {
									load : function(datas) {
										if (datas.length == 0)
											return;
										var data = IMG_ADS.random(datas);
										inject_css();
										ctn
												.append('<div class="fx-right fx-sda">'
														+ '	<div class="sda-wrapper sda-fx">'
														+ '	<a class="sda-link" rel="nofollow" target="_blank" href="' + data.url + '">'
														+ '		<img src="' + data.img + '">'
														+ '	</a>'
														+ '	</div>'
														+ '</div>');
										affix(ctn.find(".fx-right"));
										resize();
									}
								};
							}
						});
					</script>
				</div>
			</div>
		</div>
		<section class="content">
			<div class="banner-wrapper">
				<div class="bn-carousel">
					<div class="bn-carousel-cell">
						<a
							href="https://dongphym.net/movie/mr-queen-cong-chua-kho-gan-mr-queen-2020_icUqiwvw.html?utm_source=banner_list&utm_medium=banner&utm_campaign=dpnet"
							title="Mr. Queen (Công Chúa Khó Gần)">
							<div class="bn-carousel-img lazy carousel-img"
								data-original="https://media.voocdn.com/media/image/id/5fd19c6facc399f1d98b45b0">
							</div>
							<div class="bn-carousel-content">
								<h6>Mr. Queen (Công Chúa Khó Gần)</h6>
								<p>Mr. Queen (2020)</p>
							</div>
						</a>
					</div>
					<div class="bn-carousel-cell">
						<a
							href="https://dongphym.net/movie/doi-tac-trao-luu-nguoi-hop-tac-trao-luu-fourtry-season-2-lets-call-it-a-day-2020-_93mKJAW4.html?utm_source=banner_list&utm_medium=banner&utm_campaign=dpnet"
							title="Đối Tác Trào Lưu (Người Hợp Tác Trào Lưu)">
							<div class="bn-carousel-img lazy carousel-img"
								data-original="https://media.voocdn.com/media/image/id/5fcee48facc399f2d98b457c">
							</div>
							<div class="bn-carousel-content">
								<h6>Đối Tác Trào Lưu (Người Hợp Tác Trào Lưu)</h6>
								<p>FourTry (Season 2) (Let's Call It a Day) (2020)</p>
							</div>
						</a>
					</div>
					<div class="bn-carousel-cell">
						<a
							href="https://dongphym.net/movie/loi-yeu-trong-mua-voice-in-the-rain-2020_ydBgdAoc.html?utm_source=banner_list&utm_medium=banner&utm_campaign=dpnet"
							title="Lời Yêu Trong Mưa">
							<div class="bn-carousel-img lazy carousel-img"
								data-original="https://media.voocdn.com/media/image/id/5fe9b4c6acc3994c3d8b458d">
							</div>
							<div class="bn-carousel-content">
								<h6>Lời Yêu Trong Mưa</h6>
								<p>Voice In The Rain (2020)</p>
							</div>
						</a>
					</div>
					<div class="bn-carousel-cell">
						<a
							href="https://dongphym.net/movie/thon-tinh-bau-troi-thon-phe-tinh-khong-tun-shi-xing-kong-swallowed-star-2020_WNmapwNa.html?utm_source=banner_list&utm_medium=banner&utm_campaign=dpnet"
							title="Thôn Tính Bầu Trời (Thôn Phệ Tinh Không)">
							<div class="bn-carousel-img lazy carousel-img"
								data-original="https://media.voocdn.com/media/image/id/5fdb2079acc3998eb98b4567">
							</div>
							<div class="bn-carousel-content">
								<h6>Thôn Tính Bầu Trời (Thôn Phệ Tinh Không)</h6>
								<p>Tun Shi Xing Kong (Swallowed Star) (2020)</p>
							</div>
						</a>
					</div>
					<div class="bn-carousel-cell">
						<a
							href="https://dongphym.net/movie/true-beauty-ve-dep-dich-thuc-true-beauty-2020_wH90sQmD.html?utm_source=banner_list&utm_medium=banner&utm_campaign=dpnet"
							title="True Beauty-Vẻ Đẹp Đích Thực">
							<div class="bn-carousel-img lazy carousel-img"
								data-original="https://media.voocdn.com/media/image/id/5fd72896acc3994f968b4596">
							</div>
							<div class="bn-carousel-content">
								<h6>True Beauty-Vẻ Đẹp Đích Thực</h6>
								<p>True Beauty 2020</p>
							</div>
						</a>
					</div>
					<div class="bn-carousel-cell">
						<a
							href="https://dongphym.net/movie/dao-hai-tac-one-piece_X4eyIw8T.html?utm_source=banner_list&utm_medium=banner&utm_campaign=dpnet"
							title="Đảo Hải Tặc">
							<div class="bn-carousel-img lazy carousel-img"
								data-original="https://media.voocdn.com/media/image/id/5f5860fbacc3998bd98b458e">
							</div>
							<div class="bn-carousel-content">
								<h6>Đảo Hải Tặc</h6>
								<p>One Piece</p>
							</div>
						</a>
					</div>
					<div class="bn-carousel-cell">
						<a
							href="https://dongphym.net/movie/cuu-da-than-truyen-legend-of-nine-nights-2020_6VJDJQMI.html?utm_source=banner_list&utm_medium=banner&utm_campaign=dpnet"
							title="Cửu Dạ Thần Truyện">
							<div class="bn-carousel-img lazy carousel-img"
								data-original="https://media.voocdn.com/media/image/id/5feae4f2acc399ff958b4567">
							</div>
							<div class="bn-carousel-content">
								<h6>Cửu Dạ Thần Truyện</h6>
								<p>Legend Of Nine Nights (2020)</p>
							</div>
						</a>
					</div>
					<div class="bn-carousel-cell">
						<a
							href="https://dongphym.net/movie/gui-thoi-thanh-xuan-ngay-tho-tuoi-dep-ban-han-a-love-so-beautiful-2020_vnxvvAl5.html?utm_source=banner_list&utm_medium=banner&utm_campaign=dpnet"
							title="Gửi Thời Thanh Xuân Ngây Thơ Tươi Đẹp (Bản Hàn)">
							<div class="bn-carousel-img lazy carousel-img"
								data-original="https://media.voocdn.com/media/image/id/5fe95449acc399ab9d8b4577">
							</div>
							<div class="bn-carousel-content">
								<h6>Gửi Thời Thanh Xuân Ngây Thơ Tươi Đẹp (Bản Hàn)</h6>
								<p>A Love So Beautiful (2020)</p>
							</div>
						</a>
					</div>
					<div class="bn-carousel-cell">
						<a
							href="https://dongphym.net/movie/dai-duong-minh-nguyet-da-tang-ming-yue_XxoKiQ5M.html?utm_source=banner_list&utm_medium=banner&utm_campaign=dpnet"
							title="Đại Đường Minh Nguyệt">
							<div class="bn-carousel-img lazy carousel-img"
								data-original="https://media.voocdn.com/media/image/id/6014c9e6acc39995248b4571">
							</div>
							<div class="bn-carousel-content">
								<h6>Đại Đường Minh Nguyệt</h6>
								<p>Da Tang Ming Yue</p>
							</div>
						</a>
					</div>
					<div class="bn-carousel-cell">
						<a
							href="https://dongphym.net/movie/gap-em-o-khong-gian-song-song-when-we-write-love-story-2020_GiqJNQWz.html?utm_source=banner_list&utm_medium=banner&utm_campaign=dpnet"
							title="Gặp Em Ở Không Gian Song Song">
							<div class="bn-carousel-img lazy carousel-img"
								data-original="https://media.voocdn.com/media/image/id/5fe1d35aacc399b2408b456b">
							</div>
							<div class="bn-carousel-content">
								<h6>Gặp Em Ở Không Gian Song Song</h6>
								<p>When We Write Love Story (2020)</p>
							</div>
						</a>
					</div>
				</div>
				<div class="bn-carousel-sm-wrapper">
					<div class="bn-carousel-sm">
						<div class="bn-carousel-sm-cell">
							<div class="img lazy r169"
								data-original="https://media.voocdn.com/media/image/id/5fd19cd2acc399e1d98b45b5_720x"></div>
						</div>
						<div class="bn-carousel-sm-cell">
							<div class="img lazy r169"
								data-original="https://media.voocdn.com/media/image/id/5fcee553acc399f6d98b4574_720x"></div>
						</div>
						<div class="bn-carousel-sm-cell">
							<div class="img lazy r169"
								data-original="https://media.voocdn.com/media/image/id/5fe9b3a2acc3994b3d8b4574_720x"></div>
						</div>
						<div class="bn-carousel-sm-cell">
							<div class="img lazy r169"
								data-original="https://media.voocdn.com/media/image/id/5fdb206eacc399b7d38b4581_720x"></div>
						</div>
						<div class="bn-carousel-sm-cell">
							<div class="img lazy r169"
								data-original="https://media.voocdn.com/media/image/id/5fd728e5acc3997bc68b459f_720x"></div>
						</div>
						<div class="bn-carousel-sm-cell">
							<div class="img lazy r169"
								data-original="https://media.voocdn.com/media/image/id/5cb47e70acc399558a8b4572_720x"></div>
						</div>
						<div class="bn-carousel-sm-cell">
							<div class="img lazy r169"
								data-original="https://media.voocdn.com/media/image/id/5feae526acc399bb948b456f_720x"></div>
						</div>
						<div class="bn-carousel-sm-cell">
							<div class="img lazy r169"
								data-original="https://media.voocdn.com/media/image/id/5fe9549aacc399f95a8b4567_720x"></div>
						</div>
						<div class="bn-carousel-sm-cell">
							<div class="img lazy r169"
								data-original="https://media.voocdn.com/media/image/id/5fac99b6acc399eb568b4569_720x"></div>
						</div>
						<div class="bn-carousel-sm-cell">
							<div class="img lazy r169"
								data-original="https://media.voocdn.com/media/image/id/5fe1d35aacc399b2408b456b_720x"></div>
						</div>
					</div>
				</div>
			</div>

			<script>
				$(function() {
					var banner = $(".bn-carousel").smartflickity({
						contain : true,
						prevNextButtons : false,
						pageDots : false,
						groupCells : true,
						autoPlay : 3500,
						wrapAround : true,
						bgLazyLoad : 1,
						parallax : true
					});
					$('.bn-carousel-sm').smartflickity({
						asNavFor : banner[0],
						contain : true,
						pageDots : false,
						groupCells : true,
						prevNextButtons : false,
					});
					$(".pl-carousel").smartflickity({
						freeScroll : true,
						contain : true,
						pageDots : false,
						groupCells : true
					});
				});
			</script>
		</section>
	</div>

	<script data-cfasync="false"
		src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script>
		window.DP_STATS_DOMAIN = 'https://dp.voocdn.com';
		window.DP_TRACKING_DOMAIN = 'https://dp.voocdn.com';
	</script>
	<script type="text/javascript"
		src="https://static.voocdn.com/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://static.voocdn.com/js/dp/main.js?v=1.3.2"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js"></script>
	<script>
		$(window)
				.load(
						function() {
							$(
									"<style>.luna .boxed, .luna header.sticky, .luna footer { background-image: url(../images/dp/tet21net.jpg); background-size: cover; background-position: top; } .luna .boxed{background-size: contain;}</style>")
									.appendTo($("head"));
							lazyload();
							WebFont
									.load({
										google : {
											families : [ 'Cuprum|Nunito&subset=vietnamese' ]
										},
										custom : {
											families : [ 'FontAwesome' ],
											urls : [ 'https://static.voocdn.com/bower_components/font-awesome/css/font-awesome.min.css' ]
										}
									});
							$
									.ajax({
										url : '/content/rest',
										dataType : 'json',
										timeout : 30000,
										data : {
											t : 'img_ads_config',
										},
										success : function(msg) {
											if (msg.error == 0) {
												var collections = {};
												for ( var id in msg.data) {
													if (IMG_ADS[id]
															&& IMG_ADS[id].load) {
														if (!IMG_ADS[id].collection
																|| !IMG_ADS[id].mode) {
															IMG_ADS[id]
																	.load(msg.data[id]);
														} else {
															if (!collections[IMG_ADS[id].collection]) {
																collections[IMG_ADS[id].collection] = {};
															}
															if (!collections[IMG_ADS[id].collection][IMG_ADS[id].mode]) {
																collections[IMG_ADS[id].collection][IMG_ADS[id].mode] = {};
															}
															collections[IMG_ADS[id].collection][IMG_ADS[id].mode][id] = IMG_ADS[id];
														}
													}
												}
												for ( var cl in collections) {
													var data = collections[cl];
													var key = IMG_ADS
															.random(Object
																	.keys(data));
													for ( var id in data[key]) {
														data[key][id]
																.load(msg.data[id]);
													}
												}
											}
										}
									});
						});
	</script>
	<script>
		$(function() {
			return;
			var show_news = function() {
				if (news == "1") {
					window.location = '/news/';
				}
			};
			var news = SMARTSTORAGE.cookie.get("news2");
			if (!news) {
				delay_onload();
				$.getJSON(
						"https://dp.voocdn.com/content/detectCountry/"
								+ new Date().getTime(),
						function(data) {
							if (data.error == 0) {
								news = data.news ? "1" : "0";
								SMARTSTORAGE.cookie.set("news2", news, 1 / 24,
										{
											domain : null
										});
								show_news();
							}
							if (news != "1") {
								kick_onload();
							}
						}).fail(function() {
					kick_onload();
				});
			} else {
				show_news();
			}
		});
	</script>
	<div class="aadfly60201650d4e0fds"></div>
	<div class="abanner-footer60201650d4ee0ds">
		<div id="abanner-footer60201650d4ee0ds-elem"></div>
		<script>
			$(function() {
				var ctn = $("#abanner-footer60201650d4ee0ds-elem");
				if (!isMobile.any()) {
					var sda = $('<div class="sda-wrapper sda-banner-footer" style="width: calc(100% - 510px);max-width:980px;max-height: 180px;position: fixed;bottom: 0;left: 50%;transform: translateX(-50%);z-index: 236;background-color: #777; overflow: visible;text-align:center;">'
							+ '	<div style="position: relative">'
							+ '		<div class="sda-content"></div>'
							+ '		<a class="sda-close" rel="nofollow" href="javascript:void(0)" style="font-size: 15px;display: inline-block; padding: 4px 6px; position: absolute; bottom: 100%; right: 0; color: #FFF; background-color: rgba(0,0,0,0.7);border: 1px solid #FFF;">'
							+ '			[x]' + '		</a>' + '	</div>' + '</div>');
					sda.find(".sda-close").click(function() {
						ctn.empty();
					});
					sda.hide();
					ctn.html(sda);
					$(window).resize(
							function() {
								if ($(window).width() < 1024
										&& $(".sda-ballon").length > 0) {
									ctn.addClass("hidden");
								} else {
									ctn.removeClass("hidden");
								}
							}).resize();
					IMG_ADS["PC_Catfish_980x90"] = {
						'load' : function(datas) {
							if (datas.length == 0)
								return;
							var data = IMG_ADS.random(datas);
							sda
									.find(".sda-content")
									.append(
											'<a class="sda-link" rel="nofollow" target="_blank" href="' + data.url + '">'
													+ '	<img class="img-responsive" src="' + data.img + '">'
													+ '</a>');
							sda.show();
						},
					};
					IMG_ADS["PC_Catfish2_980x90"] = {
						'load' : function(datas) {
							if (datas.length == 0)
								return;
							var data = IMG_ADS.random(datas);
							sda
									.find(".sda-content")
									.append(
											'<a class="sda-link" rel="nofollow" target="_blank" href="' + data.url + '">'
													+ '	<img class="img-responsive" src="' + data.img + '">'
													+ '</a>');
							sda.show();
						},
					};
				}
				if (isMobile.any()) {
					var sda = $('<div class="sda-wrapper sda-catfísh" style="width: 100%;height: auto;max-height: 100px;position: fixed;top: auto;bottom: 0;left: 0;right: 0;z-index: 233;background-color: rgba(0,0,0,1); overflow: visible;margin: 0 auto; text-align: center;">'
							+ '	<div style="position: relative;">'
							+ '		<div class="sda-content"></div>'
							+ '		<a class="sda-close" rel="nofollow" href="javascript:void(0)" style="font-size: 12px;display: inline-block; padding: 4px 6px; position: absolute; top: -15px; right: 2px; color: #FFF; background-color: rgba(0,0,0,0.7);border: 1px solid #FFF;">'
							+ '			Đóng [x]' + '		</a>' + '	</div>' + '</div>');
					ctn.html(sda);
					sda.find(".sda-close").click(function() {
						ctn.empty();
					});
					sda.hide();
					IMG_ADS['M_BottomFloat1_320x50'] = {
						'collection' : 'bottomfloat',
						'mode' : 'append',
						'load' : function(datas) {
							if (datas.length == 0)
								return;
							var data = IMG_ADS.random(datas);
							var s = ''
									+ '	<a class="sda-link" rel="nofollow" target="_blank" href="' + data.url + '">'
									+ '		<img src="' + data.img + '">'
									+ '	</a>';
							sda.find(".sda-content").prepend(s);
							sda.show();
						}
					};
					IMG_ADS['M_BottomFloat2_320x50'] = {
						'collection' : 'bottomfloat',
						'mode' : 'append',
						'load' : function(datas) {
							if (datas.length == 0)
								return;
							var data = IMG_ADS.random(datas);
							var s = ''
									+ '	<a class="sda-link" rel="nofollow" target="_blank" href="' + data.url + '">'
									+ '		<img src="' + data.img + '">'
									+ '	</a>';
							sda.find(".sda-content").append(s);
							sda.show();
						}
					};
					IMG_ADS['M_BottomFloat_320x100'] = {
						'collection' : 'bottomfloat',
						'mode' : 'replace',
						'load' : function(datas) {
							if (datas.length == 0)
								return;
							var data = IMG_ADS.random(datas);
							var s = ''
									+ '	<a class="sda-link" rel="nofollow" target="_blank" href="' + data.url + '">'
									+ '		<img src="' + data.img + '">'
									+ '	</a>';
							sda.find(".sda-content").append(s);
							sda.show();
						}
					};
				}
			});
		</script>
	</div>
	<div class="aballon-left60201650d4fc0ds">
		<div id="aballon-left60201650d4fc0ds-elem">
			<script>
				$(function() {
					if (!isMobile.any()) {
						var ctn = $("#aballon-left60201650d4fc0ds-elem");
						IMG_ADS['PC_BalloonLeft_300x250'] = {
							load : function(datas) {
								if (datas.length == 0)
									return;
								var data = IMG_ADS.random(datas);
								var sda = $('<div class="sda-wrapper sda-ballon" style="width: 250px;height: 208.333px;position: fixed;top: auto;bottom: 0;left: 0;z-index: 235;background-color: #777; overflow: visible;margin: 0 auto; text-align: center;">'
										+ '	<div style="position: relative">'
										+ '	<a class="sda-link" rel="nofollow" target="_blank" href="' + data.url + '">'
										+ '		<img class="img-responsive" src="' + data.img + '">'
										+ '		<a class="sda-close" rel="nofollow" href="javascript:void(0)" style="font-size: 15px;display: inline-block; padding: 4px 6px; position: absolute; top: -15px; left: 2px; color: #FFF; background-color: rgba(0,0,0,0.7);border: 1px solid #FFF;">'
										+ '			[x]'
										+ '		</a>'
										+ '	</div>'
										+ '	</a>' + '</div>');
								ctn.html(sda);
								sda.find(".sda-close").click(function() {
									ctn.empty();
								});
							}
						};
					}
				});
			</script>
		</div>
	</div>
	<div class="aballon-right60201650d509ads">
		<div id="aballon-right60201650d509ads-elem">
			<script>
				$(function() {
					if (!isMobile.any()) {
						var ctn = $("#aballon-right60201650d509ads-elem");
						IMG_ADS['PC_BalloonRight_300x250'] = {
							load : function(datas) {
								if (datas.length == 0)
									return;
								var data = IMG_ADS.random(datas);
								var sda = $('<div class="sda-wrapper sda-ballon" style="width: 250px;height: 208.333px;position: fixed;top: auto;bottom: 0;right: 0;z-index: 235;background-color: #777; overflow: visible;margin: 0 auto; text-align: center;">'
										+ '	<div style="position: relative">'
										+ '	<a class="sda-link" rel="nofollow" target="_blank" href="' + data.url + '">'
										+ '		<img class="img-responsive" src="' + data.img + '">'
										+ '		<a class="sda-close" rel="nofollow" href="javascript:void(0)" style="font-size: 15px;display: inline-block; padding: 4px 6px; position: absolute; top: -15px; right: 2px; color: #FFF; background-color: rgba(0,0,0,0.7);border: 1px solid #FFF;">'
										+ '			[x]'
										+ '		</a>'
										+ '	</div>'
										+ '	</a>' + '</div>');
								ctn.html(sda);
								sda.find(".sda-close").click(function() {
									ctn.empty();
								});
							}
						};
					}
				});
			</script>
		</div>
	</div>
	<div class="apreload-popup60201650d5164ds">
		<div id="apreload-popup60201650d5164ds-elem">
			<script>
				$(function() {
					var ctn = $("#apreload-popup60201650d5164ds-elem");
					var stt = SMARTSTORAGE.get("preload-popup-loaded");
					if (!stt) {
						IMG_ADS[isMobile.any() ? 'M_PreloadPopup_320x150'
								: 'PC_PreloadPopup_600x400'] = {
							load : function(datas) {
								if (datas.length == 0)
									return;
								var data = IMG_ADS.random(datas);
								var w = !isMobile.any() ? 600 : 320;
								var h = !isMobile.any() ? 400 : 150;
								var sda = $('<div class="sda-wrapper sda-preload-popup" style="left: 50%;top:50%;transform: translate(-50%, -50%);position: fixed; border: 8px solid rgba(0,0,0,0.5); border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; z-index: 999998;">'
										+ '	<div style="position: relative; width: ' + w + 'px; height:' + h + 'px; background: #666;">'
										+ '	<a class="sda-link" rel="nofollow" target="_blank" href="' + data.url + '">'
										+ '		<img src="' + data.img + '">'
										+ '		<a class="sda-close" rel="nofollow" href="javascript:void(0)" style="font-size: 12px;display: inline-block; padding: 4px 6px; position: absolute; top: -15px; right: 2px; color: #FFF; background-color: rgba(0,0,0,0.7);border: 1px solid #FFF;">'
										+ '			Đóng [x]'
										+ '		</a>'
										+ '	</div>'
										+ '	</a>'
										+ '</div>'
										+ '<div class="sda-preload-popup-overlay" style="position: fixed; z-index: 999997; background-color: rgba(0,0,0,0.7); width: 100%; height: 100%; border: 0; padding: 0; top: 0; left: 0;"></div>');
								ctn.html(sda);
								sda.find(".sda-close").click(
										function() {
											ctn.empty();
											SMARTSTORAGE.set(
													"preload-popup-loaded", 1,
													0);
										});
							}
						};
					}
				});
			</script>
		</div>
	</div>
	<div class="apropeller60201650d5230ds"></div>
	<script type="text/javascript"
		src="https://static.voocdn.com/bower_components/flickity/flickity.smart.min.js?v=0.0.2"></script>
	<script type="text/javascript"
		src="https://static.voocdn.com/js/smartstorage.js"></script>
	<script type="text/javascript"
		src="https://static.voocdn.com/bower_components/lazyload_v2/intersection-observer.js"></script>
	<script type="text/javascript"
		src="https://static.voocdn.com/bower_components/lazyload_v2/lazyload.js?v=1"></script>
</body>
</html>