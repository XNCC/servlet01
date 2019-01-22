<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
	<meta charset="UTF-8" http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>Tables - Ready Bootstrap Dashboard</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
	<link rel="stylesheet" href="assets/css/ready.css">
	<link rel="stylesheet" href="assets/css/demo.css">
	


<link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.bootcss.com/bootstrap-select/1.12.4/css/bootstrap-select.min.css" rel="stylesheet">

	<style>
		.overflow{
			overflow:scroll;
		}
		.table{
			table-layout:fixed;
		}
		td{
			wide:500px;
		}
		.i_left{
			
			margin-left: 20px;
			
		}
	</style>
</head>
<body>
	<div class="wrapper">
		<div class="main-header">
			<!--logo部分-->
			<div class="logo-header">
				<a href="#" class="logo"><!--index.html 当点击logo时跳回主页-->
					科研项目数据表
				</a>
				<button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<button class="topbar-toggler more"><i class="la la-ellipsis-v"></i></button>	
			</div>
			
			
			<nav class="navbar navbar-header navbar-expand-lg">
				<div class="container-fluid">
					
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
						<!--信件部分-->
						<li class="nav-item dropdown hidden-caret">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="la la-envelope"></i>
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">Action</a>
								<a class="dropdown-item" href="#">Another action</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Something else here</a>
							</div>
						</li>
						<!--提示消息部分-->
						<li class="nav-item dropdown hidden-caret">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="la la-bell"></i>
								<span class="notification">3</span>
							</a>
							<ul class="dropdown-menu notif-box" aria-labelledby="navbarDropdown">
								<li>
									<div class="dropdown-title">You have 4 new notification</div>
								</li>
								<li>
									<div class="notif-center">
										<a href="#">
											<div class="notif-icon notif-primary"> <i class="la la-user-plus"></i> </div>
											<div class="notif-content">
												<span class="block">
													New user registered
												</span>
												<span class="time">5 minutes ago</span> 
											</div>
										</a>
										<a href="#">
											<div class="notif-icon notif-success"> <i class="la la-comment"></i> </div>
											<div class="notif-content">
												<span class="block">
													Rahmad commented on Admin
												</span>
												<span class="time">12 minutes ago</span> 
											</div>
										</a>
										<a href="#">
											<div class="notif-img"> 
												<img src="assets/img/profile2.jpg" alt="Img Profile">
											</div>
											<div class="notif-content">
												<span class="block">
													Reza send messages to you
												</span>
												<span class="time">12 minutes ago</span> 
											</div>
										</a>
										<a href="#">
											<div class="notif-icon notif-danger"> <i class="la la-heart"></i> </div>
											<div class="notif-content">
												<span class="block">
													Farrah liked Admin
												</span>
												<span class="time">17 minutes ago</span> 
											</div>
										</a>
									</div>
								</li>
								<li>
									<a class="see-all" href="javascript:void(0);"> <strong>See all notifications</strong> <i class="la la-angle-right"></i> </a>
								</li>
							</ul>
						</li>
						<!--个人信息部分-->
						<li class="nav-item dropdown">
							<a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false"> <img src="assets/img/profile.jpg" alt="user-img" width="36" class="img-circle"><span >Hizrian</span></span> </a>
							<ul class="dropdown-menu dropdown-user">
								<li>
									<div class="user-box">
										<div class="u-img"><img src="assets/img/profile.jpg" alt="user"></div>
										<div class="u-text">
											<h4>Hizrian</h4>
											<p class="text-muted">hello@themekita.com</p><a href="profile.html" class="btn btn-rounded btn-danger btn-sm">View Profile</a></div>
										</div>
									</li>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#"><i class="ti-user"></i> My Profile</a>
									<a class="dropdown-item" href="#"></i> My Balance</a>
									<a class="dropdown-item" href="#"><i class="ti-email"></i> Inbox</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#"><i class="ti-settings"></i> Account Setting</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#"><i class="fa fa-power-off"></i> Logout</a>
								</ul>
								<!-- /.dropdown-user -->
							</li>
						</ul>
					</div>
				</nav>
	       <!--logo之后的部分结束-->
			</div>

          <!--左下角部分-->
			<div class="sidebar">
				<div class="scrollbar-inner sidebar-wrapper">
					<ul class="nav">
						
						<li class="nav-item active">
							<a href="table_insert.jsp">
								<i class="la la-th"></i>
								<p>insert_Tables</p>
								<span class="badge badge-count">6</span>
							</a>
						</li>
						
						<li class="nav-item">
							<a href="table_select.jsp">
								<i class="la la-dashboard"></i>
								<p>select_table</p>
								<span class="badge badge-count">5</span>
							</a>
						</li>
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
				<div class="content">
					    插入部分部分
						<form action="service.table_insert"	method="post" >
						<table class="table table-responsive">
						<table class="table table-responsive">
							<tr>
							<td><strong>项目批号</strong>&nbsp;&nbsp;&nbsp; <input  name="projectno" type="text"><strong>&nbsp;&nbsp;&nbsp;*</strong></td>
								<td colspan="2"><strong>项目名称</strong>&nbsp;&nbsp;&nbsp;<input  type="text" size="57px" name="projectname" ></td>
							</tr>
							<tr>
							<td><strong>课题类别</strong>&nbsp;&nbsp;&nbsp;
								  <select  data-style="btn-info" size="1.3" style="width:65.5%; background: gray;border-radius:5px" name="ktlbdm">
								  
								  
								  <option value ="1">基础性研究</option>
								  <option value ="2"">应用性研究</option>
								</select>
								<strong>&nbsp;&nbsp;&nbsp;*</strong>
													  </td>
							<td><strong>课题属性</strong>&nbsp;&nbsp;&nbsp; <select name="ktsxdm" data-style="btn-info" size="1.3" style="width:65.5%; background: gray;border-radius:5px">
								  
								  <option value ="1">科研项目</option>
								</select>
								<strong>&nbsp;&nbsp;&nbsp;*</strong></td>
							<td><strong>课题级别</strong>&nbsp;&nbsp;&nbsp; 
							<select name="ktjbdm" data-style="btn-info" size="1.3" style="width:65.5%; background: gray;border-radius:5px">
								 
								
								  <option value ="1">校级项目</option>
								  <option value ="2">国家级项目</option>
								  <option value ="3">省部级项目</option>
								  <option value ="4">企事业委托</option>
								   <option value ="5">厅级项目</option>
								  
								</select>
							<strong>&nbsp;&nbsp;&nbsp;*</strong></td>
							</tr>
							<tr>
							<td><strong>学科分类</strong>&nbsp;&nbsp;&nbsp; 
							<select name="xkfldm" data-style="btn-info" size="1.3" style="width:65.5%; background: gray;border-radius:5px">
							<option value ="1">化学工程</option>
								  <option value ="2">物理学</option>
								  <option value="3">语言学</option>
								  <option value="4">体育科学</option>
								  <option value ="5">信息科学与系统科学</option>
								  <option value="6">土木建筑工程</option>
								  <option value="7">电子与通信技术</option>  
								  <option value="8">机械工程</option>
								  <option value ="9">食品科学技术</option>
								  <option value="10">数学</option>
								  <option value="11">艺术学</option>
							</select>
							
							<td><strong>课题方向</strong>&nbsp;&nbsp;&nbsp; 
								<select name="ktfxdm" data-style="btn-info" size="1.3" style="width:65.5%; background: gray;border-radius:5px">
								  <option value ="1">纵向</option>
								  <option value ="2">横向</option>
								  
								</select>
								<strong>&nbsp;&nbsp;&nbsp;*</strong></td>
							<td><strong>负责人&nbsp;&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp; <input  name="hostname" type="text"><strong>&nbsp;&nbsp;&nbsp;*</strong></td>
							</tr>
							<tr>
							<td><strong>经费来源</strong>&nbsp;&nbsp;&nbsp; 
							<select name="jflydm" data-style="btn-info" size="1.3" style="width:65.5%; background: gray;border-radius:5px">
							<option value ="1">安徽省科技厅</option>
								  <option value ="2">安徽省教育厅科研处</option>
								  <option value="3">科研处</option>
								  <option value="4">国家自然基金</option>
								  <option value ="5">教育部</option>
								  <option value="6">安徽省社科规划办</option>
								  <option value="7">企事业</option>
							</select>
							<strong>&nbsp;&nbsp;&nbsp;*</strong></td>
							
							<td><SPAN><strong>负责人电话</strong><input  name="hostid" type="text"><strong>&nbsp;&nbsp;&nbsp;*</strong><br/>&nbsp; </strong></SPAN></td>
							<td><strong>结题方式</strong>&nbsp;&nbsp;&nbsp; 
								<select name="jtfsdm" data-style="btn-info" size="1.3" style="width:65.5%; background: gray;border-radius:5px">
								  <option value ="1">论文</option>
								  <option value ="2">专著</option>
								  <option value="3">发明专利</option>
								  <option value="4">设计方案</option>
								</select>
								<strong>&nbsp;&nbsp;&nbsp;*</strong></td>
							</tr>
							<tr>
							<td><strong>拨付途径</strong>&nbsp;&nbsp;&nbsp; <select name="bftjdm" data-style="btn-info" size="1.3" style="width:65.5%; background: gray;border-radius:5px">
								  <option value ="1">外单位</option>
								  <option value ="2">学校</option>
								  
								</select>
								<strong>&nbsp;&nbsp;&nbsp;*</strong></td>
							<td><strong>批准时间</strong>&nbsp;&nbsp;&nbsp; <input  name="pzsj" type="date"><strong>&nbsp;&nbsp;&nbsp;*</strong></td>
							<td><strong>研究周期</strong>&nbsp;&nbsp;&nbsp; <input  name="wcsj" type="date"><strong>&nbsp;&nbsp;&nbsp;*</strong></td>
							</tr>
							<tr>
							<td><strong>总经费(万)</strong> <input  name="zjf" type="text"><strong>&nbsp;&nbsp;&nbsp;*</strong></td>
							<td><strong>申报单位</strong>&nbsp;&nbsp;&nbsp; 
								<select name="sbdwdm" data-style="btn-info" size="1.3" style="width:65.5%; background: gray;border-radius:5px">
								  <option value ="1">化学化工学院</option>
								  <option value ="2">信息工程学院</option>
								  <option value="3">外国语学院</option>
								  
								  <option value ="4">体育学院</option>
								  <option value ="5">建筑工程学院</option>
								  <option value="6">机电工程学院</option>
								  <option value="7">数学与统计学院</option>
								</select>
								<strong>&nbsp;&nbsp;&nbsp;*</strong></td>	
								
							<td><SPAN><strong>项目第一&nbsp;&nbsp;&nbsp; <input name="member1" type="text"><strong>&nbsp;&nbsp;&nbsp;*</strong><br/>参与人</strong></SPAN></td>
							</tr>
							<tr>
							<td><SPAN><strong>项目第二&nbsp;&nbsp;&nbsp; <input name="member2" type="text"><strong>&nbsp;&nbsp;&nbsp;*</strong><br/>参与人</strong></SPAN></td>
							<td><SPAN><strong>项目第三&nbsp;&nbsp;&nbsp; <input  name="member3" type="text"><strong>&nbsp;&nbsp;&nbsp;*</strong><BR/>参与人</strong></SPAN></td>
							<td><SPAN><strong>项目第四&nbsp;&nbsp;&nbsp; <input name="member4"  type="text"><strong>&nbsp;&nbsp;&nbsp;*</strong><br/>参与人</strong></SPAN></td>
							
							</tr>
							<tr>
							<td><SPAN><strong>项目第五&nbsp;&nbsp;&nbsp; <input name="member5" type="text"><strong>&nbsp;&nbsp;&nbsp;*</strong><br/>参与人</strong></SPAN><</td>
							<td><strong>是否立项</strong>&nbsp;&nbsp;&nbsp; 
								<select  name="sflx" data-style="btn-info" size="1.3" style="width:65.5%; background: gray;border-radius:5px">
								  <option value ="1">是</option>
								  <option value ="0">否</option>
								</select>
								<strong>&nbsp;&nbsp;&nbsp;*</strong></td>
							<td><strong>是否提交</strong>&nbsp;&nbsp; 
								<select name="sftj" data-style="btn-info" size="1.3" style="width:65.5%; background: gray;border-radius:5px">
								  <option value ="1">是</option>
								  <option value ="0">否</option>
								</select>
								<strong>&nbsp;&nbsp;&nbsp;*</strong></td>
							
							</tr>
							<tr>
							
							</tr>
							<tr>
								
								<td>
							
							<input type="submit" value="提交" class="btn btn-primary">	
								</td>	
							
							
								
							</tr>
							</table>	
						</form>
					
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
<script src="assets/js/plugin/chartist/plugin/chartist-plugin-tooltip.min.js"></script>
<script src="assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>
<script src="assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
<script src="assets/js/plugin/jquery-mapael/jquery.mapael.min.js"></script>
<script src="assets/js/plugin/jquery-mapael/maps/world_countries.min.js"></script>
<script src="assets/js/plugin/chart-circle/circles.min.js"></script>
<script src="assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
<script src="assets/js/ready.min.js"></script>
<script>
	$('#displayNotif').on('click', function(){
		var placementFrom = $('#notify_placement_from option:selected').val();
		var placementAlign = $('#notify_placement_align option:selected').val();
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

		$.notify(content,{
			type: state,
			placement: {
				from: placementFrom,
				align: placementAlign
			},
			time: 1000,
		});
	});
</script>
<!--自己的js-->
<script src="https://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap-select/1.12.4/js/i18n/defaults-zh_CN.min.js"></script>
</html>