<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%>
<%@page import="com.hz.util.SystemConstant"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.wuyg.common.util.TimeUtil"%>
<%@page import="com.wuyg.common.util.StringUtil"%>
<%@page import="com.wuyg.auth.obj.AuthUserObj"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>系统菜单</title>
	</head>
	<link href="css/global.css" rel="stylesheet" type="text/css" />
	<script src="js/jquery-2.0.3.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/css-1.7.0.min.js"></script>
	<script>
function openInMainFrame(td,url)
{	
	$(".menu_selected").attr("class","menu_not_selected");
	$(td).attr("class","menu_selected");
	parent.mainFrame.location = url;
}

function toggleMenuGroup(td,menuGroupId)
{
	$("#menu_group_" + menuGroupId).toggle();
	if($(td).attr("class")=="menu_header_not_expand")
	{
		$(td).attr("class","menu_header_expand");
	}
	else
	{
		$(td).attr("class","menu_header_not_expand");
	}
}
</script>
	<%
		String contextPath = request.getContextPath();

		// 用户信息
		AuthUserObj user = (AuthUserObj) request.getSession().getAttribute(SystemConstant.AUTH_USER_INFO);

		//boolean isAdmin = SystemConstant.ROLE_ADMIN.equals(user.getRoleLevel());
		boolean isAdmin = user.hasRole(SystemConstant.ROLE_ADMIN);
	%>
	<body class="menu_bg">
		<table width="100%" cellpadding="0" cellspacing="0" border="0">

			<tr>
				<td class="menu_header_expand" onclick="toggleMenuGroup(this,'04')">
					销售单价格管理
				</td>
			</tr>
			<tr>
				<td>

					<table id="menu_group_04" width="100%" cellpadding="0" cellspacing="0" border="0">
						<!-- 
						<tr>
							<td class="menu_selected" onclick="openInMainFrame(this,'<%=request.getContextPath()%>/Dispatchlist/Servlet?method=list4this&ddate_start=<%=TimeUtil.date2str(TimeUtil.getTheFirstDayOfTheMonth(),"yyyy-MM-dd") %>')">
								<img src="images/svg/heavy/green/list.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;发货单价格修改
							</td>
						</tr>
						-->
						<tr>
							<td class="menu_selected" onclick="openInMainFrame(this,'<%=request.getContextPath()%>/VDispatchlists/Servlet?method=list4modify&ddate_start=<%=TimeUtil.date2str(TimeUtil.getTheFirstDayOfTheMonth(),"yyyy-MM-dd") %>')">
								<img src="images/svg/heavy/green/list.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;发货单价格修改
							</td>
						</tr>
						<%
						if (isAdmin)
						{
						%>
						<tr>
							<td class="menu_not_selected" onclick="openInMainFrame(this,'System/Servlet?method=preDbAddOrModify')">
								<img src="images/svg/heavy/green/receipt.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;账套管理
							</td>
						</tr>
						<%} %>
						<!-- 
						<tr>
							<td class="menu_not_selected" onclick="openInMainFrame(this,'<%=request.getContextPath()%>/Dispatchlists/Servlet?method=list4this')">
								<img src="images/svg/heavy/green/list.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;发货单子表
							</td>
						</tr>
						
						<tr>
							<td class="menu_not_selected" onclick="openInMainFrame(this,'<%=request.getContextPath()%>/DispatchPriceChangeLog/Servlet?method=list4this')">
								<img src="images/svg/heavy/green/list.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;价格修改记录
							</td>
						</tr>
						 -->

						
					</table>
					
				</td>
			</tr>

			<tr>
				<td class="menu_header_expand" onclick="toggleMenuGroup(this,'99')">
					个人管理
				</td>
			</tr>
			<tr>
				<td>
					<table id="menu_group_99" width="100%" cellpadding="0" cellspacing="0" border="0" class="hidden">
						<tr>
							<td class="menu_not_selected" onclick="openInMainFrame(this,'AuthUser/Servlet?method=detail4this&id=<%=user.getId()%>')">
								<img src="images/svg/heavy/green/user.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;我的账号
							</td>
						</tr>
						<tr>
							<td class="menu_not_selected" onclick="openInMainFrame(this,'AuthUser/modifyPassword.jsp')">
								<img src="images/svg/heavy/green/locked.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;修改密码
							</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<%
			if (isAdmin)
			{
			%>
			<tr>
				<td class="menu_header_expand" onclick="toggleMenuGroup(this,'100')">
					系统管理
				</td>
			</tr>
			<tr>
				<td>
					<table id="menu_group_100" width="100%" cellpadding="0" cellspacing="0" border="0" class="hidden">
					  
					  	<tr>
							<td class="menu_not_selected" onclick="openInMainFrame(this,'<%=request.getContextPath()%>/AuthUser/Servlet?method=list4this')">
								<img src="images/svg/heavy/green/user.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;账号管理
							</td>
						</tr>
						<!-- 
					   	<tr>
							<td class="menu_not_selected" onclick="openInMainFrame(this,'<%=request.getContextPath()%>/AuthDepartment/Servlet?method=list4this')">
								<img src="images/svg/heavy/green/list.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;部门管理
							</td>
						</tr>
					   	<tr>
							<td class="menu_not_selected" onclick="openInMainFrame(this,'<%=request.getContextPath()%>/AuthRole/Servlet?method=list4this')">
								<img src="images/svg/heavy/green/list.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;角色管理
							</td>
						</tr>
						<tr>
							<td class="menu_not_selected" onclick="openInMainFrame(this,'<%=request.getContextPath()%>/AuthFunction/Servlet?method=list4this')">
								<img src="images/svg/heavy/green/list.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;权限项管理
							</td>
						</tr>
						<tr>
							<td class="menu_not_selected" onclick="openInMainFrame(this,'<%=request.getContextPath()%>/AuthOffice/Servlet?method=list4this')">
								<img src="images/svg/heavy/green/list.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;职务管理
							</td>
						</tr>
						
						<tr>
							<td class="menu_not_selected" onclick="openInMainFrame(this,'<%=request.getContextPath()%>/AuthLogLogin/Servlet?method=list4this')">
								<img src="images/svg/heavy/green/list.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;登录日志
							</td>
						</tr>
						
						
						<tr>
							<td class="menu_not_selected" onclick="openInMainFrame(this,'<%=request.getContextPath()%>/Dictionary/Servlet?method=list4this')">
								<img src="images/svg/heavy/green/list.png" width="18" height="18" align="middle" />
								&nbsp;&nbsp;字典管理
							</td>
						</tr>
						-->
					</table>
				</td>
			</tr>
			<%
				}
			%>
		</table>
	</body>