<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>VuongPhim Admin | Báo cáo thống kê</title>
<link href="/ShowData/views/Admin/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/ShowData/views/Admin/css/font-awesome.min.css"
	rel="stylesheet">
<link href="/ShowData/views/Admin/css/datepicker3.css" rel="stylesheet">
<link href="/ShowData/views/Admin/css/styles.css" rel="stylesheet">

<!--Custom Font-->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<!-- CSS tab nội dung -->
<style>
.tabsChuyen {
	display: flex;
	position: relative;
}

.tabsChuyen .line {
	position: absolute;
	left: 0;
	bottom: 0;
	width: 0;
	height: 6px;
	border-radius: 15px;
	background-color: #30a5ff;
	transition: all 0.2s ease;
}

.tab-itemChuyen {
	min-width: 80px;
	padding: 16px 20px 11px 20px;
	font-size: 20px;
	text-align: center;
	color: #30a5ff;
	background-color: #fff;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom: 5px solid transparent;
	opacity: 0.6;
	cursor: pointer;
	transition: all 0.5s ease;
}

.tab-icon {
	font-size: 24px;
	width: 32px;
	position: relative;
	top: 2px;
}

.tab-itemChuyen:hover {
	opacity: 1;
	background-color: rgba(194, 53, 100, 0.05);
	border-color: rgba(194, 53, 100, 0.1);
}

.tab-itemChuyen.active {
	opacity: 1;
}

.tab-contentChuyen {
	padding: 28px 0;
}

.tab-paneChuyen {
	color: #333;
	display: none;
}

.tab-paneChuyen.active {
	display: block;
}

.tab-paneChuyen h2 {
	font-size: 24px;
	margin-bottom: 8px;
}
</style>
<!-- CSS chia form -->
<style>
[class*="col-"] {
	float: left;
	padding: 15px;
	min-height: 550px;
}

.col-4 {
	margin: 0;
	padding: 0;
	width: 33.333%;
	height: 580px;
	background-color: #212529;
}

.col-8 {
	margin: 0;
	padding: 0;
	width: 66.667%;
	background-color: #212529;
}
</style>
<!-- CSS form hiển thi -->
<style>
body {
	padding-top: 0px;
}

.form-control {
	margin-bottom: 10px;
}

.login-screen-bg {
	background-color: #EFEFEF;
}

.formHienThi {
	margin-top: 10px;
}

.mainForm {
	margin-top: -43px;
}
</style>
<style>
.limiter {
	width: 100%;
	margin: 0 auto;
}

.container-table100 {
	width: 100%;
	min-height: 100vh;
	background: #c850c0;
	background: -webkit-linear-gradient(45deg, #4158d0, #c850c0);
	background: -o-linear-gradient(45deg, #4158d0, #c850c0);
	background: -moz-linear-gradient(45deg, #4158d0, #c850c0);
	background: linear-gradient(45deg, #4158d0, #c850c0);
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-wrap: wrap;
	padding: 33px 30px;
}

.wrap-table100 {
	width: 1170px;
}

table {
	border-spacing: 1;
	border-collapse: collapse;
	background: white;
	border-radius: 10px;
	overflow: hidden;
	width: 100%;
	margin: 0 auto;
	position: relative;
}

table * {
	position: relative;
}

table td, table th {
	padding-left: 8px;
}

table thead tr {
	height: 60px;
	background: #36304a;
	color: white;
}

.cbb {
	height: 44px;
	width: 221px;
	border-radius: 10px;
	margin-right: 46px;
}

}
table tbody tr {
	height: 50px;
}
td{
height:50px;
}

table tbody tr:last-child {
	border: 0;
}

table td, table th {
	text-align: left;
}

table td.l, table th.l {
	text-align: right;
}

table td.c, table th.c {
	text-align: center;
}

table td.r, table th.r {
	text-align: center;
}

.table100-head th {
	font-family: OpenSans-Regular;
	font-size: 18px;
	color: #fff;
	line-height: 1.2;
	font-weight: unset;
}

tbody tr:nth-child(even) {
	background-color: #f5f5f5;
}

tbody tr {
	font-family: OpenSans-Regular;
	font-size: 15px;
	color: #808080;
	line-height: 1.2;
	font-weight: unset;
}

tbody tr:hover {
	color: #555555;
	background-color: #f5f5f5;
	cursor: pointer;
}

.column1 {
	width: 260px;
	padding-left: 40px;
}

.column2 {
	width: 160px;
}

.column3 {
	width: 245px;
}

.column4 {
	width: 110px;
	text-align: right;
}

.column5 {
	width: 170px;
	text-align: right;
}

.column6 {
	width: 222px;
	text-align: right;
	padding-right: 62px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>VuongPhim</span>Admin</a>
				<ul class="nav navbar-top-links navbar-right">
					<li class="dropdown"><a class="dropdown-toggle count-info"
						data-toggle="dropdown" href="#"> <em class="fa fa-envelope"></em><span
							class="label label-danger">15</span>
					</a>
						<ul class="dropdown-menu dropdown-messages">
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.html" class="pull-left"> <img alt="image"
										class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">3 phút trước</small> <a href="#"><strong>Nguyễn
												Minh Vương</strong> đã chia sẻ phim<strong> Mắt Biếc</strong>.</a> <br />
										<small class="text-muted">1:24 pm - 25/02/2021</small>
									</div>
								</div>/
							</li>
							<li class="divider"></li>
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.html" class="pull-left"> <img alt="image"
										class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">1 hour ago</small> <a href="#"><strong>Vương
												Nguyễn </strong>đã thích phim<strong> Pháp Sư Mù</strong></a> <br /> <small
											class="text-muted">12:27 pm - 25/02/2021</small>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="all-button">
									<a href="#"> <em class="fa fa-inbox"></em> <strong>Tất
											cả thông báo</strong>
									</a>
								</div>
							</li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle count-info"
						data-toggle="dropdown" href="#"> <em class="fa fa-bell"></em><span
							class="label label-info">5</span>
					</a>
						<ul class="dropdown-menu dropdown-alerts">
							<li><a href="#">
									<div>
										<em class="fa fa-envelope"></em> 1 thông báo <span
											class="pull-right text-muted small">3 phút trước</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<em class="fa fa-heart"></em> 12 chia sẻ <span
											class="pull-right text-muted small">4 phút trước</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<em class="fa fa-user"></em> 5 lượt thích <span
											class="pull-right text-muted small">4 phút trước</span>
									</div>
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="http://placehold.it/50/30a5ff/fff" class="img-responsive"
					alt="">
			</div>
			<div class="profile-usertitle">
				<c:choose>
					<c:when test="${empty sessionScope.user}">
		Welcome you
	</c:when>
					<c:otherwise>

						<div class="profile-usertitle-name">
							${sessionScope.user.fullname}</div>
					</c:otherwise>
				</c:choose>

				<div class="profile-usertitle-status">
					<span class="indicator label-success"></span>Online
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<li><a href="/ShowData/youtube/index"><em class=""></em>
					Video</a></li>
			<li><a href="/ShowData/nguoiDung/index"><em class=""></em>
					Người dùng</a></li>
			<li><a href="/ShowData/thongke/luotThich"><em class=""></em>
					Báo cáo- thống kê</a></li>
			<li class="active"><a href="/ShowData/thongke/luotThichSP"><em
					class=""></em> Thống kê lượt thích</a></li>
			<li><a href="/ShowData/video/index"><em class=""></em> Thoát</a></li>
		</ul>
	</div>
	<!--/.sidebar-->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li class="">Báo cáo thống kê</li>
			</ol>
		</div>
		<!--/.row-->

		<!--/.row-->
		<!-- Start tab nội dung -->
		<div>
			<!-- Tab items -->

			<br>

			<form action="/ShowData/thongke/luotThichSP" method="get">
				<div class="box">
					<div class="container-1">


						<select name="videoId" class="cbb">
							<option value="VD001">Trạng Quỳnh</option>
							<option value="VD002">Mắt Biếc</option>
							<option value="VD003">Pháp Sư Mù</option>
							<option value="VD004">Hoán Đổi</option>
							<option value="VD005">Cô Ba Sài Gòn</option>
							<option value="VD006">Ròm</option>
							<option value="VD007">30 Chưa Phải Tết</option>
							<option value="VD008">Bí Mật Của Gió</option>
						</select>
						<button
							style="height: 44px; width: 120px; border-radius: 10px; margin-right: 46px;">Search</button>

					</div>
				</div>
				<!--  
			<input type="text" name="videoId" placeholder="VideoId"><br>
			<br>
			<button>Search</button>-->
			</form>
			<hr>

			<!-- Báº£ng -->

			<table border="1" style="width: 100%">
				<thead>
					<tr>
						<th>Username</th>
						<th>Fullname</th>
						<th>Email</th>
						<th>Role</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${video}">
						<tr>
							<td>${item.id}</td>
							<td>${item.fullname}</td>
							<td>${item.email}</td>
							<td>${item.admin}</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>

		</div>
	</div>
	<!-- End tab nội dung -->
	</div>
	<!--/.row-->
	<!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
	<script>
		window.onload = function() {
			var chart1 = document.getElementById("line-chart").getContext("2d");
			window.myLine = new Chart(chart1).Line(lineChartData, {
				responsive : true,
				scaleLineColor : "rgba(0,0,0,.2)",
				scaleGridLineColor : "rgba(0,0,0,.05)",
				scaleFontColor : "#c5c7cc"
			});
		};
	</script>
	<!-- script chuyển -->
	<script>
        const $ = document.querySelector.bind(document);
        const $$ = document.querySelectorAll.bind(document);

        const tabsChuyen = $$(".tab-itemChuyen");
        const panes = $$(".tab-paneChuyen");

        const tabActive = $(".tab-itemChuyen.active");
        const line = $(".tabsChuyen .line");

        line.style.left = tabActive.offsetLeft + "px";
        line.style.width = tabActive.offsetWidth + "px";

        tabsChuyen.forEach((tab, index) => {
            const pane = panes[index];

            tab.onclick = function() {
                $(".tab-itemChuyen.active").classList.remove("active");
                $(".tab-paneChuyen.active").classList.remove("active");

                line.style.left = this.offsetLeft + "px";
                line.style.width = this.offsetWidth + "px";

                this.classList.add("active");
                pane.classList.add("active");
            };
        });
    </script>
</body>
<script type="text/javascript">
	function openTab(e, tabId) {
		var i;
		var tabContent = document.getElementsByClassName("tab-content");
		for (i = 0; i < tabContent.length; i++) {
			tabContent[i].style.display = 'none';
		}
		tabContent[tabId - 1].style.display = 'block';
		var tabLink = document.getElementsByClassName("tab-link");
		for (i = 0; i < tabLink.length; i++) {
			tabLink[i].className = tabLink[i].className.replace('active', '');
		}
		event.currentTarget.className += ' active';
	}
</script>
</html>