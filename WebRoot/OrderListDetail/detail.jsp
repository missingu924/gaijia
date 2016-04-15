<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.ruihua.obj.OrderListDetailObj"%> 
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
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />		<title><%=domainInstance.getCnName()%>详情</title> 
		<link href="../css/global.css" rel="stylesheet" type="text/css" /> 
		<link href="../css/table.css" rel="stylesheet" type="text/css" /> 
		<script src="../js/jquery-2.0.3.min.js"></script> 
		<script src="../js/utils.js"></script> 
	</head> 
	<body> 
		<!-- 表格标题 --> 
		<table width="600" align="center" class="title_table"> 
			<tr> 
				<td> 
					<img src="../images/svg/heavy/green/list.png" width="18" height="18" align="absmiddle"> 
					&nbsp;&nbsp;<%=domainInstance.getCnName()%>信息 
				</td> 
			</tr> 
		</table> 
		<!-- 详细信息 --> 
		<table width="600" align="center" class="detail_table detail_table-bordered detail_table-striped"> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("id") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getId())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dingdan_bianhao") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_bianhao())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("biaoti") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBiaoti())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("jiage") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getJiage())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("goumai_shuliang") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getGoumai_shuliang())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("waibuxitong_bianhao") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getWaibuxitong_bianhao())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("shangpin_shuxing") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getShangpin_shuxing())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("taocan_xinxi") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getTaocan_xinxi())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("beizhu") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBeizhu())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dingdan_zhuangtai") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_zhuangtai())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("shangjia_bianma") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getShangjia_bianma())%></td> 
			</tr> 
		</table> 
		 
		<!-- 工具栏 --> 
		<jsp:include page="../ToolBar/detail_toolbar.jsp"/> 
	</body> 
</html> 
