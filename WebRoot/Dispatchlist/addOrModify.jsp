<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.dictionary.DictionaryUtil"%> 
<%@page import="com.u8.obj.DispatchlistObj"%> 
<!-- 基本信息 -->  
<% 
	// 上下文路径 
	String contextPath = request.getContextPath(); 
	 
	// 对象实例 
	DispatchlistObj domainInstance = new DispatchlistObj(); 
	// 该功能基本路径 
	String basePath = domainInstance.getBasePath(); 
 
	// 如果是修改，则获取对象信息 
	Object domainInstanceObj = request.getAttribute("domainInstance"); 
	if (domainInstanceObj != null) 
	{ 
		domainInstance = (DispatchlistObj) domainInstanceObj; 
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
		if(!checkNull("dlid","<%=domainInstance.getPropertyCnName("dlid")%>")) return false; 
		if(!checkNull("cdlcode","<%=domainInstance.getPropertyCnName("cdlcode")%>")) return false; 
		if(!checkNull("cvouchtype","<%=domainInstance.getPropertyCnName("cvouchtype")%>")) return false; 
		if(!checkNull("cstcode","<%=domainInstance.getPropertyCnName("cstcode")%>")) return false; 
		if(!checkNull("ddate","<%=domainInstance.getPropertyCnName("ddate")%>")) return false; 
		if(!checkNull("crdcode","<%=domainInstance.getPropertyCnName("crdcode")%>")) return false; 
		if(!checkNull("cdepcode","<%=domainInstance.getPropertyCnName("cdepcode")%>")) return false; 
		if(!checkNull("cpersoncode","<%=domainInstance.getPropertyCnName("cpersoncode")%>")) return false; 
		if(!checkNull("sbvid","<%=domainInstance.getPropertyCnName("sbvid")%>")) return false; 
		if(!checkNull("csbvcode","<%=domainInstance.getPropertyCnName("csbvcode")%>")) return false; 
		if(!checkNull("csocode","<%=domainInstance.getPropertyCnName("csocode")%>")) return false; 
		if(!checkNull("ccuscode","<%=domainInstance.getPropertyCnName("ccuscode")%>")) return false; 
		if(!checkNull("cpaycode","<%=domainInstance.getPropertyCnName("cpaycode")%>")) return false; 
		if(!checkNull("csccode","<%=domainInstance.getPropertyCnName("csccode")%>")) return false; 
		if(!checkNull("cshipaddress","<%=domainInstance.getPropertyCnName("cshipaddress")%>")) return false; 
		if(!checkNull("cexch_name","<%=domainInstance.getPropertyCnName("cexch_name")%>")) return false; 
		if(!checkNull("iexchrate","<%=domainInstance.getPropertyCnName("iexchrate")%>")) return false; 
		if(!checkNull("itaxrate","<%=domainInstance.getPropertyCnName("itaxrate")%>")) return false; 
		if(!checkNull("bfirst","<%=domainInstance.getPropertyCnName("bfirst")%>")) return false; 
		if(!checkNull("breturnflag","<%=domainInstance.getPropertyCnName("breturnflag")%>")) return false; 
		if(!checkNull("bsettleall","<%=domainInstance.getPropertyCnName("bsettleall")%>")) return false; 
		if(!checkNull("cmemo","<%=domainInstance.getPropertyCnName("cmemo")%>")) return false; 
		if(!checkNull("csaleout","<%=domainInstance.getPropertyCnName("csaleout")%>")) return false; 
		if(!checkNull("cdefine1","<%=domainInstance.getPropertyCnName("cdefine1")%>")) return false; 
		if(!checkNull("cdefine2","<%=domainInstance.getPropertyCnName("cdefine2")%>")) return false; 
		if(!checkNull("cdefine3","<%=domainInstance.getPropertyCnName("cdefine3")%>")) return false; 
		if(!checkNull("cdefine4","<%=domainInstance.getPropertyCnName("cdefine4")%>")) return false; 
		if(!checkNull("cdefine5","<%=domainInstance.getPropertyCnName("cdefine5")%>")) return false; 
		if(!checkNull("cdefine6","<%=domainInstance.getPropertyCnName("cdefine6")%>")) return false; 
		if(!checkNull("cdefine7","<%=domainInstance.getPropertyCnName("cdefine7")%>")) return false; 
		if(!checkNull("cdefine8","<%=domainInstance.getPropertyCnName("cdefine8")%>")) return false; 
		if(!checkNull("cdefine9","<%=domainInstance.getPropertyCnName("cdefine9")%>")) return false; 
		if(!checkNull("cdefine10","<%=domainInstance.getPropertyCnName("cdefine10")%>")) return false; 
		if(!checkNull("cverifier","<%=domainInstance.getPropertyCnName("cverifier")%>")) return false; 
		if(!checkNull("cmaker","<%=domainInstance.getPropertyCnName("cmaker")%>")) return false; 
		if(!checkNull("inetlock","<%=domainInstance.getPropertyCnName("inetlock")%>")) return false; 
		if(!checkNull("isale","<%=domainInstance.getPropertyCnName("isale")%>")) return false; 
		if(!checkNull("ccusname","<%=domainInstance.getPropertyCnName("ccusname")%>")) return false; 
		if(!checkNull("ivtid","<%=domainInstance.getPropertyCnName("ivtid")%>")) return false; 
		if(!checkNull("ufts","<%=domainInstance.getPropertyCnName("ufts")%>")) return false; 
		if(!checkNull("cbustype","<%=domainInstance.getPropertyCnName("cbustype")%>")) return false; 
		if(!checkNull("ccloser","<%=domainInstance.getPropertyCnName("ccloser")%>")) return false; 
		if(!checkNull("caccounter","<%=domainInstance.getPropertyCnName("caccounter")%>")) return false; 
		if(!checkNull("ccrechpname","<%=domainInstance.getPropertyCnName("ccrechpname")%>")) return false; 
		if(!checkNull("cdefine11","<%=domainInstance.getPropertyCnName("cdefine11")%>")) return false; 
		if(!checkNull("cdefine12","<%=domainInstance.getPropertyCnName("cdefine12")%>")) return false; 
		if(!checkNull("cdefine13","<%=domainInstance.getPropertyCnName("cdefine13")%>")) return false; 
		if(!checkNull("cdefine14","<%=domainInstance.getPropertyCnName("cdefine14")%>")) return false; 
		if(!checkNull("cdefine15","<%=domainInstance.getPropertyCnName("cdefine15")%>")) return false; 
		if(!checkNull("cdefine16","<%=domainInstance.getPropertyCnName("cdefine16")%>")) return false; 
		if(!checkNull("biafirst","<%=domainInstance.getPropertyCnName("biafirst")%>")) return false; 
		if(!checkNull("ioutgolden","<%=domainInstance.getPropertyCnName("ioutgolden")%>")) return false; 
		if(!checkNull("cgatheringplan","<%=domainInstance.getPropertyCnName("cgatheringplan")%>")) return false; 
		if(!checkNull("dcreditstart","<%=domainInstance.getPropertyCnName("dcreditstart")%>")) return false; 
		if(!checkNull("dgatheringdate","<%=domainInstance.getPropertyCnName("dgatheringdate")%>")) return false; 
		if(!checkNull("icreditdays","<%=domainInstance.getPropertyCnName("icreditdays")%>")) return false; 
		if(!checkNull("bcredit","<%=domainInstance.getPropertyCnName("bcredit")%>")) return false; 
		if(!checkNull("caddcode","<%=domainInstance.getPropertyCnName("caddcode")%>")) return false; 
		if(!checkNull("iverifystate","<%=domainInstance.getPropertyCnName("iverifystate")%>")) return false; 
		if(!checkNull("ireturncount","<%=domainInstance.getPropertyCnName("ireturncount")%>")) return false; 
		if(!checkNull("iswfcontrolled","<%=domainInstance.getPropertyCnName("iswfcontrolled")%>")) return false; 
		if(!checkNull("icreditstate","<%=domainInstance.getPropertyCnName("icreditstate")%>")) return false; 
		if(!checkNull("barfirst","<%=domainInstance.getPropertyCnName("barfirst")%>")) return false; 
		if(!checkNull("cmodifier","<%=domainInstance.getPropertyCnName("cmodifier")%>")) return false; 
		if(!checkNull("dmoddate","<%=domainInstance.getPropertyCnName("dmoddate")%>")) return false; 
		if(!checkNull("dverifydate","<%=domainInstance.getPropertyCnName("dverifydate")%>")) return false; 
		if(!checkNull("ccusperson","<%=domainInstance.getPropertyCnName("ccusperson")%>")) return false; 
		if(!checkNull("dcreatesystime","<%=domainInstance.getPropertyCnName("dcreatesystime")%>")) return false; 
		if(!checkNull("dverifysystime","<%=domainInstance.getPropertyCnName("dverifysystime")%>")) return false; 
		if(!checkNull("dmodifysystime","<%=domainInstance.getPropertyCnName("dmodifysystime")%>")) return false; 
		if(!checkNull("csvouchtype","<%=domainInstance.getPropertyCnName("csvouchtype")%>")) return false; 
		if(!checkNull("iflowid","<%=domainInstance.getPropertyCnName("iflowid")%>")) return false; 
		if(!checkNull("bsigncreate","<%=domainInstance.getPropertyCnName("bsigncreate")%>")) return false; 
		if(!checkNull("bcashsale","<%=domainInstance.getPropertyCnName("bcashsale")%>")) return false; 
		if(!checkNull("cgathingcode","<%=domainInstance.getPropertyCnName("cgathingcode")%>")) return false; 
		if(!checkNull("cchanger","<%=domainInstance.getPropertyCnName("cchanger")%>")) return false; 
		if(!checkNull("cchangememo","<%=domainInstance.getPropertyCnName("cchangememo")%>")) return false; 
		if(!checkNull("outid","<%=domainInstance.getPropertyCnName("outid")%>")) return false; 
					 
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
			</table> 
			 
			<!-- 工具栏 --> 
			<jsp:include page="../ToolBar/addOrModify_toolbar.jsp" /> 
		</form> 
	</body> 
</html> 
