<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.hz.dict.service.IDictionaryService"%> 
<%@page import="com.ruihua.obj.OrderListDetailObj"%> 
<!-- 基本信息 -->  
<% 
	// 上下文路径 
	String contextPath = request.getContextPath(); 
	 
	// 对象实例 
	OrderListDetailObj domainInstance = new OrderListDetailObj(); 
	// 该功能基本路径 
	String basePath = domainInstance.getBasePath(); 
 
	// 如果是修改，则获取对象信息 
	Object domainInstanceObj = request.getAttribute("domainInstance"); 
	if (domainInstanceObj != null) 
	{ 
		domainInstance = (OrderListDetailObj) domainInstanceObj; 
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
		if(!checkNull("dingdan_bianhao","<%=domainInstance.getPropertyCnName("dingdan_bianhao")%>")) return false; 
		if(!checkNull("biaoti","<%=domainInstance.getPropertyCnName("biaoti")%>")) return false; 
		if(!checkNull("jiage","<%=domainInstance.getPropertyCnName("jiage")%>")) return false; 
		if(!checkNull("goumai_shuliang","<%=domainInstance.getPropertyCnName("goumai_shuliang")%>")) return false; 
		if(!checkNull("waibuxitong_bianhao","<%=domainInstance.getPropertyCnName("waibuxitong_bianhao")%>")) return false; 
		if(!checkNull("shangpin_shuxing","<%=domainInstance.getPropertyCnName("shangpin_shuxing")%>")) return false; 
		if(!checkNull("taocan_xinxi","<%=domainInstance.getPropertyCnName("taocan_xinxi")%>")) return false; 
		if(!checkNull("beizhu","<%=domainInstance.getPropertyCnName("beizhu")%>")) return false; 
		if(!checkNull("dingdan_zhuangtai","<%=domainInstance.getPropertyCnName("dingdan_zhuangtai")%>")) return false; 
		if(!checkNull("shangjia_bianma","<%=domainInstance.getPropertyCnName("shangjia_bianma")%>")) return false; 
					 
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
						<%=domainInstance.getPropertyCnName("dingdan_bianhao") %>: 
					</td> 
					<td> 
						<input name="dingdan_bianhao" type="text" id="dingdan_bianhao" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_bianhao(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("biaoti") %>: 
					</td> 
					<td> 
						<input name="biaoti" type="text" id="biaoti" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBiaoti(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("jiage") %>: 
					</td> 
					<td> 
						<input name="jiage" type="text" id="jiage" value="<%=StringUtil.getNotEmptyStr(domainInstance.getJiage(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("goumai_shuliang") %>: 
					</td> 
					<td> 
						<input name="goumai_shuliang" type="text" id="goumai_shuliang" value="<%=StringUtil.getNotEmptyStr(domainInstance.getGoumai_shuliang(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("waibuxitong_bianhao") %>: 
					</td> 
					<td> 
						<input name="waibuxitong_bianhao" type="text" id="waibuxitong_bianhao" value="<%=StringUtil.getNotEmptyStr(domainInstance.getWaibuxitong_bianhao(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("shangpin_shuxing") %>: 
					</td> 
					<td> 
						<input name="shangpin_shuxing" type="text" id="shangpin_shuxing" value="<%=StringUtil.getNotEmptyStr(domainInstance.getShangpin_shuxing(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("taocan_xinxi") %>: 
					</td> 
					<td> 
						<input name="taocan_xinxi" type="text" id="taocan_xinxi" value="<%=StringUtil.getNotEmptyStr(domainInstance.getTaocan_xinxi(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("beizhu") %>: 
					</td> 
					<td> 
						<input name="beizhu" type="text" id="beizhu" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBeizhu(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dingdan_zhuangtai") %>: 
					</td> 
					<td> 
						<input name="dingdan_zhuangtai" type="text" id="dingdan_zhuangtai" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_zhuangtai(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("shangjia_bianma") %>: 
					</td> 
					<td> 
						<input name="shangjia_bianma" type="text" id="shangjia_bianma" value="<%=StringUtil.getNotEmptyStr(domainInstance.getShangjia_bianma(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
			</table> 
			 
			<!-- 工具栏 --> 
			<jsp:include page="../ToolBar/addOrModify_toolbar.jsp" /> 
		</form> 
	</body> 
</html> 
