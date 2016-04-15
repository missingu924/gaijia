<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 --> 
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.common.obj.PaginationObj"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.dispatch.obj.DispatchPriceChangeLogObj"%>
<%@page import="com.wuyg.dictionary.DictionaryUtil"%> 
<!-- 基本信息 --> 
<% 
	// 当前上下文路径 
	String contextPath = request.getContextPath(); 
 
	// 该功能对象实例 
	DispatchPriceChangeLogObj domainInstance = (DispatchPriceChangeLogObj) request.getAttribute("domainInstance"); 
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
						<%=domainInstance.getPropertyCnName("autoid") %> 
						<input name="autoid" type="text" id="autoid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getAutoid())%>" size="20" > 
						&nbsp;  
						<%=domainInstance.getPropertyCnName("dlid") %> 
						<input name="dlid" type="text" id="dlid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDlid())%>" size="20" > 
						&nbsp; <br> 
						<%=domainInstance.getPropertyCnName("cwhcode") %> 
						<%=DictionaryUtil.getInputHtml("U8仓库字典", "cwhcode", StringUtil.getNotEmptyStr(domainInstance.getCwhcode(), ""))%> 
						&nbsp;  
						<%=domainInstance.getPropertyCnName("cinvcode") %> 
						<%=DictionaryUtil.getInputHtml("U8存货字典", "cinvcode", StringUtil.getNotEmptyStr(domainInstance.getCinvcode(), ""))%> 
						&nbsp; <br>
						<%=domainInstance.getPropertyCnName("cdepcode") %> 
						<%=DictionaryUtil.getInputHtml("U8部门字典", "cdepcode", StringUtil.getNotEmptyStr(domainInstance.getCdepcode(), ""))%> 
						&nbsp;  
						<%=domainInstance.getPropertyCnName("ccuscode") %> 
						<%=DictionaryUtil.getInputHtml("U8客户字典","ccuscode",StringUtil.getNotEmptyStr(domainInstance.getCcuscode()))%> 
						&nbsp;
						<%=domainInstance.getPropertyCnName("operate_user_name") %> 
						<input name="operate_user_name" type="text" id="operate_user_name" value="<%=StringUtil.getNotEmptyStr(domainInstance.getOperate_user_name())%>" size="20" > 
						&nbsp;  
						<%=domainInstance.getPropertyCnName("operate_time") %> 
						<input name="operate_time" type="text" id="operate_time" value="<%=StringUtil.getNotEmptyStr(domainInstance.getOperate_time())%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})"> 
					</td> 
					<td align="right"> 
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
						<th><%=domainInstance.getPropertyCnName("id") %></th> 
						<th><%=domainInstance.getPropertyCnName("autoid") %></th> 
						<th><%=domainInstance.getPropertyCnName("dlid") %></th> 
						<th><%=domainInstance.getPropertyCnName("cwhcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdepcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuscode") %></th> 
						<th><%=domainInstance.getPropertyCnName("itaxprice_before_change") %></th> 
						<th><%=domainInstance.getPropertyCnName("itaxprice_after_change") %></th> 
						<th><%=domainInstance.getPropertyCnName("operate_user_account") %></th> 
						<th><%=domainInstance.getPropertyCnName("operate_user_name") %></th> 
						<th><%=domainInstance.getPropertyCnName("operate_time") %></th> 
					</tr> 
				</thead> 
				<% 
					for (int i = 0; i < list.size(); i++) 
						{ 
							DispatchPriceChangeLogObj o = (DispatchPriceChangeLogObj) list.get(i); 
				%> 
				<tr> 
					<td> 
						<a href="#" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=detail4this&<%=o.findKeyColumnName()%>=<%=o.getKeyValue()%>')"> <%=StringUtil.getNotEmptyStr(o.getKeyValue())%> </a> 
					</td> 
					<td><%=StringUtil.getNotEmptyStr(o.getAutoid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDlid())%></td> 
					<td><%=new DictionaryService().getDictValueByDictKey("U8仓库字典",o.getCwhcode())%></td>  
					<td><%=new DictionaryService().getDictValueByDictKey("U8存货字典",o.getCinvcode())%></td>  
					<td><%=new DictionaryService().getDictValueByDictKey("U8部门字典",o.getCdepcode())%></td>  
					<td><%=new DictionaryService().getDictValueByDictKey("U8客户字典",o.getCcuscode())%></td>  
					<td><%=StringUtil.getNotEmptyStr(o.getItaxprice_before_change())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getItaxprice_after_change())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getOperate_user_account())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getOperate_user_name())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getOperate_time())%></td> 
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
