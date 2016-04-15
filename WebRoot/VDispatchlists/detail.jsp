<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.dictionary.DictionaryUtil"%> 
<%@page import="com.u8.obj.VDispatchlistsObj"%> 
<% 
	// 当前上下文路径  
	String contextPath = request.getContextPath();  
  
	// 该功能对象实例  
	VDispatchlistsObj domainInstance = (VDispatchlistsObj) request.getAttribute("domainInstance");  
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
					<%=domainInstance.getPropertyCnName("cdlcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdlcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ddate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDdate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdepcode") %>: 
				</td> 
				<td><%=DictionaryUtil.getDictValueByDictKey("U8部门字典",domainInstance.getCdepcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cpersoncode") %>: 
				</td> 
				<td><%=DictionaryUtil.getDictValueByDictKey("U8人员字典",domainInstance.getCpersoncode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuscode") %>: 
				</td> 
				<td><%=DictionaryUtil.getDictValueByDictKey("U8客户字典",domainInstance.getCcuscode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cexch_name") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCexch_name())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iexchrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIexchrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("itaxrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getItaxrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cwhcode") %>: 
				</td> 
				<td><%=DictionaryUtil.getDictValueByDictKey("U8仓库字典",domainInstance.getCwhcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvcode") %>: 
				</td> 
				<td><%=DictionaryUtil.getDictValueByDictKey("U8存货字典",domainInstance.getCinvcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("isettlequantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIsettlequantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("itaxunitprice") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getItaxunitprice())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("isum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIsum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("inatunitprice") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getInatunitprice())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("inatsum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getInatsum())%></td> 
			</tr> 
		</table> 
		 
		<!-- 工具栏 --> 
		<jsp:include page="../ToolBar/detail_toolbar.jsp"/> 
	</body> 
</html> 
