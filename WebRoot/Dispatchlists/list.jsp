<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 --> 
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.common.obj.PaginationObj"%> 
<%@page import="com.wuyg.dictionary.DictionaryUtil"%> 
<%@page import="com.u8.obj.DispatchlistsObj"%> 
<!-- 基本信息 --> 
<% 
	// 当前上下文路径 
	String contextPath = request.getContextPath(); 
  
	// 该功能对象实例 
	DispatchlistsObj domainInstance = (DispatchlistsObj) request.getAttribute("domainInstance"); 
	// 该功能路径 
	String basePath = domainInstance.getBasePath(); 
%> 
<html> 
	<head> 
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />		<title><%=domainInstance.getCnName() %>列表</title> 
		<link href="../css/global.css" rel="stylesheet" type="text/css"> 
		<link href="../css/table.css" rel="stylesheet" type="text/css"> 
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
						<%=domainInstance.getPropertyCnName("cwhcode") %> 
						<%=DictionaryUtil.getInputHtml("U8仓库字典", "cwhcode", StringUtil.getNotEmptyStr(domainInstance.getCwhcode(), ""))%> 
						&nbsp;  
						<%=domainInstance.getPropertyCnName("cinvcode") %> 
						<%=DictionaryUtil.getInputHtml("U8存货字典", "cinvcode", StringUtil.getNotEmptyStr(domainInstance.getCinvcode(), ""), "U8仓库字典", "cwhcode")%> 
						<input name="searchButton" type="button" class="button button_search" value="查询" onClick="toPage(1)"> 
					
					</td> 
				</tr> 
			</table> 
 
			<!-- 查询结果 --> 
			<% 
				PaginationObj pagination = null; 
				List list = new ArrayList(); 
 
				Object paginationObj = request.getAttribute("domainPagination"); 
				if (paginationObj != null) 
				{ 
					pagination = (PaginationObj) paginationObj; 
					list = (List) pagination.getDataList(); 
				} 
				if (paginationObj == null) 
				{ 
					out.print("没有符合条件的数据，请重新设置条件再查询。"); 
				} else 
				{ 
			%> 
			<table class="table table-bordered table-striped" align="center" width="98%"> 
				<thead> 
					<tr> 
						<th><%=domainInstance.getPropertyCnName("autoid") %></th> 
						<th><%=domainInstance.getPropertyCnName("dlid") %></th> 
						<th><%=domainInstance.getPropertyCnName("cwhcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("iquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("isettlequantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("inum") %></th> 
						<th><%=domainInstance.getPropertyCnName("itaxunitprice") %></th> 
						<th><%=domainInstance.getPropertyCnName("imoney") %></th> 
						<th><%=domainInstance.getPropertyCnName("itax") %></th> 
						<th><%=domainInstance.getPropertyCnName("isum") %></th> 
					</tr> 
				</thead> 
				<% 
					for (int i = 0; i < list.size(); i++) 
						{ 
							DispatchlistsObj o = (DispatchlistsObj) list.get(i); 
				%> 
				<tr> 
					<td> 
						<a href="#" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=detail4this&<%=o.findKeyColumnName()%>=<%=o.getKeyValue()%>')"> <%=StringUtil.getNotEmptyStr(o.getKeyValue())%> </a> 
					</td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDlid())%></td> 
					<td><%=DictionaryUtil.getDictValueByDictKey("U8仓库字典",o.getCwhcode())%></td>  
					<td><%=DictionaryUtil.getDictValueByDictKey("U8存货字典",o.getCinvcode())%></td>  
					<td><%=StringUtil.getNotEmptyStr(o.getIquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIsettlequantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getInum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getItaxunitprice())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getImoney())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getItax())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIsum())%></td> 
				</tr> 
				<% 
					} 
				%> 
			</table> 
 
			<!-- 翻页操作栏 --> 
			<jsp:include page="../ToolBar/pagination_toolbar.jsp"> 
				<jsp:param name="basePath" value="<%=basePath%>"/> 
			</jsp:include> 
 
			<% 
				} 
			%> 
		</form>  
 
	</body> 
</html> 
