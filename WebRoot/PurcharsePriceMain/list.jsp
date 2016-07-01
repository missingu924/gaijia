<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%>
<!-- 引入类 -->
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wuyg.common.util.StringUtil"%>
<%@page import="com.wuyg.common.obj.PaginationObj"%>
<%@page import="com.wuyg.dictionary.DictionaryUtil"%>
<%@page import="com.purcharse.obj.PurcharsePriceMainObj"%>
<%@page import="com.wuyg.common.util.TimeUtil"%>
<%@page import="com.wuyg.auth.obj.AuthUserObj"%>
<%@page import="com.wuyg.common.util.SystemConstant"%>
<%@page import="com.purcharse.PurcharseConstant"%>
<!-- 基本信息 -->
<%
	// 当前上下文路径 
	String contextPath = request.getContextPath();

	// 该功能对象实例 
	PurcharsePriceMainObj domainInstance = (PurcharsePriceMainObj) request.getAttribute("domainInstance");
	// 该功能路径 
	String basePath = domainInstance.getBasePath();

	// 当前用户
	AuthUserObj currentUser = (AuthUserObj) request.getSession().getAttribute(SystemConstant.AUTH_USER_INFO);

	// 查询结果 
	PaginationObj pagination = null;
	List list = new ArrayList();

	Object paginationObj = request.getAttribute("domainPagination");
	if (paginationObj != null)
	{
		pagination = (PaginationObj) paginationObj;
		list = (List) pagination.getDataList();
	}
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />
		<title><%=domainInstance.getCnName()%>列表</title>
		<link href="../css/global.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../js/jquery-2.0.3.min.js"></script>
		<script type="text/javascript" src="../js/utils.js"></script>
		<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
	</head>
	<body>
		<form name="pageForm" id="pageForm" method="post" action="<%=request.getContextPath()%>/<%=basePath%>/Servlet?method=list4this">

			<!-- 查询条件 -->
			<table class="search_table" align="center" width="98%">
				<tr>
					<td align="left">
						<%=domainInstance.getPropertyCnName("name")%>
						<input name="name" type="text" id="name" value="<%=StringUtil.getNotEmptyStr(domainInstance.getName())%>" size="20">
						&nbsp;
						<input name="searchButton" type="button" class="button button_search" value="查询" onClick="toPage(1)">
					</td>
					<td align="right">
						<%
							if (PurcharseConstant.AUTH_ROLE_CGZC.equalsIgnoreCase(currentUser.getRolelevel()))
							{
						%>
						<input name="addButton" type="button" class="button button_add" value="增加" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=preModify4this')">
						<%
							}
						%>
					</td>
				</tr>
			</table>

			<table class="table table-bordered table-striped" align="center" width="98%">
				<thead>
					<tr>
						<th><%=domainInstance.getPropertyCnName("name")%></th>
						<th><%=domainInstance.getPropertyCnName("zuocheng_status")%></th>
						<th><%=domainInstance.getPropertyCnName("queren_status")%></th>
						<th><%=domainInstance.getPropertyCnName("shenhe_status")%></th>
						<th><%=domainInstance.getPropertyCnName("pizhun_status")%></th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<%
					for (int i = 0; i < list.size(); i++)
					{
						PurcharsePriceMainObj o = (PurcharsePriceMainObj) list.get(i);
				%>
				<tr>
					<td>
						<a href="#" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=detail4this&<%=o.findKeyColumnName()%>=<%=o.getKeyValue()%>')"> <%=StringUtil.getNotEmptyStr(o.getName())%> </a>
					</td>
					<td><%=o.getZuocheng_status4show()%></td>
					<td><%=o.getQueren_status4show()%></td>
					<td><%=o.getShenhe_status4show()%></td>
					<td><%=o.getPizhun_status4show()%></td>
					<td width="80" style="text-align: center">
						<%
							if (PurcharseConstant.AUTH_ROLE_CGZC.equalsIgnoreCase(currentUser.getRolelevel()))
								{
						%>
						<input type="button" class="button button_delete" title="删除" onClick="javascript: 
								$('#pageForm').attr('action','<%=contextPath%>/<%=basePath%>/Servlet?method=delete4this&<%=o.findKeyColumnName()%>_4del=<%=o.getKeyValue()%>'); 
								$('#pageForm').submit(); 
								" />
						<%
							}
						%>
					</td>
				</tr>
				<%
					}
				%>
			</table>

			<!-- 翻页操作栏 -->
			<jsp:include page="../ToolBar/pagination_toolbar.jsp">
				<jsp:param name="basePath" value="<%=basePath%>" />
			</jsp:include>

		</form>

	</body>
</html>
