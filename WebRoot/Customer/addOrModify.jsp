<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.hz.dict.service.IDictionaryService"%> 
<%@page import="com.u8.obj.CustomerObj"%> 
<!-- 基本信息 -->  
<% 
	// 上下文路径 
	String contextPath = request.getContextPath(); 
	 
	// 对象实例 
	CustomerObj domainInstance = new CustomerObj(); 
	// 该功能基本路径 
	String basePath = domainInstance.getBasePath(); 
 
	// 如果是修改，则获取对象信息 
	Object domainInstanceObj = request.getAttribute("domainInstance"); 
	if (domainInstanceObj != null) 
	{ 
		domainInstance = (CustomerObj) domainInstanceObj; 
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
		if(!checkNull("ccuscode","<%=domainInstance.getPropertyCnName("ccuscode")%>")) return false; 
		if(!checkNull("ccusname","<%=domainInstance.getPropertyCnName("ccusname")%>")) return false; 
		if(!checkNull("ccusabbname","<%=domainInstance.getPropertyCnName("ccusabbname")%>")) return false; 
		if(!checkNull("ccccode","<%=domainInstance.getPropertyCnName("ccccode")%>")) return false; 
		if(!checkNull("cdccode","<%=domainInstance.getPropertyCnName("cdccode")%>")) return false; 
		if(!checkNull("ctrade","<%=domainInstance.getPropertyCnName("ctrade")%>")) return false; 
		if(!checkNull("ccusaddress","<%=domainInstance.getPropertyCnName("ccusaddress")%>")) return false; 
		if(!checkNull("ccuspostcode","<%=domainInstance.getPropertyCnName("ccuspostcode")%>")) return false; 
		if(!checkNull("ccusregcode","<%=domainInstance.getPropertyCnName("ccusregcode")%>")) return false; 
		if(!checkNull("ccusbank","<%=domainInstance.getPropertyCnName("ccusbank")%>")) return false; 
		if(!checkNull("ccusaccount","<%=domainInstance.getPropertyCnName("ccusaccount")%>")) return false; 
		if(!checkNull("dcusdevdate","<%=domainInstance.getPropertyCnName("dcusdevdate")%>")) return false; 
		if(!checkNull("ccuslperson","<%=domainInstance.getPropertyCnName("ccuslperson")%>")) return false; 
		if(!checkNull("ccusemail","<%=domainInstance.getPropertyCnName("ccusemail")%>")) return false; 
		if(!checkNull("ccusperson","<%=domainInstance.getPropertyCnName("ccusperson")%>")) return false; 
		if(!checkNull("ccusphone","<%=domainInstance.getPropertyCnName("ccusphone")%>")) return false; 
		if(!checkNull("ccusfax","<%=domainInstance.getPropertyCnName("ccusfax")%>")) return false; 
		if(!checkNull("ccusbp","<%=domainInstance.getPropertyCnName("ccusbp")%>")) return false; 
		if(!checkNull("ccushand","<%=domainInstance.getPropertyCnName("ccushand")%>")) return false; 
		if(!checkNull("ccuspperson","<%=domainInstance.getPropertyCnName("ccuspperson")%>")) return false; 
		if(!checkNull("icusdisrate","<%=domainInstance.getPropertyCnName("icusdisrate")%>")) return false; 
		if(!checkNull("ccuscregrade","<%=domainInstance.getPropertyCnName("ccuscregrade")%>")) return false; 
		if(!checkNull("icuscreline","<%=domainInstance.getPropertyCnName("icuscreline")%>")) return false; 
		if(!checkNull("icuscredate","<%=domainInstance.getPropertyCnName("icuscredate")%>")) return false; 
		if(!checkNull("ccuspaycond","<%=domainInstance.getPropertyCnName("ccuspaycond")%>")) return false; 
		if(!checkNull("ccusoaddress","<%=domainInstance.getPropertyCnName("ccusoaddress")%>")) return false; 
		if(!checkNull("ccusotype","<%=domainInstance.getPropertyCnName("ccusotype")%>")) return false; 
		if(!checkNull("ccusheadcode","<%=domainInstance.getPropertyCnName("ccusheadcode")%>")) return false; 
		if(!checkNull("ccuswhcode","<%=domainInstance.getPropertyCnName("ccuswhcode")%>")) return false; 
		if(!checkNull("ccusdepart","<%=domainInstance.getPropertyCnName("ccusdepart")%>")) return false; 
		if(!checkNull("iarmoney","<%=domainInstance.getPropertyCnName("iarmoney")%>")) return false; 
		if(!checkNull("dlastdate","<%=domainInstance.getPropertyCnName("dlastdate")%>")) return false; 
		if(!checkNull("ilastmoney","<%=domainInstance.getPropertyCnName("ilastmoney")%>")) return false; 
		if(!checkNull("dlrdate","<%=domainInstance.getPropertyCnName("dlrdate")%>")) return false; 
		if(!checkNull("ilrmoney","<%=domainInstance.getPropertyCnName("ilrmoney")%>")) return false; 
		if(!checkNull("denddate","<%=domainInstance.getPropertyCnName("denddate")%>")) return false; 
		if(!checkNull("ifrequency","<%=domainInstance.getPropertyCnName("ifrequency")%>")) return false; 
		if(!checkNull("ccusdefine1","<%=domainInstance.getPropertyCnName("ccusdefine1")%>")) return false; 
		if(!checkNull("ccusdefine2","<%=domainInstance.getPropertyCnName("ccusdefine2")%>")) return false; 
		if(!checkNull("ccusdefine3","<%=domainInstance.getPropertyCnName("ccusdefine3")%>")) return false; 
		if(!checkNull("icostgrade","<%=domainInstance.getPropertyCnName("icostgrade")%>")) return false; 
		if(!checkNull("ccreateperson","<%=domainInstance.getPropertyCnName("ccreateperson")%>")) return false; 
		if(!checkNull("cmodifyperson","<%=domainInstance.getPropertyCnName("cmodifyperson")%>")) return false; 
		if(!checkNull("dmodifydate","<%=domainInstance.getPropertyCnName("dmodifydate")%>")) return false; 
		if(!checkNull("crelvendor","<%=domainInstance.getPropertyCnName("crelvendor")%>")) return false; 
		if(!checkNull("iid","<%=domainInstance.getPropertyCnName("iid")%>")) return false; 
		if(!checkNull("cpricegroup","<%=domainInstance.getPropertyCnName("cpricegroup")%>")) return false; 
		if(!checkNull("coffergrade","<%=domainInstance.getPropertyCnName("coffergrade")%>")) return false; 
		if(!checkNull("iofferrate","<%=domainInstance.getPropertyCnName("iofferrate")%>")) return false; 
		if(!checkNull("ccusdefine4","<%=domainInstance.getPropertyCnName("ccusdefine4")%>")) return false; 
		if(!checkNull("ccusdefine5","<%=domainInstance.getPropertyCnName("ccusdefine5")%>")) return false; 
		if(!checkNull("ccusdefine6","<%=domainInstance.getPropertyCnName("ccusdefine6")%>")) return false; 
		if(!checkNull("ccusdefine7","<%=domainInstance.getPropertyCnName("ccusdefine7")%>")) return false; 
		if(!checkNull("ccusdefine8","<%=domainInstance.getPropertyCnName("ccusdefine8")%>")) return false; 
		if(!checkNull("ccusdefine9","<%=domainInstance.getPropertyCnName("ccusdefine9")%>")) return false; 
		if(!checkNull("ccusdefine10","<%=domainInstance.getPropertyCnName("ccusdefine10")%>")) return false; 
		if(!checkNull("ccusdefine11","<%=domainInstance.getPropertyCnName("ccusdefine11")%>")) return false; 
		if(!checkNull("ccusdefine12","<%=domainInstance.getPropertyCnName("ccusdefine12")%>")) return false; 
		if(!checkNull("ccusdefine13","<%=domainInstance.getPropertyCnName("ccusdefine13")%>")) return false; 
		if(!checkNull("ccusdefine14","<%=domainInstance.getPropertyCnName("ccusdefine14")%>")) return false; 
		if(!checkNull("ccusdefine15","<%=domainInstance.getPropertyCnName("ccusdefine15")%>")) return false; 
		if(!checkNull("ccusdefine16","<%=domainInstance.getPropertyCnName("ccusdefine16")%>")) return false; 
		if(!checkNull("pubufts","<%=domainInstance.getPropertyCnName("pubufts")%>")) return false; 
		if(!checkNull("cinvoicecompany","<%=domainInstance.getPropertyCnName("cinvoicecompany")%>")) return false; 
		if(!checkNull("bcredit","<%=domainInstance.getPropertyCnName("bcredit")%>")) return false; 
		if(!checkNull("bcreditdate","<%=domainInstance.getPropertyCnName("bcreditdate")%>")) return false; 
		if(!checkNull("bcreditbyhead","<%=domainInstance.getPropertyCnName("bcreditbyhead")%>")) return false; 
		if(!checkNull("blicencedate","<%=domainInstance.getPropertyCnName("blicencedate")%>")) return false; 
		if(!checkNull("dlicencesdate","<%=domainInstance.getPropertyCnName("dlicencesdate")%>")) return false; 
		if(!checkNull("dlicenceedate","<%=domainInstance.getPropertyCnName("dlicenceedate")%>")) return false; 
		if(!checkNull("ilicenceadays","<%=domainInstance.getPropertyCnName("ilicenceadays")%>")) return false; 
		if(!checkNull("bbusinessdate","<%=domainInstance.getPropertyCnName("bbusinessdate")%>")) return false; 
		if(!checkNull("dbusinesssdate","<%=domainInstance.getPropertyCnName("dbusinesssdate")%>")) return false; 
		if(!checkNull("dbusinessedate","<%=domainInstance.getPropertyCnName("dbusinessedate")%>")) return false; 
		if(!checkNull("ibusinessadays","<%=domainInstance.getPropertyCnName("ibusinessadays")%>")) return false; 
		if(!checkNull("bproxy","<%=domainInstance.getPropertyCnName("bproxy")%>")) return false; 
		if(!checkNull("dproxysdate","<%=domainInstance.getPropertyCnName("dproxysdate")%>")) return false; 
		if(!checkNull("dproxyedate","<%=domainInstance.getPropertyCnName("dproxyedate")%>")) return false; 
		if(!checkNull("iproxyadays","<%=domainInstance.getPropertyCnName("iproxyadays")%>")) return false; 
		if(!checkNull("cmemo","<%=domainInstance.getPropertyCnName("cmemo")%>")) return false; 
		if(!checkNull("blimitsale","<%=domainInstance.getPropertyCnName("blimitsale")%>")) return false; 
		if(!checkNull("ccuscontactcode","<%=domainInstance.getPropertyCnName("ccuscontactcode")%>")) return false; 
		if(!checkNull("ccuscountrycode","<%=domainInstance.getPropertyCnName("ccuscountrycode")%>")) return false; 
		if(!checkNull("ccusenname","<%=domainInstance.getPropertyCnName("ccusenname")%>")) return false; 
		if(!checkNull("ccusenaddr1","<%=domainInstance.getPropertyCnName("ccusenaddr1")%>")) return false; 
		if(!checkNull("ccusenaddr2","<%=domainInstance.getPropertyCnName("ccusenaddr2")%>")) return false; 
		if(!checkNull("ccusenaddr3","<%=domainInstance.getPropertyCnName("ccusenaddr3")%>")) return false; 
		if(!checkNull("ccusenaddr4","<%=domainInstance.getPropertyCnName("ccusenaddr4")%>")) return false; 
		if(!checkNull("ccusportcode","<%=domainInstance.getPropertyCnName("ccusportcode")%>")) return false; 
		if(!checkNull("cprimaryven","<%=domainInstance.getPropertyCnName("cprimaryven")%>")) return false; 
		if(!checkNull("fcommisionrate","<%=domainInstance.getPropertyCnName("fcommisionrate")%>")) return false; 
		if(!checkNull("finsuerate","<%=domainInstance.getPropertyCnName("finsuerate")%>")) return false; 
		if(!checkNull("bhomebranch","<%=domainInstance.getPropertyCnName("bhomebranch")%>")) return false; 
		if(!checkNull("cbranchaddr","<%=domainInstance.getPropertyCnName("cbranchaddr")%>")) return false; 
		if(!checkNull("cbranchphone","<%=domainInstance.getPropertyCnName("cbranchphone")%>")) return false; 
		if(!checkNull("cbranchperson","<%=domainInstance.getPropertyCnName("cbranchperson")%>")) return false; 
		if(!checkNull("ccustradeccode","<%=domainInstance.getPropertyCnName("ccustradeccode")%>")) return false; 
		if(!checkNull("customerkcode","<%=domainInstance.getPropertyCnName("customerkcode")%>")) return false; 
		if(!checkNull("bcusstate","<%=domainInstance.getPropertyCnName("bcusstate")%>")) return false; 
		if(!checkNull("bshop","<%=domainInstance.getPropertyCnName("bshop")%>")) return false; 
		if(!checkNull("ccusbankcode","<%=domainInstance.getPropertyCnName("ccusbankcode")%>")) return false; 
		if(!checkNull("ccusexch_name","<%=domainInstance.getPropertyCnName("ccusexch_name")%>")) return false; 
		if(!checkNull("icusgsptype","<%=domainInstance.getPropertyCnName("icusgsptype")%>")) return false; 
		if(!checkNull("icusgspauth","<%=domainInstance.getPropertyCnName("icusgspauth")%>")) return false; 
		if(!checkNull("ccusgspauthno","<%=domainInstance.getPropertyCnName("ccusgspauthno")%>")) return false; 
		if(!checkNull("ccusbusinessno","<%=domainInstance.getPropertyCnName("ccusbusinessno")%>")) return false; 
		if(!checkNull("ccuslicenceno","<%=domainInstance.getPropertyCnName("ccuslicenceno")%>")) return false; 
		if(!checkNull("bcusdomestic","<%=domainInstance.getPropertyCnName("bcusdomestic")%>")) return false; 
		if(!checkNull("bcusoverseas","<%=domainInstance.getPropertyCnName("bcusoverseas")%>")) return false; 
		if(!checkNull("ccuscreditcompany","<%=domainInstance.getPropertyCnName("ccuscreditcompany")%>")) return false; 
		if(!checkNull("ccussaprotocol","<%=domainInstance.getPropertyCnName("ccussaprotocol")%>")) return false; 
		if(!checkNull("ccusexprotocol","<%=domainInstance.getPropertyCnName("ccusexprotocol")%>")) return false; 
		if(!checkNull("ccusotherprotocol","<%=domainInstance.getPropertyCnName("ccusotherprotocol")%>")) return false; 
		if(!checkNull("fcusdiscountrate","<%=domainInstance.getPropertyCnName("fcusdiscountrate")%>")) return false; 
		if(!checkNull("ccussscode","<%=domainInstance.getPropertyCnName("ccussscode")%>")) return false; 
		if(!checkNull("ccuscmprotocol","<%=domainInstance.getPropertyCnName("ccuscmprotocol")%>")) return false; 
		if(!checkNull("dcuscreatedatetime","<%=domainInstance.getPropertyCnName("dcuscreatedatetime")%>")) return false; 
		if(!checkNull("ccusappdocno","<%=domainInstance.getPropertyCnName("ccusappdocno")%>")) return false; 
					 
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
						<%=domainInstance.getPropertyCnName("ccusname") %>: 
					</td> 
					<td> 
						<input name="ccusname" type="text" id="ccusname" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusname(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusabbname") %>: 
					</td> 
					<td> 
						<input name="ccusabbname" type="text" id="ccusabbname" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusabbname(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccccode") %>: 
					</td> 
					<td> 
						<input name="ccccode" type="text" id="ccccode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcccode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdccode") %>: 
					</td> 
					<td> 
						<input name="cdccode" type="text" id="cdccode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdccode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ctrade") %>: 
					</td> 
					<td> 
						<input name="ctrade" type="text" id="ctrade" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCtrade(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusaddress") %>: 
					</td> 
					<td> 
						<input name="ccusaddress" type="text" id="ccusaddress" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusaddress(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuspostcode") %>: 
					</td> 
					<td> 
						<input name="ccuspostcode" type="text" id="ccuspostcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcuspostcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusregcode") %>: 
					</td> 
					<td> 
						<input name="ccusregcode" type="text" id="ccusregcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusregcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusbank") %>: 
					</td> 
					<td> 
						<input name="ccusbank" type="text" id="ccusbank" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusbank(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusaccount") %>: 
					</td> 
					<td> 
						<input name="ccusaccount" type="text" id="ccusaccount" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusaccount(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dcusdevdate") %>: 
					</td> 
					<td> 
						<input name="dcusdevdate" type="text" id="dcusdevdate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDcusdevdate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuslperson") %>: 
					</td> 
					<td> 
						<input name="ccuslperson" type="text" id="ccuslperson" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcuslperson(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusemail") %>: 
					</td> 
					<td> 
						<input name="ccusemail" type="text" id="ccusemail" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusemail(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusperson") %>: 
					</td> 
					<td> 
						<input name="ccusperson" type="text" id="ccusperson" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusperson(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusphone") %>: 
					</td> 
					<td> 
						<input name="ccusphone" type="text" id="ccusphone" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusphone(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusfax") %>: 
					</td> 
					<td> 
						<input name="ccusfax" type="text" id="ccusfax" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusfax(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusbp") %>: 
					</td> 
					<td> 
						<input name="ccusbp" type="text" id="ccusbp" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusbp(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccushand") %>: 
					</td> 
					<td> 
						<input name="ccushand" type="text" id="ccushand" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcushand(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuspperson") %>: 
					</td> 
					<td> 
						<input name="ccuspperson" type="text" id="ccuspperson" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcuspperson(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("icusdisrate") %>: 
					</td> 
					<td> 
						<input name="icusdisrate" type="text" id="icusdisrate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIcusdisrate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuscregrade") %>: 
					</td> 
					<td> 
						<input name="ccuscregrade" type="text" id="ccuscregrade" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcuscregrade(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("icuscreline") %>: 
					</td> 
					<td> 
						<input name="icuscreline" type="text" id="icuscreline" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIcuscreline(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("icuscredate") %>: 
					</td> 
					<td> 
						<input name="icuscredate" type="text" id="icuscredate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIcuscredate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuspaycond") %>: 
					</td> 
					<td> 
						<input name="ccuspaycond" type="text" id="ccuspaycond" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcuspaycond(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusoaddress") %>: 
					</td> 
					<td> 
						<input name="ccusoaddress" type="text" id="ccusoaddress" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusoaddress(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusotype") %>: 
					</td> 
					<td> 
						<input name="ccusotype" type="text" id="ccusotype" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusotype(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusheadcode") %>: 
					</td> 
					<td> 
						<input name="ccusheadcode" type="text" id="ccusheadcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusheadcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuswhcode") %>: 
					</td> 
					<td> 
						<input name="ccuswhcode" type="text" id="ccuswhcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcuswhcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdepart") %>: 
					</td> 
					<td> 
						<input name="ccusdepart" type="text" id="ccusdepart" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdepart(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iarmoney") %>: 
					</td> 
					<td> 
						<input name="iarmoney" type="text" id="iarmoney" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIarmoney(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dlastdate") %>: 
					</td> 
					<td> 
						<input name="dlastdate" type="text" id="dlastdate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDlastdate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ilastmoney") %>: 
					</td> 
					<td> 
						<input name="ilastmoney" type="text" id="ilastmoney" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIlastmoney(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dlrdate") %>: 
					</td> 
					<td> 
						<input name="dlrdate" type="text" id="dlrdate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDlrdate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ilrmoney") %>: 
					</td> 
					<td> 
						<input name="ilrmoney" type="text" id="ilrmoney" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIlrmoney(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("denddate") %>: 
					</td> 
					<td> 
						<input name="denddate" type="text" id="denddate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDenddate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ifrequency") %>: 
					</td> 
					<td> 
						<input name="ifrequency" type="text" id="ifrequency" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIfrequency(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine1") %>: 
					</td> 
					<td> 
						<input name="ccusdefine1" type="text" id="ccusdefine1" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine1(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine2") %>: 
					</td> 
					<td> 
						<input name="ccusdefine2" type="text" id="ccusdefine2" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine2(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine3") %>: 
					</td> 
					<td> 
						<input name="ccusdefine3" type="text" id="ccusdefine3" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine3(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("icostgrade") %>: 
					</td> 
					<td> 
						<input name="icostgrade" type="text" id="icostgrade" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIcostgrade(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccreateperson") %>: 
					</td> 
					<td> 
						<input name="ccreateperson" type="text" id="ccreateperson" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcreateperson(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cmodifyperson") %>: 
					</td> 
					<td> 
						<input name="cmodifyperson" type="text" id="cmodifyperson" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCmodifyperson(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dmodifydate") %>: 
					</td> 
					<td> 
						<input name="dmodifydate" type="text" id="dmodifydate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDmodifydate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("crelvendor") %>: 
					</td> 
					<td> 
						<input name="crelvendor" type="text" id="crelvendor" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCrelvendor(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iid") %>: 
					</td> 
					<td> 
						<input name="iid" type="text" id="iid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cpricegroup") %>: 
					</td> 
					<td> 
						<input name="cpricegroup" type="text" id="cpricegroup" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCpricegroup(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("coffergrade") %>: 
					</td> 
					<td> 
						<input name="coffergrade" type="text" id="coffergrade" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCoffergrade(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iofferrate") %>: 
					</td> 
					<td> 
						<input name="iofferrate" type="text" id="iofferrate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIofferrate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine4") %>: 
					</td> 
					<td> 
						<input name="ccusdefine4" type="text" id="ccusdefine4" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine4(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine5") %>: 
					</td> 
					<td> 
						<input name="ccusdefine5" type="text" id="ccusdefine5" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine5(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine6") %>: 
					</td> 
					<td> 
						<input name="ccusdefine6" type="text" id="ccusdefine6" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine6(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine7") %>: 
					</td> 
					<td> 
						<input name="ccusdefine7" type="text" id="ccusdefine7" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine7(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine8") %>: 
					</td> 
					<td> 
						<input name="ccusdefine8" type="text" id="ccusdefine8" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine8(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine9") %>: 
					</td> 
					<td> 
						<input name="ccusdefine9" type="text" id="ccusdefine9" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine9(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine10") %>: 
					</td> 
					<td> 
						<input name="ccusdefine10" type="text" id="ccusdefine10" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine10(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine11") %>: 
					</td> 
					<td> 
						<input name="ccusdefine11" type="text" id="ccusdefine11" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine11(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine12") %>: 
					</td> 
					<td> 
						<input name="ccusdefine12" type="text" id="ccusdefine12" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine12(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine13") %>: 
					</td> 
					<td> 
						<input name="ccusdefine13" type="text" id="ccusdefine13" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine13(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine14") %>: 
					</td> 
					<td> 
						<input name="ccusdefine14" type="text" id="ccusdefine14" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine14(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine15") %>: 
					</td> 
					<td> 
						<input name="ccusdefine15" type="text" id="ccusdefine15" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine15(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusdefine16") %>: 
					</td> 
					<td> 
						<input name="ccusdefine16" type="text" id="ccusdefine16" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine16(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("pubufts") %>: 
					</td> 
					<td> 
						<input name="pubufts" type="text" id="pubufts" value="<%=StringUtil.getNotEmptyStr(domainInstance.getPubufts(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvoicecompany") %>: 
					</td> 
					<td> 
						<input name="cinvoicecompany" type="text" id="cinvoicecompany" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvoicecompany(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcredit") %>: 
					</td> 
					<td> 
						<input name="bcredit" type="text" id="bcredit" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcredit(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcreditdate") %>: 
					</td> 
					<td> 
						<input name="bcreditdate" type="text" id="bcreditdate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcreditdate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcreditbyhead") %>: 
					</td> 
					<td> 
						<input name="bcreditbyhead" type="text" id="bcreditbyhead" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcreditbyhead(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("blicencedate") %>: 
					</td> 
					<td> 
						<input name="blicencedate" type="text" id="blicencedate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBlicencedate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dlicencesdate") %>: 
					</td> 
					<td> 
						<input name="dlicencesdate" type="text" id="dlicencesdate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDlicencesdate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dlicenceedate") %>: 
					</td> 
					<td> 
						<input name="dlicenceedate" type="text" id="dlicenceedate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDlicenceedate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ilicenceadays") %>: 
					</td> 
					<td> 
						<input name="ilicenceadays" type="text" id="ilicenceadays" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIlicenceadays(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bbusinessdate") %>: 
					</td> 
					<td> 
						<input name="bbusinessdate" type="text" id="bbusinessdate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBbusinessdate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dbusinesssdate") %>: 
					</td> 
					<td> 
						<input name="dbusinesssdate" type="text" id="dbusinesssdate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDbusinesssdate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dbusinessedate") %>: 
					</td> 
					<td> 
						<input name="dbusinessedate" type="text" id="dbusinessedate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDbusinessedate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ibusinessadays") %>: 
					</td> 
					<td> 
						<input name="ibusinessadays" type="text" id="ibusinessadays" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIbusinessadays(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bproxy") %>: 
					</td> 
					<td> 
						<input name="bproxy" type="text" id="bproxy" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBproxy(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dproxysdate") %>: 
					</td> 
					<td> 
						<input name="dproxysdate" type="text" id="dproxysdate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDproxysdate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dproxyedate") %>: 
					</td> 
					<td> 
						<input name="dproxyedate" type="text" id="dproxyedate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDproxyedate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iproxyadays") %>: 
					</td> 
					<td> 
						<input name="iproxyadays" type="text" id="iproxyadays" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIproxyadays(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cmemo") %>: 
					</td> 
					<td> 
						<input name="cmemo" type="text" id="cmemo" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCmemo(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("blimitsale") %>: 
					</td> 
					<td> 
						<input name="blimitsale" type="text" id="blimitsale" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBlimitsale(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuscontactcode") %>: 
					</td> 
					<td> 
						<input name="ccuscontactcode" type="text" id="ccuscontactcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcuscontactcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuscountrycode") %>: 
					</td> 
					<td> 
						<input name="ccuscountrycode" type="text" id="ccuscountrycode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcuscountrycode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusenname") %>: 
					</td> 
					<td> 
						<input name="ccusenname" type="text" id="ccusenname" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusenname(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusenaddr1") %>: 
					</td> 
					<td> 
						<input name="ccusenaddr1" type="text" id="ccusenaddr1" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusenaddr1(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusenaddr2") %>: 
					</td> 
					<td> 
						<input name="ccusenaddr2" type="text" id="ccusenaddr2" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusenaddr2(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusenaddr3") %>: 
					</td> 
					<td> 
						<input name="ccusenaddr3" type="text" id="ccusenaddr3" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusenaddr3(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusenaddr4") %>: 
					</td> 
					<td> 
						<input name="ccusenaddr4" type="text" id="ccusenaddr4" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusenaddr4(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusportcode") %>: 
					</td> 
					<td> 
						<input name="ccusportcode" type="text" id="ccusportcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusportcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cprimaryven") %>: 
					</td> 
					<td> 
						<input name="cprimaryven" type="text" id="cprimaryven" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCprimaryven(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fcommisionrate") %>: 
					</td> 
					<td> 
						<input name="fcommisionrate" type="text" id="fcommisionrate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFcommisionrate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("finsuerate") %>: 
					</td> 
					<td> 
						<input name="finsuerate" type="text" id="finsuerate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFinsuerate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bhomebranch") %>: 
					</td> 
					<td> 
						<input name="bhomebranch" type="text" id="bhomebranch" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBhomebranch(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cbranchaddr") %>: 
					</td> 
					<td> 
						<input name="cbranchaddr" type="text" id="cbranchaddr" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCbranchaddr(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cbranchphone") %>: 
					</td> 
					<td> 
						<input name="cbranchphone" type="text" id="cbranchphone" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCbranchphone(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cbranchperson") %>: 
					</td> 
					<td> 
						<input name="cbranchperson" type="text" id="cbranchperson" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCbranchperson(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccustradeccode") %>: 
					</td> 
					<td> 
						<input name="ccustradeccode" type="text" id="ccustradeccode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcustradeccode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("customerkcode") %>: 
					</td> 
					<td> 
						<input name="customerkcode" type="text" id="customerkcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCustomerkcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcusstate") %>: 
					</td> 
					<td> 
						<input name="bcusstate" type="text" id="bcusstate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcusstate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bshop") %>: 
					</td> 
					<td> 
						<input name="bshop" type="text" id="bshop" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBshop(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusbankcode") %>: 
					</td> 
					<td> 
						<input name="ccusbankcode" type="text" id="ccusbankcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusbankcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusexch_name") %>: 
					</td> 
					<td> 
						<input name="ccusexch_name" type="text" id="ccusexch_name" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusexch_name(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("icusgsptype") %>: 
					</td> 
					<td> 
						<input name="icusgsptype" type="text" id="icusgsptype" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIcusgsptype(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("icusgspauth") %>: 
					</td> 
					<td> 
						<input name="icusgspauth" type="text" id="icusgspauth" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIcusgspauth(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusgspauthno") %>: 
					</td> 
					<td> 
						<input name="ccusgspauthno" type="text" id="ccusgspauthno" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusgspauthno(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusbusinessno") %>: 
					</td> 
					<td> 
						<input name="ccusbusinessno" type="text" id="ccusbusinessno" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusbusinessno(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuslicenceno") %>: 
					</td> 
					<td> 
						<input name="ccuslicenceno" type="text" id="ccuslicenceno" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcuslicenceno(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcusdomestic") %>: 
					</td> 
					<td> 
						<input name="bcusdomestic" type="text" id="bcusdomestic" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcusdomestic(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcusoverseas") %>: 
					</td> 
					<td> 
						<input name="bcusoverseas" type="text" id="bcusoverseas" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcusoverseas(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuscreditcompany") %>: 
					</td> 
					<td> 
						<input name="ccuscreditcompany" type="text" id="ccuscreditcompany" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcuscreditcompany(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccussaprotocol") %>: 
					</td> 
					<td> 
						<input name="ccussaprotocol" type="text" id="ccussaprotocol" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcussaprotocol(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusexprotocol") %>: 
					</td> 
					<td> 
						<input name="ccusexprotocol" type="text" id="ccusexprotocol" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusexprotocol(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusotherprotocol") %>: 
					</td> 
					<td> 
						<input name="ccusotherprotocol" type="text" id="ccusotherprotocol" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusotherprotocol(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fcusdiscountrate") %>: 
					</td> 
					<td> 
						<input name="fcusdiscountrate" type="text" id="fcusdiscountrate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFcusdiscountrate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccussscode") %>: 
					</td> 
					<td> 
						<input name="ccussscode" type="text" id="ccussscode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcussscode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuscmprotocol") %>: 
					</td> 
					<td> 
						<input name="ccuscmprotocol" type="text" id="ccuscmprotocol" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcuscmprotocol(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dcuscreatedatetime") %>: 
					</td> 
					<td> 
						<input name="dcuscreatedatetime" type="text" id="dcuscreatedatetime" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDcuscreatedatetime(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusappdocno") %>: 
					</td> 
					<td> 
						<input name="ccusappdocno" type="text" id="ccusappdocno" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusappdocno(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
			</table> 
			 
			<!-- 工具栏 --> 
			<jsp:include page="../ToolBar/addOrModify_toolbar.jsp" /> 
		</form> 
	</body> 
</html> 
