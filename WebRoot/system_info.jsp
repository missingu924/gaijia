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
<table width="700" align="center" class="title_table"> 
			<tr> 
				<td style="text-align:center"> 
					系统信息 
				</td> 
			</tr> 
		</table> 
<table width="700" border="0" align="center" cellpadding="0" cellspacing="0" class="detail_table detail_table-bordered detail_table-striped">
  <tr>
    <td>系统名称:</td>
    <td><%=LicenceUtil.getLicencedMachine().getName() %></td>
  </tr>
    <tr>
    <td>当前版本:</td>
    <td><%=LicenceUtil.getLicencedMachine().getSystemVersion() %></td>
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
    <td>开发语言:</td>
    <td>java+html+jquery+css3 </td>
  </tr>
  <tr>
    <td>数据库版本:</td>
    <td>SqlServer2008 </td>
  </tr>
  <tr>
    <td>系统简介:</td>
    <td>该系统适用于<%=LicenceUtil.getLicencedMachine().getCustomerName() %>，主要用来审核采购价格：
    <br>
    <br>1、<font color="blue">采购员(账号:cgy)</font>通过"采购价格管理"录入采购价格明细
    <br>2、<font color="blue">部长(账号:cgbz)、主管经理(账号:zgjl)、总经理(账号:zjl)</font>逐级审批采购价格明细
    <br>3、审核过程中可以逐级驳回
    <br>4、审批通过后<font color="blue">财务人员(账号:cwry)</font>通过"采购发票核查"功能，输入采购发票号查询出待核查的采购发票，选择降价明细表，即可进行核查
    <!-- 
    <br>
    <br><b>模块二：发货单价格修改，主要用来修改U8发货单价格</b>
    <br>1、通过"账套管理"设置U8的服务器和账套信息
    <br>2、通过"发货单价格修改"过滤出修改要修改价格的发货单
    <br>3、通过"修改原币含税单价"将发货单的原币、本币相关价格统一修改，同时系统会记录修改日志
    <br>4、如果查询出的结果只涉及一个存货，则可以通过"批量修改"功能对本次查询出的所有存货单价格进行修改
     -->
    </td>
  </tr>
</table>
</body>
</html>

