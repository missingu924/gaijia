<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.dictionary.DictionaryUtil"%> 
<%@page import="com.u8.obj.VPurbillvouchsObj"%> 
<% 
	// 当前上下文路径  
	String contextPath = request.getContextPath();  
  
	// 该功能对象实例  
	VPurbillvouchsObj domainInstance = (VPurbillvouchsObj) request.getAttribute("domainInstance");  
	// 该功能路径  
	String basePath = domainInstance.getBasePath();  
%> 
<html> 
	<head> 
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />		<title><%=domainInstance.getCnName()%>详情</title> 
		<link href="../css/global.css" rel="stylesheet" type="text/css" /> 
		<link href="../css/table.css" rel="stylesheet" type="text/css" /> 
		<script src="../js/jquery-2.0.3.min.js"></script> 
		<script src="../js/utils.js"></script> 
	</head> 
	<body> 
		<!-- 表格标题 --> 
		<table width="700" align="center" class="title_table"> 
			<tr> 
				<td> 
					<img src="../images/svg/heavy/green/list.png" width="18" height="18" align="absmiddle"> 
					&nbsp;&nbsp;<%=domainInstance.getCnName()%>信息 
				</td> 
			</tr> 
		</table> 
		<!-- 详细信息 --> 
		<table width="700" align="center" class="detail_table detail_table-bordered detail_table-striped"> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("pbvid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getPbvid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cpbvcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCpbvcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("id") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getId())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("icost") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIcost())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ipbvquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIpbvquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("isum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIsum())%></td> 
			</tr> 
		</table> 
		 
		<!-- 工具栏 --> 
		<jsp:include page="../ToolBar/detail_toolbar.jsp"/> 
	</body> 
</html> 
