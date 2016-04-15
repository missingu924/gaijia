<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.hz.dict.service.IDictionaryService"%> 
<%@page import="com.u8.obj.SoSomainObj"%> 
<!-- 基本信息 -->  
<% 
	// 上下文路径 
	String contextPath = request.getContextPath(); 
	 
	// 对象实例 
	SoSomainObj domainInstance = new SoSomainObj(); 
	// 该功能基本路径 
	String basePath = domainInstance.getBasePath(); 
 
	// 如果是修改，则获取对象信息 
	Object domainInstanceObj = request.getAttribute("domainInstance"); 
	if (domainInstanceObj != null) 
	{ 
		domainInstance = (SoSomainObj) domainInstanceObj; 
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
		if(!checkNull("cstcode","<%=domainInstance.getPropertyCnName("cstcode")%>")) return false; 
		if(!checkNull("ddate","<%=domainInstance.getPropertyCnName("ddate")%>")) return false; 
		if(!checkNull("csocode","<%=domainInstance.getPropertyCnName("csocode")%>")) return false; 
		if(!checkNull("ccuscode","<%=domainInstance.getPropertyCnName("ccuscode")%>")) return false; 
		if(!checkNull("cdepcode","<%=domainInstance.getPropertyCnName("cdepcode")%>")) return false; 
		if(!checkNull("cpersoncode","<%=domainInstance.getPropertyCnName("cpersoncode")%>")) return false; 
		if(!checkNull("csccode","<%=domainInstance.getPropertyCnName("csccode")%>")) return false; 
		if(!checkNull("ccusoaddress","<%=domainInstance.getPropertyCnName("ccusoaddress")%>")) return false; 
		if(!checkNull("cpaycode","<%=domainInstance.getPropertyCnName("cpaycode")%>")) return false; 
		if(!checkNull("cexch_name","<%=domainInstance.getPropertyCnName("cexch_name")%>")) return false; 
		if(!checkNull("iexchrate","<%=domainInstance.getPropertyCnName("iexchrate")%>")) return false; 
		if(!checkNull("itaxrate","<%=domainInstance.getPropertyCnName("itaxrate")%>")) return false; 
		if(!checkNull("imoney","<%=domainInstance.getPropertyCnName("imoney")%>")) return false; 
		if(!checkNull("cmemo","<%=domainInstance.getPropertyCnName("cmemo")%>")) return false; 
		if(!checkNull("istatus","<%=domainInstance.getPropertyCnName("istatus")%>")) return false; 
		if(!checkNull("cmaker","<%=domainInstance.getPropertyCnName("cmaker")%>")) return false; 
		if(!checkNull("cverifier","<%=domainInstance.getPropertyCnName("cverifier")%>")) return false; 
		if(!checkNull("ccloser","<%=domainInstance.getPropertyCnName("ccloser")%>")) return false; 
		if(!checkNull("bdisflag","<%=domainInstance.getPropertyCnName("bdisflag")%>")) return false; 
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
		if(!checkNull("breturnflag","<%=domainInstance.getPropertyCnName("breturnflag")%>")) return false; 
		if(!checkNull("ccusname","<%=domainInstance.getPropertyCnName("ccusname")%>")) return false; 
		if(!checkNull("border","<%=domainInstance.getPropertyCnName("border")%>")) return false; 
		if(!checkNull("id","<%=domainInstance.getPropertyCnName("id")%>")) return false; 
		if(!checkNull("ivtid","<%=domainInstance.getPropertyCnName("ivtid")%>")) return false; 
		if(!checkNull("ufts","<%=domainInstance.getPropertyCnName("ufts")%>")) return false; 
		if(!checkNull("cchanger","<%=domainInstance.getPropertyCnName("cchanger")%>")) return false; 
		if(!checkNull("cbustype","<%=domainInstance.getPropertyCnName("cbustype")%>")) return false; 
		if(!checkNull("ccrechpname","<%=domainInstance.getPropertyCnName("ccrechpname")%>")) return false; 
		if(!checkNull("cdefine11","<%=domainInstance.getPropertyCnName("cdefine11")%>")) return false; 
		if(!checkNull("cdefine12","<%=domainInstance.getPropertyCnName("cdefine12")%>")) return false; 
		if(!checkNull("cdefine13","<%=domainInstance.getPropertyCnName("cdefine13")%>")) return false; 
		if(!checkNull("cdefine14","<%=domainInstance.getPropertyCnName("cdefine14")%>")) return false; 
		if(!checkNull("cdefine15","<%=domainInstance.getPropertyCnName("cdefine15")%>")) return false; 
		if(!checkNull("cdefine16","<%=domainInstance.getPropertyCnName("cdefine16")%>")) return false; 
		if(!checkNull("coppcode","<%=domainInstance.getPropertyCnName("coppcode")%>")) return false; 
		if(!checkNull("clocker","<%=domainInstance.getPropertyCnName("clocker")%>")) return false; 
		if(!checkNull("dpremodatebt","<%=domainInstance.getPropertyCnName("dpremodatebt")%>")) return false; 
		if(!checkNull("dpredatebt","<%=domainInstance.getPropertyCnName("dpredatebt")%>")) return false; 
		if(!checkNull("cgatheringplan","<%=domainInstance.getPropertyCnName("cgatheringplan")%>")) return false; 
		if(!checkNull("caddcode","<%=domainInstance.getPropertyCnName("caddcode")%>")) return false; 
		if(!checkNull("iverifystate","<%=domainInstance.getPropertyCnName("iverifystate")%>")) return false; 
		if(!checkNull("ireturncount","<%=domainInstance.getPropertyCnName("ireturncount")%>")) return false; 
		if(!checkNull("iswfcontrolled","<%=domainInstance.getPropertyCnName("iswfcontrolled")%>")) return false; 
		if(!checkNull("icreditstate","<%=domainInstance.getPropertyCnName("icreditstate")%>")) return false; 
		if(!checkNull("cmodifier","<%=domainInstance.getPropertyCnName("cmodifier")%>")) return false; 
		if(!checkNull("dmoddate","<%=domainInstance.getPropertyCnName("dmoddate")%>")) return false; 
		if(!checkNull("dverifydate","<%=domainInstance.getPropertyCnName("dverifydate")%>")) return false; 
		if(!checkNull("ccusperson","<%=domainInstance.getPropertyCnName("ccusperson")%>")) return false; 
		if(!checkNull("dcreatesystime","<%=domainInstance.getPropertyCnName("dcreatesystime")%>")) return false; 
		if(!checkNull("dverifysystime","<%=domainInstance.getPropertyCnName("dverifysystime")%>")) return false; 
		if(!checkNull("dmodifysystime","<%=domainInstance.getPropertyCnName("dmodifysystime")%>")) return false; 
		if(!checkNull("iflowid","<%=domainInstance.getPropertyCnName("iflowid")%>")) return false; 
		if(!checkNull("bcashsale","<%=domainInstance.getPropertyCnName("bcashsale")%>")) return false; 
		if(!checkNull("cgathingcode","<%=domainInstance.getPropertyCnName("cgathingcode")%>")) return false; 
		if(!checkNull("cchangeverifier","<%=domainInstance.getPropertyCnName("cchangeverifier")%>")) return false; 
		if(!checkNull("dchangeverifydate","<%=domainInstance.getPropertyCnName("dchangeverifydate")%>")) return false; 
		if(!checkNull("dchangeverifytime","<%=domainInstance.getPropertyCnName("dchangeverifytime")%>")) return false; 
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
						<%=domainInstance.getPropertyCnName("ddate") %>: 
					</td> 
					<td> 
						<input name="ddate" type="text" id="ddate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDdate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("csocode") %>: 
					</td> 
					<td> 
						<input name="csocode" type="text" id="csocode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCsocode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccuscode") %>: 
					</td> 
					<td> 
						<input name="ccuscode" type="text" id="ccuscode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcuscode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdepcode") %>: 
					</td> 
					<td> 
						<input name="cdepcode" type="text" id="cdepcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdepcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cpersoncode") %>: 
					</td> 
					<td> 
						<input name="cpersoncode" type="text" id="cpersoncode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCpersoncode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("csccode") %>: 
					</td> 
					<td> 
						<input name="csccode" type="text" id="csccode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCsccode(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("cpaycode") %>: 
					</td> 
					<td> 
						<input name="cpaycode" type="text" id="cpaycode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCpaycode(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("imoney") %>: 
					</td> 
					<td> 
						<input name="imoney" type="text" id="imoney" value="<%=StringUtil.getNotEmptyStr(domainInstance.getImoney(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("istatus") %>: 
					</td> 
					<td> 
						<input name="istatus" type="text" id="istatus" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIstatus(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cmaker") %>: 
					</td> 
					<td> 
						<input name="cmaker" type="text" id="cmaker" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCmaker(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cverifier") %>: 
					</td> 
					<td> 
						<input name="cverifier" type="text" id="cverifier" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCverifier(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccloser") %>: 
					</td> 
					<td> 
						<input name="ccloser" type="text" id="ccloser" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcloser(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bdisflag") %>: 
					</td> 
					<td> 
						<input name="bdisflag" type="text" id="bdisflag" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBdisflag(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine1") %>: 
					</td> 
					<td> 
						<input name="cdefine1" type="text" id="cdefine1" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine1(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine2") %>: 
					</td> 
					<td> 
						<input name="cdefine2" type="text" id="cdefine2" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine2(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine3") %>: 
					</td> 
					<td> 
						<input name="cdefine3" type="text" id="cdefine3" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine3(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine4") %>: 
					</td> 
					<td> 
						<input name="cdefine4" type="text" id="cdefine4" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine4(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine5") %>: 
					</td> 
					<td> 
						<input name="cdefine5" type="text" id="cdefine5" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine5(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine6") %>: 
					</td> 
					<td> 
						<input name="cdefine6" type="text" id="cdefine6" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine6(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine7") %>: 
					</td> 
					<td> 
						<input name="cdefine7" type="text" id="cdefine7" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine7(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine8") %>: 
					</td> 
					<td> 
						<input name="cdefine8" type="text" id="cdefine8" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine8(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine9") %>: 
					</td> 
					<td> 
						<input name="cdefine9" type="text" id="cdefine9" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine9(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine10") %>: 
					</td> 
					<td> 
						<input name="cdefine10" type="text" id="cdefine10" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine10(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("breturnflag") %>: 
					</td> 
					<td> 
						<input name="breturnflag" type="text" id="breturnflag" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBreturnflag(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
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
						<%=domainInstance.getPropertyCnName("border") %>: 
					</td> 
					<td> 
						<input name="border" type="text" id="border" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBorder(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("id") %>: 
					</td> 
					<td> 
						<input name="id" type="text" id="id" value="<%=StringUtil.getNotEmptyStr(domainInstance.getId(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ivtid") %>: 
					</td> 
					<td> 
						<input name="ivtid" type="text" id="ivtid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIvtid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ufts") %>: 
					</td> 
					<td> 
						<input name="ufts" type="text" id="ufts" value="<%=StringUtil.getNotEmptyStr(domainInstance.getUfts(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cchanger") %>: 
					</td> 
					<td> 
						<input name="cchanger" type="text" id="cchanger" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCchanger(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cbustype") %>: 
					</td> 
					<td> 
						<input name="cbustype" type="text" id="cbustype" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCbustype(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccrechpname") %>: 
					</td> 
					<td> 
						<input name="ccrechpname" type="text" id="ccrechpname" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcrechpname(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine11") %>: 
					</td> 
					<td> 
						<input name="cdefine11" type="text" id="cdefine11" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine11(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine12") %>: 
					</td> 
					<td> 
						<input name="cdefine12" type="text" id="cdefine12" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine12(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine13") %>: 
					</td> 
					<td> 
						<input name="cdefine13" type="text" id="cdefine13" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine13(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine14") %>: 
					</td> 
					<td> 
						<input name="cdefine14" type="text" id="cdefine14" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine14(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine15") %>: 
					</td> 
					<td> 
						<input name="cdefine15" type="text" id="cdefine15" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine15(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine16") %>: 
					</td> 
					<td> 
						<input name="cdefine16" type="text" id="cdefine16" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine16(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("coppcode") %>: 
					</td> 
					<td> 
						<input name="coppcode" type="text" id="coppcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCoppcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("clocker") %>: 
					</td> 
					<td> 
						<input name="clocker" type="text" id="clocker" value="<%=StringUtil.getNotEmptyStr(domainInstance.getClocker(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dpremodatebt") %>: 
					</td> 
					<td> 
						<input name="dpremodatebt" type="text" id="dpremodatebt" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDpremodatebt(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dpredatebt") %>: 
					</td> 
					<td> 
						<input name="dpredatebt" type="text" id="dpredatebt" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDpredatebt(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cgatheringplan") %>: 
					</td> 
					<td> 
						<input name="cgatheringplan" type="text" id="cgatheringplan" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCgatheringplan(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("caddcode") %>: 
					</td> 
					<td> 
						<input name="caddcode" type="text" id="caddcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCaddcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iverifystate") %>: 
					</td> 
					<td> 
						<input name="iverifystate" type="text" id="iverifystate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIverifystate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ireturncount") %>: 
					</td> 
					<td> 
						<input name="ireturncount" type="text" id="ireturncount" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIreturncount(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iswfcontrolled") %>: 
					</td> 
					<td> 
						<input name="iswfcontrolled" type="text" id="iswfcontrolled" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIswfcontrolled(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("icreditstate") %>: 
					</td> 
					<td> 
						<input name="icreditstate" type="text" id="icreditstate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIcreditstate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cmodifier") %>: 
					</td> 
					<td> 
						<input name="cmodifier" type="text" id="cmodifier" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCmodifier(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dmoddate") %>: 
					</td> 
					<td> 
						<input name="dmoddate" type="text" id="dmoddate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDmoddate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dverifydate") %>: 
					</td> 
					<td> 
						<input name="dverifydate" type="text" id="dverifydate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDverifydate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
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
						<%=domainInstance.getPropertyCnName("dcreatesystime") %>: 
					</td> 
					<td> 
						<input name="dcreatesystime" type="text" id="dcreatesystime" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDcreatesystime(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dverifysystime") %>: 
					</td> 
					<td> 
						<input name="dverifysystime" type="text" id="dverifysystime" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDverifysystime(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dmodifysystime") %>: 
					</td> 
					<td> 
						<input name="dmodifysystime" type="text" id="dmodifysystime" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDmodifysystime(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iflowid") %>: 
					</td> 
					<td> 
						<input name="iflowid" type="text" id="iflowid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIflowid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcashsale") %>: 
					</td> 
					<td> 
						<input name="bcashsale" type="text" id="bcashsale" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcashsale(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cgathingcode") %>: 
					</td> 
					<td> 
						<input name="cgathingcode" type="text" id="cgathingcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCgathingcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cchangeverifier") %>: 
					</td> 
					<td> 
						<input name="cchangeverifier" type="text" id="cchangeverifier" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCchangeverifier(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dchangeverifydate") %>: 
					</td> 
					<td> 
						<input name="dchangeverifydate" type="text" id="dchangeverifydate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDchangeverifydate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dchangeverifytime") %>: 
					</td> 
					<td> 
						<input name="dchangeverifytime" type="text" id="dchangeverifytime" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDchangeverifytime(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("outid") %>: 
					</td> 
					<td> 
						<input name="outid" type="text" id="outid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getOutid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
			</table> 
			 
			<!-- 工具栏 --> 
			<jsp:include page="../ToolBar/addOrModify_toolbar.jsp" /> 
		</form> 
	</body> 
</html> 
