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
<%@page import="com.wuyg.common.util.TimeUtil"%>
<%@page import="com.ruihua.obj.OrderListDetailObj"%>
<!-- 基本信息 -->
<%
	// 上下文路径 
	String contextPath = request.getContextPath();

	// 对象实例 
	OrderListDetailObj domainInstance = new OrderListDetailObj();
	// 该功能基本路径 
	String basePath = domainInstance.getBasePath();

%>
<html>
	<head>
		<base target="_self" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />
		<title>淘宝订单详情导入</title>
		<link href="../css/global.css" rel="stylesheet" type="text/css">
		<link href="../css/table.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../js/jquery-2.0.3.min.js"></script>
		<script type="text/javascript" src="../js/utils.js"></script>
		<script type="text/javascript" src="../js/jquery.cookie.js"></script>
		<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
	</head>

	<body>
		<form name="uploadForm" id="uploadForm" action="<%=contextPath%>/<%=basePath%>/Servlet?method=uploadFile" enctype="multipart/form-data" method="post">

			<!-- 表格标题 -->
			<table width="700" align="center" class="title_table">
				<tr>
					<td>
						<img src="../images/excel.png" width="18" height="18" align="absmiddle">
						&nbsp;&nbsp;淘宝订单详情导入
					</td>
				</tr>
			</table>

			<!-- 详细信息 -->
			<table width="700" align="center" class="detail_table detail_table-bordered detail_table-striped">
				<tr>
					<td style="width: 200px; height:100px; text-align: right">
						请选择要导入的Excel数据文件:
						<br>
						(支持Office2007及以下版本)
					</td>
					<td>
						<input id="file_upload" name="file_upload" type="file" size="40" />
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" class="button button_add" value="预览" onClick="preview()"/>
					</td>
				</tr>
			</table>
		</form>
		<br>
		<form id="downloadForm" action="<%=contextPath%>/<%=basePath%>/Servlet?method=downloadTemplete" method="post">
			<table align="center"  width="700">
			<tr>
			<td align="left" style="color:#999999">
			1、推荐：直接从淘宝导出csv文件，用excel打开并另存为xls格式，之后进行导入。<font color="#ff6600">(注意表头要与模板一致)</font>
			<br><br>
			2、也可以<a href="#" onclick="$('#downloadForm').submit()">下载导入模板</a>，将要导入的数据按模板要求进行整理，之后进行导入。
			</td></tr>
			</table>
		</form>
		
		<script type="text/javascript">
		
		function preview() 
		{	 
			// 做必要的检查 
			if(!checkNull("file_upload","要导入的文件")) return false; 
			
			$("#uploadForm").submit();
		} 
		</script>
	</body>
</html>
