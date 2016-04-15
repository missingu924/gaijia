<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%>
<!-- 引入类 -->
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wuyg.common.util.StringUtil"%>
<%@page import="com.wuyg.common.obj.PaginationObj"%>
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%>
<%@page import="com.hz.dict.service.DictionaryService"%>
<%@page import="com.ruihua.obj.OrderListObj"%>
<%@page import="com.ruihua.obj.OrderListDetailObj"%>
<!-- 基本信息 -->
<%
	// 当前上下文路径 
	String contextPath = request.getContextPath();

	// 该功能对象实例 
	OrderListDetailObj domainInstance = (OrderListDetailObj) request.getAttribute("domainInstance");
	// 该功能路径 
	String basePath = domainInstance.getBasePath();

	List excelDataList = new ArrayList();
	List notInDbList = new ArrayList();
	List inDbList = new ArrayList();

	Object tmp = request.getSession().getAttribute("excelDataList");
	if (tmp != null)
	{
		excelDataList = (List) tmp;
	}
	tmp = request.getSession().getAttribute("notInDbList");
	if (tmp != null)
	{
		notInDbList = (List) tmp;
	}
	tmp = request.getSession().getAttribute("inDbList");
	if (tmp != null)
	{
		inDbList = (List) tmp;
	}
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />
		<title><%=domainInstance.getCnName()%>列表</title>
		<link href="../css/global.css" rel="stylesheet" type="text/css">
		<link href="../css/table.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../js/jquery-2.0.3.min.js"></script>
		<script type="text/javascript" src="../js/utils.js"></script>
		<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
	</head>
	<body>
		<form name="pageForm" id="pageForm" method="post" action="<%=request.getContextPath()%>/<%=basePath%>/Servlet?method=import2u8">

			<!-- 查询条件 -->
			<table class="title_table" align="center" width="98%">
				<tr>
					<td align="left">
					本次共解析出<font color="blue"><%=excelDataList.size() %></font>条订单数据，其中数据库中已存在<font color="red"><%=inDbList.size() %></font>条，新增<font color="green"><%=notInDbList.size() %></font>条<%if(notInDbList.size()>0){ %>，新增的列表如下<%} %>
					</td>
					<td style="text-align:right">
					<%if(notInDbList.size()>0){ %>
					<input name="uploadButton" type="submit" class="button button_upload" value="导入">
					<%} %>
					</td>
				</tr>
			</table>

			<!-- 查询结果 -->
			<%if(notInDbList.size()>0){ %>
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
					for (int i = 0; i < notInDbList.size(); i++)
					{
						OrderListDetailObj o = (OrderListDetailObj) notInDbList.get(i);
				%>
				<tr>
					<td><%=i+1 %></td>
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
			<%} %>
		</form>

	</body>
</html>
