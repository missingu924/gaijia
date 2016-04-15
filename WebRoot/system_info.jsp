<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%>
<%@page import="com.wuyg.common.licence.LicenceUtil"%>
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
<link href="css/global.css" rel="stylesheet" type="text/css">
<title>系统信息</title>
</head>
<body>
<table width="600" align="center" class="title_table"> 
			<tr> 
				<td> 
					<img src="images/svg/light/green/16/comment.png" align="absmiddle"> 
					系统信息 
				</td> 
			</tr> 
		</table> 
<table width="600" border="0" align="center" cellpadding="0" cellspacing="0" class="detail_table detail_table-bordered detail_table-striped">
  <tr>
    <td>开发语言:</td>
    <td>java+html+jquery+css3 </td>
  </tr>
  <tr>
    <td>数据库版本:</td>
    <td>SqlServer2008 </td>
  </tr>
  <tr>
    <td>适用系统:</td>
    <td>用友U8系统</td>
  </tr>
  <tr>
    <td>开发厂商:</td>
    <td><%=LicenceUtil.getLicencedMachine().getSupplier() %></td>
  </tr>
   <tr>
    <td>当前版本:</td>
    <td><%=LicenceUtil.getLicencedMachine().getSystemVersion() %></td>
  </tr>
  <tr>
    <td>系统简介:</td>
    <td>该系统适用于<%=LicenceUtil.getLicencedMachine().getCustomerName() %>，主要用来修改U8发货单价格
    <br>1、通过"账套管理"设置U8的服务器和账套信息
    <br>2、通过"发货单查询"过滤出修改要修改价格的发货单
    <br>3、通过"修改原币含税单价"将发货单的原币、本币相关价格统一修改，同时系统会记录修改日志
    </td>
  </tr>
</table>
</body>
</html>

