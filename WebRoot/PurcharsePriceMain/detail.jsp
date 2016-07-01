<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%>
<!-- 引入类 -->
<%@page import="java.util.List"%>
<%@page import="com.wuyg.common.util.StringUtil"%>
<%@page import="com.wuyg.dictionary.DictionaryUtil"%>
<%@page import="com.purcharse.obj.PurcharsePriceMainObj"%>
<%@page import="com.wuyg.auth.obj.AuthUserObj"%>
<%@page import="com.wuyg.common.util.SystemConstant"%>
<%@page import="com.purcharse.PurcharseConstant"%>
<%
	// 当前上下文路径  
	String contextPath = request.getContextPath();

	// 该功能对象实例  
	PurcharsePriceMainObj domainInstance = (PurcharsePriceMainObj) request.getAttribute("domainInstance");
	// 该功能路径  
	String basePath = domainInstance.getBasePath();

	// 当前用户
	AuthUserObj currentUser = (AuthUserObj) request.getSession().getAttribute(SystemConstant.AUTH_USER_INFO);
%>
<html>
	<head>
		<base target="_self" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />
		<title><%=domainInstance.getCnName()%>详情</title>
		<link href="../css/global.css" rel="stylesheet" type="text/css" />
		<link href="../css/table.css" rel="stylesheet" type="text/css" />
		<script src="../js/jquery-2.0.3.min.js"></script>
		<script src="../js/utils.js"></script>
		<script type="text/javascript">
		function zuocheng()
		{
			action = '<%=contextPath%>/<%=basePath%>/Servlet?method=zuocheng&<%=domainInstance.findKeyColumnName()%>=<%=domainInstance.getKeyValue()%>';
			formSubmit(action);
		}
		function xiugai()
		{
			action = '<%=contextPath%>/<%=basePath%>/Servlet?method=preModify4this&<%=domainInstance.findKeyColumnName()%>=<%=domainInstance.getKeyValue()%>';
			formSubmit(action);
		}
		function shanchu()
		{
			action = '<%=contextPath%>/<%=basePath%>/Servlet?method=preModify4this&<%=domainInstance.findKeyColumnName()%>=<%=domainInstance.getKeyValue()%>';
			formSubmit(action);
		}
		function queren(isBohui)
		{
			action = '<%=contextPath%>/<%=basePath%>/Servlet?method=queren&<%=domainInstance.findKeyColumnName()%>=<%=domainInstance.getKeyValue()%>'+'&bohui='+isBohui;
			formSubmit(action);
		}
		function shenhe(isBohui)
		{
			action = '<%=contextPath%>/<%=basePath%>/Servlet?method=shenhe&<%=domainInstance.findKeyColumnName()%>=<%=domainInstance.getKeyValue()%>'+'&bohui='+isBohui;
			formSubmit(action);
		}
		function pizhun(isBohui)
		{
			action = '<%=contextPath%>/<%=basePath%>/Servlet?method=pizhun&<%=domainInstance.findKeyColumnName()%>=<%=domainInstance.getKeyValue()%>'+'&bohui='+isBohui;
			formSubmit(action);
		}
		function formSubmit(action)
		{
			$("#mainForm").attr("action",encodeURI(action+"&isFromUrl=true"));
			$("#mainForm").submit();
		}
		</script>
	</head>
	<body>
		<!-- 操作栏 -->
		<table width="98%" align="center" class="operation_table">
			<tr align="right">
				<td>
					<%
						if (PurcharseConstant.AUTH_ROLE_CGZC.equalsIgnoreCase(currentUser.getRolelevel()))
						{
							//待修改 或 待提交
							if (domainInstance.DAI_XIU_GAI.equalsIgnoreCase(domainInstance.getZuocheng_status())||domainInstance.DAI_TI_JIAO.equalsIgnoreCase(domainInstance.getZuocheng_status()))
							{
					%>
					<input type="button" class="blue_button" value="修改" onclick="xiugai()">
					<%
						}//待提交
							if (domainInstance.DAI_TI_JIAO.equalsIgnoreCase(domainInstance.getZuocheng_status()))
							{
					%>
					<input type="button" class="blue_button" value="提交审批" onclick="zuocheng()">
					<%
						}
						}
					%>

					<%
						if (PurcharseConstant.AUTH_ROLE_CGQR.equalsIgnoreCase(currentUser.getRolelevel()) && domainInstance.YI_TI_JIAO.equalsIgnoreCase(domainInstance.getZuocheng_status()))
						{
							//已提交 且 待确认
							if ((domainInstance.DAI_QUE_REN.equalsIgnoreCase(domainInstance.getQueren_status())))
							{
					%>
					<input type="button" class="blue_button" value="确认通过" onclick="queren(false)">
					<%
						}
							// 待确认 或 已确认待驳回
							if (domainInstance.DAI_QUE_REN.equalsIgnoreCase(domainInstance.getQueren_status()) || domainInstance.DAI_BO_HUI.equalsIgnoreCase(domainInstance.getQueren_status()))
							{
					%>
					<input type="button" class="orange_button" value="驳回" onclick="queren(true)">
					<%
						}
						}
					%>

					<%
						if (PurcharseConstant.AUTH_ROLE_CGSH.equalsIgnoreCase(currentUser.getRolelevel()) && domainInstance.YI_QUE_REN.equalsIgnoreCase(domainInstance.getQueren_status()))
						{
							//已确认 且 待审核
							if ((domainInstance.DAI_SHEN_HE.equalsIgnoreCase(domainInstance.getShenhe_status())))
							{
					%>
					<input type="button" class="blue_button" value="审核通过" onclick="shenhe(false)">
					<%
						}
							// 待审核 或 已审核待驳回
							if (domainInstance.DAI_SHEN_HE.equalsIgnoreCase(domainInstance.getShenhe_status()) || domainInstance.DAI_BO_HUI.equalsIgnoreCase(domainInstance.getShenhe_status()))
							{
					%>
					<input type="button" class="orange_button" value="驳回" onclick="shenhe(true)">
					<%
						}
						}
					%>

					<%
						if (PurcharseConstant.AUTH_ROLE_CGPZ.equalsIgnoreCase(currentUser.getRolelevel()) && domainInstance.YI_SHEN_HE.equalsIgnoreCase(domainInstance.getShenhe_status()))
						{

							//已审核 且 待批准 
							if ((domainInstance.DAI_PI_ZHUN.equalsIgnoreCase(domainInstance.getPizhun_status())))
							{
					%>
					<input type="button" class="blue_button" value="批准通过" onclick="pizhun(false)">
					<%
						}
							// 待批准 或 已驳回
							if (domainInstance.DAI_PI_ZHUN.equalsIgnoreCase(domainInstance.getPizhun_status()) || domainInstance.YI_BO_HUI.equalsIgnoreCase(domainInstance.getPizhun_status()))
							{
					%>
					<input type="button" class="orange_button" value="驳回" onclick="pizhun(true)">
					<%
						}
						}
					%>
				</td>
			</tr>
		</table>
		<!-- 表格标题 -->
		<table width="98%" align="center" class="title_table">
			<tr>
				<td>
					<img src="../images/svg/heavy/green/list.png" width="18" height="18" align="absmiddle">
					&nbsp;&nbsp;<%=domainInstance.getCnName()%>信息
				</td>
			</tr>
		</table>
		<!-- 详细信息 -->
		<table width="98%" align="center" class="detail_table detail_table-bordered detail_table-striped">
			<tr>
				<td>
					<%=domainInstance.getPropertyCnName("name")%>:
				</td>
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getName())%></td>
			</tr>
			<tr>
				<td>
					<%=domainInstance.getPropertyCnName("zuocheng_status")%>:
				</td>
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getZuocheng_status4show())%></td>
			</tr>
			<tr>
				<td>
					<%=domainInstance.getPropertyCnName("queren_status")%>:
				</td>
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getQueren_status4show())%></td>
			</tr>
			<tr>
				<td>
					<%=domainInstance.getPropertyCnName("shenhe_status")%>:
				</td>
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getShenhe_status4show())%></td>
			</tr>
			<tr>
				<td>
					<%=domainInstance.getPropertyCnName("pizhun_status")%>:
				</td>
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getPizhun_status4show())%></td>
			</tr>
		</table>

		<!-- 流程审批使用 -->
		<form id="mainForm" action="" method="post">
		</form>

		<!-- 存货 -->
		<jsp:include page="listDetail.jsp">
			<jsp:param name="isAddOrModify" value="false" />
		</jsp:include>

		<!-- 工具栏 -->
		<jsp:include page="../ToolBar/detail_toolbar.jsp" />
	</body>
</html>
