<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.hz.dict.service.IDictionaryService"%> 
<%@page import="com.dispatch.obj.DispatchPriceChangeLogObj"%> 
<!-- 基本信息 -->  
<% 
	// 上下文路径 
	String contextPath = request.getContextPath(); 
	 
	// 对象实例 
	DispatchPriceChangeLogObj domainInstance = new DispatchPriceChangeLogObj(); 
	// 该功能基本路径 
	String basePath = domainInstance.getBasePath(); 
 
	// 如果是修改，则获取对象信息 
	Object domainInstanceObj = request.getAttribute("domainInstance"); 
	if (domainInstanceObj != null) 
	{ 
		domainInstance = (DispatchPriceChangeLogObj) domainInstanceObj; 
	} 
 
	// 是否是修改 
	boolean isModify = domainInstance.getKeyValue() > 0; 
	// 唯一性检查用的字段 
	String keyCol = "null"; 
%> 
<html> 
	<head> 
		<base target="_self" /> 
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />		<title><%=isModify ? "修改" + domainInstance.getCnName() : "增加" + domainInstance.getCnName()%></title> 
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
		if(!checkNull("id","<%=domainInstance.getPropertyCnName("id")%>")) return false; 
		if(!checkNull("autoid","<%=domainInstance.getPropertyCnName("autoid")%>")) return false; 
		if(!checkNull("dlid","<%=domainInstance.getPropertyCnName("dlid")%>")) return false; 
		if(!checkNull("cwhcode","<%=domainInstance.getPropertyCnName("cwhcode")%>")) return false; 
		if(!checkNull("cinvcode","<%=domainInstance.getPropertyCnName("cinvcode")%>")) return false; 
		if(!checkNull("cdepcode","<%=domainInstance.getPropertyCnName("cdepcode")%>")) return false; 
		if(!checkNull("ccuscode","<%=domainInstance.getPropertyCnName("ccuscode")%>")) return false; 
		if(!checkNull("itaxprice_before_change","<%=domainInstance.getPropertyCnName("itaxprice_before_change")%>")) return false; 
		if(!checkNull("itaxprice_after_change","<%=domainInstance.getPropertyCnName("itaxprice_after_change")%>")) return false; 
		if(!checkNull("operate_user_account","<%=domainInstance.getPropertyCnName("operate_user_account")%>")) return false; 
		if(!checkNull("operate_user_name","<%=domainInstance.getPropertyCnName("operate_user_name")%>")) return false; 
		if(!checkNull("operate_time","<%=domainInstance.getPropertyCnName("operate_time")%>")) return false; 
					 
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
			<table width="700" align="center" class="title_table"> 
				<tr> 
					<td> 
						<img src="../images/svg/heavy/green/list.png" width="18" height="18" align="absmiddle"> 
						&nbsp;&nbsp;<%=isModify ? "修改" : "增加"%><%=domainInstance.getCnName()%> 
					</td> 
				</tr> 
			</table> 
 
			<!-- 详细信息 --> 
			<table width="700" align="center" class="detail_table detail_table-bordered detail_table-striped"> 
				<input type="hidden" id="<%=domainInstance.findKeyColumnName()%>" name="<%=domainInstance.findKeyColumnName()%>" value="<%=domainInstance.getKeyValue()%>"> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("autoid") %>: 
					</td> 
					<td> 
						<input name="autoid" type="text" id="autoid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getAutoid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dlid") %>: 
					</td> 
					<td> 
						<input name="dlid" type="text" id="dlid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDlid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cwhcode") %>: 
					</td> 
					<td> 
						<%=DictionaryUtil.getSelectHtml(new DictionaryService().getDictItemsByDictName("U8仓库字典", false), "cwhcode", "", StringUtil.getNotEmptyStr(domainInstance.getCwhcode(), ""), "notEmpty")%> 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvcode") %>: 
					</td> 
					<td> 
						<%=DictionaryUtil.getSelectHtml(new DictionaryService().getDictItemsByDictName("U8存货字典", false), "cinvcode", "", StringUtil.getNotEmptyStr(domainInstance.getCinvcode(), ""), "notEmpty")%> 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdepcode") %>: 
					</td> 
					<td> 
						<%=DictionaryUtil.getSelectHtml(new DictionaryService().getDictItemsByDictName("U8部门字典", false), "cdepcode", "", StringUtil.getNotEmptyStr(domainInstance.getCdepcode(), ""), "notEmpty")%> 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuscode") %>: 
					</td> 
					<td> 
						<%=DictionaryUtil.getSelectHtml(new DictionaryService().getDictItemsByDictName("U8客户字典", false), "ccuscode", "", StringUtil.getNotEmptyStr(domainInstance.getCcuscode(), ""), "notEmpty")%> 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("itaxprice_before_change") %>: 
					</td> 
					<td> 
						<input name="itaxprice_before_change" type="text" id="itaxprice_before_change" value="<%=StringUtil.getNotEmptyStr(domainInstance.getItaxprice_before_change(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("itaxprice_after_change") %>: 
					</td> 
					<td> 
						<input name="itaxprice_after_change" type="text" id="itaxprice_after_change" value="<%=StringUtil.getNotEmptyStr(domainInstance.getItaxprice_after_change(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("operate_user_account") %>: 
					</td> 
					<td> 
						<input name="operate_user_account" type="text" id="operate_user_account" value="<%=StringUtil.getNotEmptyStr(domainInstance.getOperate_user_account(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("operate_user_name") %>: 
					</td> 
					<td> 
						<input name="operate_user_name" type="text" id="operate_user_name" value="<%=StringUtil.getNotEmptyStr(domainInstance.getOperate_user_name(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("operate_time") %>: 
					</td> 
					<td> 
						<input name="operate_time" type="text" id="operate_time" value="<%=StringUtil.getNotEmptyStr(domainInstance.getOperate_time(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
			</table> 
			 
			<!-- 工具栏 --> 
			<jsp:include page="../ToolBar/addOrModify_toolbar.jsp" /> 
		</form> 
	</body> 
</html> 
