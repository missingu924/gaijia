<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 --> 
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.common.obj.PaginationObj"%> 
<%@page import="com.wuyg.dictionary.DictionaryUtil"%> 
<%@page import="com.u8.obj.DispatchlistObj"%>
<%@page import="com.wuyg.common.util.TimeUtil"%> 
<!-- 基本信息 --> 
<% 
	// 当前上下文路径 
	String contextPath = request.getContextPath(); 
 
	// 该功能对象实例 
	DispatchlistObj domainInstance = (DispatchlistObj) request.getAttribute("domainInstance"); 
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
				  <%=domainInstance.getPropertyCnName("ddate") %>&nbsp;
				<input name="ddate_start" type="text" id="ddate_start" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDdate_start())%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})">
&nbsp;&nbsp;&nbsp;&nbsp;至&nbsp;&nbsp;&nbsp;&nbsp;
				<input name="ddate_end" type="text" id="ddate_end" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDdate_end())%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})"></td> 
					<td rowspan="2" align="right"><input name="searchButton" type="button" class="button button_search" value="查询" onClick="toPage(1)"></td>
				</tr>
				<tr>
				  <td align="left">
				  <%=domainInstance.getPropertyCnName("cdlcode") %>&nbsp;
				  <input name="cdlcode" type="text" id="cdlcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdlcode())%>" size="20">
				  &nbsp;&nbsp;
				  <%=domainInstance.getPropertyCnName("cdepcode") %>&nbsp;
				  <%=DictionaryUtil.getInputHtml("U8部门字典", "cdepcode", StringUtil.getNotEmptyStr(domainInstance.getCdepcode(), ""))%>
				  <%=domainInstance.getPropertyCnName("cpersoncode") %>&nbsp;
				  <%=DictionaryUtil.getInputHtml("U8人员字典", "cpersoncode", StringUtil.getNotEmptyStr(domainInstance.getCpersoncode(), ""),"U8部门字典","cdepcode")%>
				  <%=domainInstance.getPropertyCnName("ccuscode") %>&nbsp;
				  <%=DictionaryUtil.getInputHtml("U8客户字典", "ccuscode", StringUtil.getNotEmptyStr(domainInstance.getCcuscode(), ""),"U8人员字典","cpersoncode")%></td>
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
						<th><%=domainInstance.getPropertyCnName("cdlcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ddate") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdepcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cpersoncode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuscode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cexch_name") %></th> 
						<th><%=domainInstance.getPropertyCnName("iexchrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("itaxrate") %></th> 
						<th>查看修改记录</th>
					</tr> 
				</thead> 
				<% 
					for (int i = 0; i < list.size(); i++) 
						{ 
							DispatchlistObj o = (DispatchlistObj) list.get(i); 
							
							boolean priceChanged = o.isPriceChanged();
				%> 
				<tr> 
					<td>
						<a href="#" onClick="winOpen('<%=contextPath%>/<%=basePath%>/Servlet?method=preModify4this&<%=o.findKeyColumnName()%>=<%=o.getKeyValue()%>')">
						<%=StringUtil.getNotEmptyStr(o.getCdlcode())%>
						</a>
					</td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDdateShow())%></td> 
					<td><%=DictionaryUtil.getDictValueByDictKey("U8部门字典",o.getCdepcode())%></td>  
					<td><%=DictionaryUtil.getDictValueByDictKey("U8人员字典",o.getCpersoncode())%></td>  
					<td><%=DictionaryUtil.getDictValueByDictKey("U8客户字典",o.getCcuscode())%></td>  
					<td><%=StringUtil.getNotEmptyStr(o.getCexch_name())%></td> 
					<td><%=StringUtil.getNotEmptyStr(StringUtil.formatDouble(o.getIexchrate(),2))%></td> 
					<td><%=StringUtil.getNotEmptyStr(StringUtil.formatDouble(o.getItaxrate(),2))%></td> 
					<td style="text-align:center">
					<%if(priceChanged){ %>
							<a href="#" onClick="openBigModalDialog('<%=contextPath%>/DispatchPriceChangeLog/Servlet?method=list4this&forDetail=false&dlid=<%=o.getKeyValue()%>')">查看修改记录</a>
						<%} else { %>
						<font color="#999999">未修改</font>
						<%} %>
					</td>
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
