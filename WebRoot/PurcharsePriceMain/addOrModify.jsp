<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%>
<!-- 引入类 -->
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wuyg.common.util.StringUtil"%>
<%@page import="com.wuyg.dictionary.DictionaryUtil"%>
<%@page import="com.purcharse.obj.PurcharsePriceMainObj"%>
<%@page import="com.wuyg.auth.obj.AuthRoleObj"%>
<%@page import="com.u8.obj.InventoryObj"%>
<!-- 基本信息 -->
<%
	// 上下文路径 
	String contextPath = request.getContextPath();

	// 对象实例 
	PurcharsePriceMainObj domainInstance = new PurcharsePriceMainObj();
	// 该功能基本路径 
	String basePath = domainInstance.getBasePath();

	// 如果是修改，则获取对象信息 
	Object domainInstanceObj = request.getAttribute("domainInstance");
	if (domainInstanceObj != null)
	{
		domainInstance = (PurcharsePriceMainObj) domainInstanceObj;
	}

	// 是否是修改 
	boolean isModify = domainInstance.getKeyValue() > 0;
	// 唯一性检查用的字段 
	String keyCol = "name";
%>
<html>
	<head>
		<base target="_self" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />
		<title><%=isModify ? "修改" + domainInstance.getCnName() : "增加" + domainInstance.getCnName()%></title>
		<link href="../css/global.css" rel="stylesheet" type="text/css">
		<link href="../css/table.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../js/jquery-2.0.3.min.js"></script>
		<script type="text/javascript" src="../js/utils.js"></script>
		<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
		<script> 
		//  新增或修改 
		function addOrModify() 
		{	 
			// 做必要的检查 
			if(!checkNull("name","<%=domainInstance.getPropertyCnName("name")%>")) return false; 
			// 价格不能为空且为double数字
			var isPriceOk = true;
			$("[name='price']").each(function(){
				if ($(this).val() == "") {
					$(this).focus();
					alert("请填写价格");
					isPriceOk = false;
					return ;
				}
				if(!isDouble($(this).val()))
				{
					$(this).focus();
					alert("输入的价格不是数字");
					isPriceOk = false;
					return;
				}
			});
			if(!isPriceOk) return false;
					 
			// 修改 
			if("true"=="<%=isModify%>") 
			{ 
				submit(); 
			} 
			// 新增 
			else 
			{ 
					// 新增时检查唯一性 
					$.post( 
					encodeURI("Servlet?method=checkId4this&isFromUrl=true&id=0&<%=keyCol%>="+$("#<%=keyCol%>").val()),  
					{Action:"post"},  
					function (data, textStatus){ 
						this; 
						if(data=="true")  
						{ 
							alert("该<%=domainInstance.getPropertyCnName(keyCol)%>已录入系统");  
							return false; 
						} 
						else 
						{ 
							submit(); 
						} 
					}); 
			};
		} 
		 
		// 提交保存或修改 
		function submit() 
		{ 
					$("#addOrModifyForm").submit(); 
		} 
		</script>
	</head>
	<body>
		<form name="addOrModifyForm" id="addOrModifyForm" action="<%=contextPath%>/<%=basePath%>/Servlet?method=addOrModify4this" method="post">
			<!-- 表格标题 -->
			<table width="98%" align="center" class="title_table">
				<tr>
					<td>
						<img src="../images/svg/heavy/green/list.png" width="18" height="18" align="absmiddle">
						&nbsp;&nbsp;<%=isModify ? "修改" : "增加"%><%=domainInstance.getCnName()%>
					</td>
				</tr>
			</table>

			<!-- 详细信息 -->
			<table width="98%" align="center" class="detail_table detail_table-bordered detail_table-striped">
				<input type="hidden" id="<%=domainInstance.findKeyColumnName()%>" name="<%=domainInstance.findKeyColumnName()%>" value="<%=domainInstance.getKeyValue()%>">
				<tr>
					<td>
						<%=domainInstance.getPropertyCnName("name")%>:
					</td>
					<td>
						<input name="name" type="text" id="name" value="<%=StringUtil.getNotEmptyStr(domainInstance.getName(), "")%>" size="50" <%if(isModify){%> readOnly <%} %>>
						<font color="red">*<%=isModify ? "（不可修改）" : ""%></font>
					</td>
				</tr>
				<!-- <tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("zuocheng_time")%>: 
					</td> 
					<td> 
						<input name="zuocheng_time" type="text" id="zuocheng_time" value="<%=StringUtil.getNotEmptyStr(domainInstance.getZuocheng_time(), "")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("zuocheng_status")%>: 
					</td> 
					<td> 
						<input name="zuocheng_status" type="text" id="zuocheng_status" value="<%=StringUtil.getNotEmptyStr(domainInstance.getZuocheng_status(), "")%>" size="20"  > 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("queren_time")%>: 
					</td> 
					<td> 
						<input name="queren_time" type="text" id="queren_time" value="<%=StringUtil.getNotEmptyStr(domainInstance.getQueren_time(), "")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("queren_status")%>: 
					</td> 
					<td> 
						<input name="queren_status" type="text" id="queren_status" value="<%=StringUtil.getNotEmptyStr(domainInstance.getQueren_status(), "")%>" size="20"  > 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("shenhe_time")%>: 
					</td> 
					<td> 
						<input name="shenhe_time" type="text" id="shenhe_time" value="<%=StringUtil.getNotEmptyStr(domainInstance.getShenhe_time(), "")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("pizhun_time")%>: 
					</td> 
					<td> 
						<input name="pizhun_time" type="text" id="pizhun_time" value="<%=StringUtil.getNotEmptyStr(domainInstance.getPizhun_time(), "")%>" size="20"  > 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("shenhe_status")%>: 
					</td> 
					<td> 
						<input name="shenhe_status" type="text" id="shenhe_status" value="<%=StringUtil.getNotEmptyStr(domainInstance.getShenhe_status(), "")%>" size="20"  > 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("pizhun_status")%>: 
					</td> 
					<td> 
						<input name="pizhun_status" type="text" id="pizhun_status" value="<%=StringUtil.getNotEmptyStr(domainInstance.getPizhun_status(), "")%>" size="20"  > 
					</td> 
				</tr> -->
			</table>

			<!-- 存货选择 -->
			<jsp:include page="listDetail.jsp">
				<jsp:param name="isAddOrModify" value="true" />
			</jsp:include>

			<!-- 工具栏 -->
			<jsp:include page="../ToolBar/addOrModify_toolbar.jsp" />
		</form>
	</body>
</html>
