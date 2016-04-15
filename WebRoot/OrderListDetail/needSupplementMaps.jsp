<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%>
<!-- 引入类 -->
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wuyg.common.util.StringUtil"%>
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%>
<%@page import="com.hz.dict.service.DictionaryService"%>
<%@page import="com.hz.dict.service.IDictionaryService"%>
<%@page import="com.wuyg.common.dao.BaseDbObj"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.ruihua.obj.OrderListDetailObj"%>
<%@page import="com.ruihua.obj.TaobaoProductMapObj"%>
<!-- 基本信息 -->
<%
	// 上下文路径 
	String contextPath = request.getContextPath();

	// 对象实例 
	OrderListDetailObj domainInstance = new OrderListDetailObj();
	// 该功能基本路径 
	String basePath = domainInstance.getBasePath();

	
	Object tempObj = request.getSession().getAttribute("detailList4somainNotInDb");
	List<OrderListDetailObj> detailList4somainNotInDb = new ArrayList<OrderListDetailObj>();
	if(tempObj!=null)
	{
		detailList4somainNotInDb = (ArrayList<OrderListDetailObj>)tempObj;
	}
	
	tempObj = request.getSession().getAttribute("detailList4tpmNotInDb");
	List<OrderListDetailObj> detailList4tpmNotInDb = new ArrayList<OrderListDetailObj>();
	if(tempObj!=null)
	{
		detailList4tpmNotInDb = (ArrayList<OrderListDetailObj>)tempObj;
	}
	
	tempObj = request.getSession().getAttribute("tpmListNotInDb");
	List<TaobaoProductMapObj> tpmListNotInDb = new ArrayList<TaobaoProductMapObj>();
	if(tempObj!=null)
	{
		tpmListNotInDb = (ArrayList<TaobaoProductMapObj>)tempObj;
	}
	
%>
<html>
	<head>
		<base target="_self" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />
		<title><%=domainInstance.getCnName()%></title>
		<link href="../css/global.css" rel="stylesheet" type="text/css">
		<link href="../css/table.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../js/jquery-2.0.3.min.js"></script>
		<script type="text/javascript" src="../js/utils.js"></script>
		<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
	</head>
	<body>
	<!-- 表格标题 -->
			<table width="700" align="center" class="title_table">
				<tr>
					<td>
						<img src="../images/excel.png" width="18" height="18" align="absmiddle">
						&nbsp;&nbsp;淘宝订单详情导入，发现有以下问题，请处理后再重新导入。
					</td>
				</tr>
			</table>
			
		<!-- 表格标题 --> 
		<%if(detailList4somainNotInDb.size()>0){ %>
		<form id="downloadForm" action="<%=contextPath%>/<%=basePath%>/Servlet?method=downloadDetailList4somainNotInDb" method="post">
		<table width="700" align="center" class="alert_table"> 
			<tr> 
				<td> 
					<img src="../images/svg/light/orange/32/alert.png" width="18" height="18" align="absmiddle"> 
					&nbsp;&nbsp;<span style="font-size:24px;font-weight:bold"><%=detailList4somainNotInDb.size() %></span>条订单详情因“关联的订单主表”在数据库中不存在无法导入，请先导入订单主表数据。<a href="#" onclick="$('#downloadForm').submit()">点击下载无法导入的数据</a>
				</td> 
			</tr> 
		</table> 
		</form>
		<%} %>
		
		<%if(detailList4tpmNotInDb.size()>0){ %>
		<table width="700" align="center" class="alert_table"> 
			<tr> 
				<td> 
					<img src="../images/svg/light/orange/32/alert.png" width="18" height="18" align="absmiddle"> 
					&nbsp;&nbsp;<span style="font-size:24px;font-weight:bold"><%=detailList4tpmNotInDb.size() %></span>条订单详情因为没有“淘宝商品与U8存货档案对照关系”无法导入，请<a href="#" onclick=winOpen("<%=contextPath%>/TaobaoProductMap/Servlet?method=list4this&list4notOk=true")>点击这里</a>补充
				</td> 
			</tr> 
		</table> 
		<%} %>
		

	</body>
</html>
