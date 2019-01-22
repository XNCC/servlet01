<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="entity.user_insert"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8" http-equiv="X-UA-Compatible"
	content="IE=edge,chrome=1" />
<title>Tables - Ready Bootstrap Dashboard</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
<link rel="stylesheet" href="assets/css/ready.css">
<link rel="stylesheet" href="assets/css/demo.css">



<link
	href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.bootcss.com/bootstrap-select/1.12.4/css/bootstrap-select.min.css"
	rel="stylesheet">

<style>
.overflow {
	overflow: scroll;
}

.table {
	table-layout: fixed;
}

td {
	wide: 500px;
}

.i_left {
	margin-left: 20px;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="main-header">
			<!--logo部分-->
			<div class="logo-header">
				<a href="#" class="logo"> <!--index.html 当点击logo时跳回主页--> 科研项目数据表
				</a>
				<button class="navbar-toggler sidenav-toggler ml-auto" type="button"
					data-toggle="collapse" data-target="collapse"
					aria-controls="sidebar" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<button class="topbar-toggler more">
					<i class="la la-ellipsis-v"></i>
				</button>
			</div>


			<nav class="navbar navbar-header navbar-expand-lg">
				<div class="container-fluid">

					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
						<!--信件部分-->
						<li class="nav-item dropdown hidden-caret"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="la la-envelope"></i>
						</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">Action</a> <a
									class="dropdown-item" href="#">Another action</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Something else here</a>
							</div></li>
						<!--提示消息部分-->
						<li class="nav-item dropdown hidden-caret"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="la la-bell"></i> <span
								class="notification">3</span>
						</a>
							<ul class="dropdown-menu notif-box"
								aria-labelledby="navbarDropdown">
								<li>
									<div class="dropdown-title">You have 4 new notification</div>
								</li>
								<li>
									<div class="notif-center">
										<a href="#">
											<div class="notif-icon notif-primary">
												<i class="la la-user-plus"></i>
											</div>
											<div class="notif-content">
												<span class="block"> New user registered </span> <span
													class="time">5 minutes ago</span>
											</div>
										</a> <a href="#">
											<div class="notif-icon notif-success">
												<i class="la la-comment"></i>
											</div>
											<div class="notif-content">
												<span class="block"> Rahmad commented on Admin </span> <span
													class="time">12 minutes ago</span>
											</div>
										</a> <a href="#">
											<div class="notif-img">
												<img src="assets/img/profile2.jpg" alt="Img Profile">
											</div>
											<div class="notif-content">
												<span class="block"> Reza send messages to you </span> <span
													class="time">12 minutes ago</span>
											</div>
										</a> <a href="#">
											<div class="notif-icon notif-danger">
												<i class="la la-heart"></i>
											</div>
											<div class="notif-content">
												<span class="block"> Farrah liked Admin </span> <span
													class="time">17 minutes ago</span>
											</div>
										</a>
									</div>
								</li>
								<li><a class="see-all" href="javascript:void(0);"> <strong>See
											all notifications</strong> <i class="la la-angle-right"></i>
								</a></li>
							</ul></li>
						<!--个人信息部分-->
						<li class="nav-item dropdown"><a
							class="dropdown-toggle profile-pic" data-toggle="dropdown"
							href="#" aria-expanded="false"> <img
								src="assets/img/profile.jpg" alt="user-img" width="36"
								class="img-circle"><span>Hizrian</span></span>
						</a>
							<ul class="dropdown-menu dropdown-user">
								<li>
									<div class="user-box">
										<div class="u-img">
											<img src="assets/img/profile.jpg" alt="user">
										</div>
										<div class="u-text">
											<h4>Hizrian</h4>
											<p class="text-muted">hello@themekita.com</p>
											<a href="profile.html"
												class="btn btn-rounded btn-danger btn-sm">View Profile</a>
										</div>
									</div>
								</li>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#"><i class="ti-user"></i> My
									Profile</a>
								<a class="dropdown-item" href="#"></i> My Balance</a>
								<a class="dropdown-item" href="#"><i class="ti-email"></i>
									Inbox</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#"><i class="ti-settings"></i>
									Account Setting</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#"><i class="fa fa-power-off"></i>
									Logout</a>
							</ul> <!-- /.dropdown-user --></li>
					</ul>
				</div>
			</nav>
			<!--logo之后的部分结束-->
		</div>

		<!--左下角部分-->
		<div class="sidebar">
			<div class="scrollbar-inner sidebar-wrapper">
				<ul class="nav">

					<li class="nav-item active"><a href="table_insert.jsp"> <i
							class="la la-th"></i>
							<p>insert_Tables</p> <span class="badge badge-count">6</span>
					</a></li>

					<li class="nav-item"><a href="table_select.jsp"> <i
							class="la la-dashboard"></i>
							<p>select_table</p> <span class="badge badge-count">5</span>
					</a></li>
					<!--
						<li class="nav-item">
							<a href="components.html">
								<i class="la la-table"></i>
								<p>Components</p>
								<span class="badge badge-count">14</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="forms.html">
								<i class="la la-keyboard-o"></i>
								<p>Forms</p>
								<span class="badge badge-count">50</span>
							</a>
						</li>
-->

					<!--
						<li class="nav-item">
							<a href="notifications.html">
								<i class="la la-bell"></i>
								<p>Notifications</p>
								<span class="badge badge-success">3</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="typography.html">
								<i class="la la-font"></i>
								<p>Typography</p>
								<span class="badge badge-danger">25</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="icons.html">
								<i class="la la-fonticons"></i>
								<p>Icons</p>
							</a>
						</li>
						<li class="nav-item update-pro">
							<button  data-toggle="modal" data-target="#modalUpdate">
								<i class="la la-hand-pointer-o"></i>
								<p>Update To Pro</p>
							</button>
						</li>
-->
				</ul>
			</div>
		</div>
		<!-- 左下角对应的table_insert填写包表的部分-->
		<div class="main-panel">
			查询部分

			<div class="content">
				<form action="service.table_select" method="post">
					<input type="date" name="start_time" value="" /> <input
						type="date" name="end_time" value="" /> <input type="submit"
						value="查询" />
				</form>
				<table class="table">
					<tr>
						<td>项目批号</td>
						<td>项目名称</td>
						<td>负责人工号</td>
						<td>负责人</td>
						<td>课题级别</td>
						<td>课题属性</td>
						<td>课题类别</td>
						<td>课题方向</td>
						<td>学科分类</td>
						<td>结题方式</td>
						<td>申报单位</td>
						<td>经费来源</td>
						<td>拨付途径</td>
						<td>批准时间</td>
						<td>完成时间</td>
						<td>总经费</td>
						<td>参与人1</td>
						<td>参与人2</td>
						<td>参与人3</td>
						<td>参与人4</td>
						<td>参与人5</td>
						<td>是否提交</td>
						<td>是否立项</td>
						<td>修改项</td>
						<td>删除项</td>

					</tr>
					<%
						if ((List<user_insert>) request.getAttribute("data") != null) {
							List<user_insert> users = (List<user_insert>) request.getAttribute("data");
							session.setAttribute("data", users);
					%>
					<%!int i = 0;%>
					<form action="" method="get" name="ud">
						<%
							for (i = 0; i < users.size(); i++) {

									//	if(i<users.size()){
									//		i++;
						%>
						<tr>
							<td><input type="text" name="projectno"
								value="<%=users.get(i).getProjectno()%>" /></td>
							<td><input type="text" name="projectname"
								value="<%=users.get(i).getProjectname()%>" /></td>
							<td><input type="text" name="hostid"
								value="<%=users.get(i).getHostid()%>" /></td>
							<td><input type="text" name="hostname"
								value="<%=users.get(i).getHostname()%>" /></td>
							<td><input type="text" name="ktjbdm"
								value="<%=users.get(i).getKtjbdm()%>" /></td>
							<td><input type="text" name="ktsxdm"
								value="<%=users.get(i).getKtsxdm()%>" /></td>
							<td><input type="text" name="ktlbdm"
								value="<%=users.get(i).getKtlbdm()%>" /></td>
							<td><input type="text" name="ktfxdm"
								value="<%=users.get(i).getKtfxdm()%>" /></td>
							<td><input type="text" name="xkfldm"
								value="<%=users.get(i).getXkfldm()%>" /></td>
							<td><input type="text" name="jtfsdm"
								value="<%=users.get(i).getJtfsdm()%>" /></td>
							<td><input type="text" name="sbdwdm"
								value="<%=users.get(i).getSbdwdm()%>" /></td>
							<td><input type="text" name="jflydm"
								value="<%=users.get(i).getJflydm()%>" /></td>
							<td><input type="text" name="bftjdm"
								value="<%=users.get(i).getBftjdm()%>" /></td>
							<td><input type="text" name="pzsj"
								value="<%=users.get(i).getPzsj()%>" /></td>
							<td><input type="text" name="wcsj"
								value="<%=users.get(i).getWcsj()%>" /></td>
							<td><input type="text" name="zjf"
								value="<%=users.get(i).getZjf()%>" /></td>
							<td><input type="text" name="member1"
								value="<%=users.get(i).getMenber1()%>" /></td>
							<td><input type="text" name="member2"
								value="<%=users.get(i).getMenber2()%>" /></td>
							<td><input type="text" name="member3"
								value="<%=users.get(i).getMenber3()%>" /></td>
							<td><input type="text" name="member4"
								value="<%=users.get(i).getMenber4()%>" /></td>
							<td><input type="text" name="member5"
								value="<%=users.get(i).getMenber5()%>" /></td>
							<td><input type="text" name="sftj"
								value="<%=users.get(i).getSftj()%>" /></td>
							<td><input type="text" name="sflx"
								value="<%=users.get(i).getSflx()%>" /></td>
							<td><a href="/servlet2/table_update.jsp?id=<%=i%>">更新</a></td>
							<td><a href="/servlet2/service.table_delete?id=<%=i%>">删除</a></td>


							<script>
								//  <td><button onclick="update1()"/>修改</button> </td> 
								// <td><button onclick="delete1()"/>删除</button> </td>
								function update1() {
									//        document.("表单的name值").action
									//        document.("表单的name值").submit
									document.ud.action = "/servlet2/service.table_update";
									document.ud.submit();
								}
								function delete1() {
									document.ud.action = "/servlet2/service.table_delete";
									document.ud.submit();
								}
							</script>
						</tr>

						<%
							}
							}
						%>
					</form>
				</table>
			</div>
		</div>

	</div>
	</div>
	</div>
	</div>

</body>
<script src="assets/js/core/jquery.3.2.1.min.js"></script>
<script src="assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="assets/js/core/popper.min.js"></script>
<script src="assets/js/core/bootstrap.min.js"></script>
<script src="assets/js/plugin/chartist/chartist.min.js"></script>
<script
	src="assets/js/plugin/chartist/plugin/chartist-plugin-tooltip.min.js"></script>
<script src="assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>
<script src="assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
<script src="assets/js/plugin/jquery-mapael/jquery.mapael.min.js"></script>
<script src="assets/js/plugin/jquery-mapael/maps/world_countries.min.js"></script>
<script src="assets/js/plugin/chart-circle/circles.min.js"></script>
<script src="assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
<script src="assets/js/ready.min.js"></script>
<script>
	$('#displayNotif')
			.on(
					'click',
					function() {
						var placementFrom = $(
								'#notify_placement_from option:selected').val();
						var placementAlign = $(
								'#notify_placement_align option:selected')
								.val();
						var state = $('#notify_state option:selected').val();
						var style = $('#notify_style option:selected').val();
						var content = {};

						content.message = 'Turning standard Bootstrap alerts into "notify" like notifications';
						content.title = 'Bootstrap notify';
						if (style == "withicon") {
							content.icon = 'la la-bell';
						} else {
							content.icon = 'none';
						}
						content.url = 'index.html';
						content.target = '_blank';

						$.notify(content, {
							type : state,
							placement : {
								from : placementFrom,
								align : placementAlign
							},
							time : 1000,
						});
					});
</script>
<!--自己的js-->
<script src="https://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap-select/1.12.4/js/i18n/defaults-zh_CN.min.js"></script>
</html>