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
<%@page import="com.wuyg.common.util.TimeUtil"%> 
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
				 
			<!-- 表格标题 --> 
			<table width="98%" align="center" class="title_table"> 
				<tr> 
					<td> 
						<img src="../images/svg/heavy/green/list.png" width="18" height="18" align="absmiddle"> 
						&nbsp;&nbsp;<%=domainInstance.getCnName()%>信息 
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
						<th><%=domainInstance.getPropertyCnName("operate_time") %></th> 
						<th><%=domainInstance.getPropertyCnName("operate_user_name") %></th>
						<th><%=domainInstance.getPropertyCnName("cwhcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("iquantity") %></th>  
						<th>原币含税单价</th> 
						<th>原币价税合计</th>
						<th>本币价税合计</th> 
					</tr> 
				</thead> 
				<% 
					for (int i = 0; i < list.size(); i++) 
						{ 
							DispatchPriceChangeLogObj o = (DispatchPriceChangeLogObj) list.get(i); 
				%> 
				<tr>
					<td><%=StringUtil.getNotEmptyStr(TimeUtil.date2str(o.getOperate_time()))%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getOperate_user_name())%></td> 
					<td><%=DictionaryUtil.getDictValueByDictKey("U8仓库字典",o.getCwhcode())%></td>  
					<td><%=DictionaryUtil.getDictValueByDictKey("U8存货字典",o.getCinvcode())%></td>  
					<td style="text-align:right"><%=StringUtil.formatDouble(o.getIquantity(),0)%></td>
					<td style="text-align:right"><font color="#ff6600">改后 <%=StringUtil.formatDouble(o.getItaxprice_after_change(),2)%></font><br><font color="#999999">改前 <%=StringUtil.formatDouble(o.getItaxprice_before_change(),2)%></font></td> 
					<td style="text-align:right"><font color="#ff6600"><%=StringUtil.formatDouble(o.getIsum_after_change(),2)%></font><br><font color="#999999"><%=StringUtil.formatDouble(o.getIsum_before_change(),2)%></font></td> 
					<td style="text-align:right"><font color="#ff6600"><%=StringUtil.formatDouble(o.getInatsum_after_change(),2)%></font><br><font color="#999999"><%=StringUtil.formatDouble(o.getInatsum_before_change(),2)%></font></td>
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
