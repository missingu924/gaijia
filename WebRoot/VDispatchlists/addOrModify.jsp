<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.dictionary.DictionaryUtil"%> 
<%@page import="com.u8.obj.VDispatchlistsObj"%> 
<!-- 基本信息 -->  
<% 
	// 上下文路径 
	String contextPath = request.getContextPath(); 
	 
	// 对象实例 
	VDispatchlistsObj domainInstance = new VDispatchlistsObj(); 
	// 该功能基本路径 
	String basePath = domainInstance.getBasePath(); 
 
	// 如果是修改，则获取对象信息 
	Object domainInstanceObj = request.getAttribute("domainInstance"); 
	if (domainInstanceObj != null) 
	{ 
		domainInstance = (VDispatchlistsObj) domainInstanceObj; 
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
		if(!checkNull("autoid","<%=domainInstance.getPropertyCnName("autoid")%>")) return false; 
		if(!checkNull("dlid","<%=domainInstance.getPropertyCnName("dlid")%>")) return false; 
		if(!checkNull("cdlcode","<%=domainInstance.getPropertyCnName("cdlcode")%>")) return false; 
		if(!checkNull("ddate","<%=domainInstance.getPropertyCnName("ddate")%>")) return false; 
		if(!checkNull("cdepcode","<%=domainInstance.getPropertyCnName("cdepcode")%>")) return false; 
		if(!checkNull("cpersoncode","<%=domainInstance.getPropertyCnName("cpersoncode")%>")) return false; 
		if(!checkNull("ccuscode","<%=domainInstance.getPropertyCnName("ccuscode")%>")) return false; 
		if(!checkNull("cexch_name","<%=domainInstance.getPropertyCnName("cexch_name")%>")) return false; 
		if(!checkNull("iexchrate","<%=domainInstance.getPropertyCnName("iexchrate")%>")) return false; 
		if(!checkNull("itaxrate","<%=domainInstance.getPropertyCnName("itaxrate")%>")) return false; 
		if(!checkNull("cwhcode","<%=domainInstance.getPropertyCnName("cwhcode")%>")) return false; 
		if(!checkNull("cinvcode","<%=domainInstance.getPropertyCnName("cinvcode")%>")) return false; 
		if(!checkNull("iquantity","<%=domainInstance.getPropertyCnName("iquantity")%>")) return false; 
		if(!checkNull("isettlequantity","<%=domainInstance.getPropertyCnName("isettlequantity")%>")) return false; 
		if(!checkNull("itaxunitprice","<%=domainInstance.getPropertyCnName("itaxunitprice")%>")) return false; 
		if(!checkNull("isum","<%=domainInstance.getPropertyCnName("isum")%>")) return false; 
		if(!checkNull("inatunitprice","<%=domainInstance.getPropertyCnName("inatunitprice")%>")) return false; 
		if(!checkNull("inatsum","<%=domainInstance.getPropertyCnName("inatsum")%>")) return false; 
					 
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
						<%=domainInstance.getPropertyCnName("cdlcode") %>: 
					</td> 
					<td> 
						<input name="cdlcode" type="text" id="cdlcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdlcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ddate") %>: 
					</td> 
					<td> 
						<input name="ddate" type="text" id="ddate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDdate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdepcode") %>: 
					</td> 
					<td> 
						<%=DictionaryUtil.getSelectHtml("U8部门字典", "cdepcode", StringUtil.getNotEmptyStr(domainInstance.getCdepcode(), ""))%> 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cpersoncode") %>: 
					</td> 
					<td> 
						<%=DictionaryUtil.getSelectHtml("U8人员字典", "cpersoncode", StringUtil.getNotEmptyStr(domainInstance.getCpersoncode(), ""))%> 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuscode") %>: 
					</td> 
					<td> 
						<%=DictionaryUtil.getSelectHtml("U8客户字典", "ccuscode", StringUtil.getNotEmptyStr(domainInstance.getCcuscode(), ""))%> 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cexch_name") %>: 
					</td> 
					<td> 
						<input name="cexch_name" type="text" id="cexch_name" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCexch_name(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iexchrate") %>: 
					</td> 
					<td> 
						<input name="iexchrate" type="text" id="iexchrate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIexchrate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("itaxrate") %>: 
					</td> 
					<td> 
						<input name="itaxrate" type="text" id="itaxrate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getItaxrate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cwhcode") %>: 
					</td> 
					<td> 
						<%=DictionaryUtil.getSelectHtml("U8仓库字典", "cwhcode", StringUtil.getNotEmptyStr(domainInstance.getCwhcode(), ""))%> 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvcode") %>: 
					</td> 
					<td> 
						<%=DictionaryUtil.getSelectHtml("U8存货字典", "cinvcode", StringUtil.getNotEmptyStr(domainInstance.getCinvcode(), ""))%> 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iquantity") %>: 
					</td> 
					<td> 
						<input name="iquantity" type="text" id="iquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("isettlequantity") %>: 
					</td> 
					<td> 
						<input name="isettlequantity" type="text" id="isettlequantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIsettlequantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("itaxunitprice") %>: 
					</td> 
					<td> 
						<input name="itaxunitprice" type="text" id="itaxunitprice" value="<%=StringUtil.getNotEmptyStr(domainInstance.getItaxunitprice(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("isum") %>: 
					</td> 
					<td> 
						<input name="isum" type="text" id="isum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIsum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("inatunitprice") %>: 
					</td> 
					<td> 
						<input name="inatunitprice" type="text" id="inatunitprice" value="<%=StringUtil.getNotEmptyStr(domainInstance.getInatunitprice(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("inatsum") %>: 
					</td> 
					<td> 
						<input name="inatsum" type="text" id="inatsum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getInatsum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
			</table> 
			 
			<!-- 工具栏 --> 
			<jsp:include page="../ToolBar/addOrModify_toolbar.jsp" /> 
		</form> 
	</body> 
</html> 
