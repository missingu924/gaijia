<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 --> 
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.common.obj.PaginationObj"%> 
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.ruihua.obj.OrderListDetailObj"%> 
<!-- 基本信息 --> 
<% 
	// 当前上下文路径 
	String contextPath = request.getContextPath(); 
 
	// 该功能对象实例 
	OrderListDetailObj domainInstance = (OrderListDetailObj) request.getAttribute("domainInstance"); 
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
						<%=domainInstance.getPropertyCnName("dingdan_bianhao") %> 
						<input name="dingdan_bianhao" type="text" id="dingdan_bianhao" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_bianhao())%>" size="20" > 
						&nbsp;  
						<%=domainInstance.getPropertyCnName("biaoti") %> 
						<input name="biaoti" type="text" id="biaoti" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBiaoti())%>" size="20" > 
						&nbsp;  
						<input name="searchButton" type="button" class="button button_search" value="查询" onClick="toPage(1)"> 
					</td> 
					<td align="right"> 
						<input name="addButton" type="button" class="button button_add" value="增加" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=preModify4this')"> 
						<input name="uploadButton" type="button" class="button button_upload" value="导入" onClick="openBigModalDialog('<%=contextPath%>/ExcelParser/uploadFile.jsp?basedbobj_class=<%=domainInstance.getClass().getCanonicalName()%>')">
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
						<th><%=domainInstance.getPropertyCnName("id") %></th> 
						<th><%=domainInstance.getPropertyCnName("dingdan_bianhao") %></th> 
						<th><%=domainInstance.getPropertyCnName("biaoti") %></th> 
						<th><%=domainInstance.getPropertyCnName("jiage") %></th> 
						<th><%=domainInstance.getPropertyCnName("goumai_shuliang") %></th> 
						<th><%=domainInstance.getPropertyCnName("waibuxitong_bianhao") %></th> 
						<th><%=domainInstance.getPropertyCnName("shangpin_shuxing") %></th> 
						<th><%=domainInstance.getPropertyCnName("taocan_xinxi") %></th> 
						<th><%=domainInstance.getPropertyCnName("beizhu") %></th> 
						<th><%=domainInstance.getPropertyCnName("dingdan_zhuangtai") %></th> 
						<th><%=domainInstance.getPropertyCnName("shangjia_bianma") %></th> 
					</tr> 
				</thead> 
				<% 
					for (int i = 0; i < list.size(); i++) 
						{ 
							OrderListDetailObj o = (OrderListDetailObj) list.get(i); 
				%> 
				<tr> 
					<td> 
						<a href="#" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=detail4this&<%=o.findKeyColumnName()%>=<%=o.getKeyValue()%>')"> <%=StringUtil.getNotEmptyStr(o.getKeyValue())%> </a> 
					</td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDingdan_bianhao())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBiaoti())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getJiage())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getGoumai_shuliang())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getWaibuxitong_bianhao())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getShangpin_shuxing())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getTaocan_xinxi())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBeizhu())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDingdan_zhuangtai())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getShangjia_bianma())%></td> 
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
