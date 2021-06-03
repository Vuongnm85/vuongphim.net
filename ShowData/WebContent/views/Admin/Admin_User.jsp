<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>VuongPhim Admin | Update Users</title>
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

table[border="1"] {
	border-collapse: collapse;
	font: normal normal 11px Verdana, Arial, Sans-Serif;
	color: #666;
	height: 500px;
}

table[border="1"] tr {
	background: #fafafa;
}

table[border="1"] th, table[border="1"] td {
	vertical-align: top;
	padding: 5px 10px;
	border: 1px solid #fff;
}

table[border="1"] tr:nth-child(even) {
	background: #f5f5f5;
	text-align: center;
}

table[border="1"] th {
	background: #418AA4;
	color: #fff;
	font-weight: bold;
}

td {
	text-align: center;
	font-size: 20px;
}

.formHienThi {
	margin-top: 43px;
}

.mainForm {
	margin-top: -43px;
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
			<li class="active"><a href="/ShowData/youtube/index"><em
					class=""></em> Người dùng</a></li>
			<li><a href="/ShowData/thongke/luotThich"><em class=""></em>
					Báo cáo- thống kê</a></li>
			<li><a href="/ShowData/thongke/luotThichSP"><em class=""></em>
					Thống kê lượt thích</a></li>
			<li><a href="/ShowData/video/index"><em class=""></em> Thoát</a></li>

		</ul>
	</div>
	<!--/.sidebar-->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li class="">Quản lý người dùng</li>
			</ol>
		</div>
		<!--/.row-->

		<!--/.row-->
		<!-- Start tab nội dung -->
		<div>
			<!-- Tab items -->
			<div class="tabsChuyen">
				<div class="tab-itemChuyen active">User Edition</div>
				<div class="tab-itemChuyen">User List</div>
				<div class="line"></div>
			</div>

			<!-- Tab content -->
			<div class="tab-contentChuyen">
				<!-- Start tab 1 -->
				<div class="tab-paneChuyen active">
					<div class="row mainForm" style="margin-bottom: 0px;">
						<!-- Form hiển thị -->
						<div class="container">
							<div class="row">
								<div class="formHienThi">
									<div class=" col-sm-12 col-md-12 well well-sm col-md-offset-0">
										<form action="${url}/index" method="post">
											${message} <br> <label for="fname">User Id</label> <input
												class="form-control form-control-lg" type="text"
												value="${form.id}" name="id" placeholder="UserId">
											<!--Password-->
											<label for="fname">Password</label> <input
												class="form-control form-control-lg" type="text"
												value="${form.password}" name="password"
												placeholder="Password">
											<!--Fullname-->
											<label for="fname">Fullname</label> <input
												class="form-control form-control-lg" type="text"
												value="${form.fullname}" name="fullname"
												placeholder="Fullname">
											<!--Email-->
											<label for="fname">Emaiil</label> <input
												class="form-control form-control-lg" type="text"
												value="${form.email}" name="email" placeholder="Email">
											<hr>
											<!-- Start button group -->
											<div class="form-group">
												<button class="btn btn-success" type="submit"
													formaction="/ShowData/nguoiDung/create">Create</button>
												<button class="btn btn-success" type="submit"
													formaction="/ShowData/nguoiDung/update">Update</button>
												<button class="btn btn-success" type="submit"
													formaction="/ShowData/nguoiDung/delete">Delete</button>
												<a href="/ShowData/nguoiDung/index">Reset</a>
											</div>
											<!-- End button group -->
										</form>
										
									</div>
								</div>
							</div>
						</div>
						<!-- End form hiển thị -->
					</div>
				</div>
				<!-- End tab 1 -->
				<!-- Start tab 2 -->
				<div class="tab-paneChuyen">
					<!--Start Bảng -->
					<table border="1" style="width: 100%; background-color: #E6E6E6">
						<c:forEach var="item" items="${videos}">
							<tr>
								<td>${item.id}</td>
								<td>${item.password}</td>
								<td>${item.fullname}</td>
								<td>${item.email}</td>
								<td><a href="/ShowData/nguoiDung/edit/${item.id}">Edit</a></td>
							</tr>
						</c:forEach>
					</table>
					<!-- End bảng -->
				</div>
				<!-- End tab 2 -->
			</div>
		</div>
		<!-- End tab nội dung -->
	</div>
	<!--/.row-->
	</div>
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