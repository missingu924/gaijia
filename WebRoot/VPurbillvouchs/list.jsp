<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%>
<!-- 引入类 -->
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wuyg.common.util.StringUtil"%>
<%@page import="com.wuyg.common.obj.PaginationObj"%>
<%@page import="com.wuyg.dictionary.DictionaryUtil"%>
<%@page import="com.u8.obj.VPurbillvouchsObj"%>
<!-- 基本信息 -->
<%
	// 当前上下文路径 
	String contextPath = request.getContextPath();

	// 该功能对象实例 
	VPurbillvouchsObj domainInstance = new VPurbillvouchsObj();
	Object domainObj = request.getAttribute("domainInstance");
	if (domainObj != null)
	{
		domainInstance = (VPurbillvouchsObj) domainObj;
	}
	// 该功能路径 
	String basePath = domainInstance.getBasePath();

	// 查询结果 
	PaginationObj pagination = null;
	List list = new ArrayList();

	Object paginationObj = request.getAttribute("domainPagination");
	if (paginationObj != null)
	{
		pagination = (PaginationObj) paginationObj;
		list = (List) pagination.getDataList();
	}

	// 是否是核查结果
	boolean checked = "true".equalsIgnoreCase(request.getAttribute("checked") + "");
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
		<script type="text/javascript">
		function checkPrice()
		{
			if(!checkNull("purcharsePriceMainId","<%=domainInstance.getPropertyCnName("purcharsePriceMainId")%>")) return false;
			
			$("#pageForm").attr("action","<%=request.getContextPath()%>/<%=basePath%>/Servlet?method=checkPrice&pageCount=9999");
			$("#pageForm").submit();
		}
		
		function searchPbvs()
		{
			if(!checkNull("cpbvcode","<%=domainInstance.getPropertyCnName("cpbvcode")%>")) return false;
			
			toPage(1);
		}
		</script>
	</head>
	<body>
		<form name="pageForm" id="pageForm" method="post" action="<%=request.getContextPath()%>/<%=basePath%>/Servlet?method=list4this&pageCount=9999">

			<!-- 查询条件 -->
			<table class="search_table" align="center" width="98%">
				<tr>
					<td align="left">
						<%=domainInstance.getPropertyCnName("cpbvcode")%>
						<input name="cpbvcode" type="text" id="cpbvcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCpbvcode())%>" size="20">
						&nbsp;
						<input name="searchButton" type="button" class="button button_search" value="查询" onClick="searchPbvs()">
					</td>
					<%
						if (list.size() > 0)
						{
					%>
					<td align="right">
						选择采购限价表
						<%=DictionaryUtil.getSelectHtml("采购价格字典", "purcharsePriceMainId", StringUtil.getNotEmptyStr(domainInstance.getPurcharsePriceMainId(), ""))%>
						&nbsp;
						<input name="checkButton" type="button" class="button button_sync" value="核查" onClick="checkPrice()">
					</td>
					<%
						}
					%>
				</tr>
			</table>
			
			<div id="printDiv">

			<table class="table table-bordered table-striped" align="center" width="98%">
				<thead>
					<tr>
						<th>
							序号
						</th>
						<th><%=domainInstance.getPropertyCnName("cpbvcode")%></th>
						<th><%=domainInstance.getPropertyCnName("cinvname")%></th>
						<th><%=domainInstance.getPropertyCnName("icost")%></th>
						<th><%=domainInstance.getPropertyCnName("ipbvquantity")%></th>
						<th><%=domainInstance.getPropertyCnName("isum")%></th>
						<%
							if (checked)
							{
						%>
						<th>
							<font color="blue"><%=domainInstance.getPropertyCnName("priceLimit")%></font>
						</th>
						<th>
							<font color="blue"><%=domainInstance.getPropertyCnName("checkResult")%></font>
						</th>
						<%
							}
						%>
					</tr>
				</thead>
				<%
					for (int i = 0; i < list.size(); i++)
					{
						VPurbillvouchsObj o = (VPurbillvouchsObj) list.get(i);
						String fontColor = "black";
						if (o.CHECK_RESULT_OVER.equalsIgnoreCase(o.getCheckResult()))
						{
							fontColor = "red";
						} else if (o.CHECK_RESULT_NOT_OVER.equalsIgnoreCase(o.getCheckResult()))
						{
							fontColor = "green";
						}
				%>
				<tr>
					<td>
						<font color="<%=fontColor%>"><%=i + 1%></font>
					</td>
					<td>
						<font color="<%=fontColor%>"><%=StringUtil.getNotEmptyStr(o.getCpbvcode())%></font>
					</td>
					<td>
						<font color="<%=fontColor%>"><%=StringUtil.getNotEmptyStr(o.getCinvname())%></font>
					</td>
					<td>
						<font color="<%=fontColor%>"><%=StringUtil.formatDouble(o.getIcost(), 2)%></font>
					</td>
					<td>
						<font color="<%=fontColor%>"><%=StringUtil.formatDouble(o.getIpbvquantity(), 0)%></font>
					</td>
					<td>
						<font color="<%=fontColor%>"><%=StringUtil.formatDouble(o.getIsum(), 2)%></font>
					</td>
					<%
						if (checked)
							{
					%>
					<td>
						<font color="<%=fontColor%>"><%=o.getPriceLimit() == null ? "" : StringUtil.formatDouble(o.getPriceLimit(), 2)%></font>
					</td>
					<td>
						<font color="<%=fontColor%>"><%=StringUtil.getNotEmptyStr(o.getCheckResult())%></font>
					</td>
					<%
						}
					%>
				</tr>
				<%
					}
				%>
			</table>
			
			</div>

			<!-- 工具栏 -->
			<jsp:include page="toolbar.jsp">
			<jsp:param name="basePath" value="<%=basePath %>"/>
			</jsp:include>

		</form>

	</body>
</html>
