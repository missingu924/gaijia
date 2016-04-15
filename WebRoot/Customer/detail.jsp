<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.u8.obj.CustomerObj"%> 
<% 
	// 当前上下文路径  
	String contextPath = request.getContextPath();  
  
	// 该功能对象实例  
	CustomerObj domainInstance = (CustomerObj) request.getAttribute("domainInstance");  
	// 该功能路径  
	String basePath = domainInstance.getBasePath();  
%> 
<html> 
	<head> 
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />		<title><%=domainInstance.getCnName()%>详情</title> 
		<link href="../css/global.css" rel="stylesheet" type="text/css" /> 
		<link href="../css/table.css" rel="stylesheet" type="text/css" /> 
		<script src="../js/jquery-2.0.3.min.js"></script> 
		<script src="../js/utils.js"></script> 
	</head> 
	<body> 
		<!-- 表格标题 --> 
		<table width="600" align="center" class="title_table"> 
			<tr> 
				<td> 
					<img src="../images/svg/heavy/green/list.png" width="18" height="18" align="absmiddle"> 
					&nbsp;&nbsp;<%=domainInstance.getCnName()%>信息 
				</td> 
			</tr> 
		</table> 
		<!-- 详细信息 --> 
		<table width="600" align="center" class="detail_table detail_table-bordered detail_table-striped"> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuscode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcuscode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusabbname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusabbname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccccode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcccode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdccode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdccode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ctrade") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCtrade())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusaddress") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusaddress())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuspostcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcuspostcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusregcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusregcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusbank") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusbank())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusaccount") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusaccount())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dcusdevdate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDcusdevdate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuslperson") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcuslperson())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusemail") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusemail())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusperson") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusperson())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusphone") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusphone())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusfax") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusfax())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusbp") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusbp())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccushand") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcushand())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuspperson") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcuspperson())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("icusdisrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIcusdisrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuscregrade") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcuscregrade())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("icuscreline") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIcuscreline())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("icuscredate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIcuscredate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuspaycond") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcuspaycond())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusoaddress") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusoaddress())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusotype") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusotype())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusheadcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusheadcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuswhcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcuswhcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdepart") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdepart())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iarmoney") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIarmoney())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dlastdate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDlastdate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ilastmoney") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIlastmoney())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dlrdate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDlrdate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ilrmoney") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIlrmoney())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("denddate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDenddate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ifrequency") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIfrequency())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine1") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine1())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine2") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine2())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine3") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine3())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("icostgrade") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIcostgrade())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccreateperson") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcreateperson())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cmodifyperson") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCmodifyperson())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dmodifydate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDmodifydate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("crelvendor") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCrelvendor())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cpricegroup") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCpricegroup())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("coffergrade") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCoffergrade())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iofferrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIofferrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine4") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine4())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine5") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine5())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine6") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine6())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine7") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine7())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine8") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine8())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine9") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine9())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine10") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine10())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine11") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine11())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine12") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine12())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine13") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine13())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine14") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine14())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine15") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine15())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusdefine16") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusdefine16())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("pubufts") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getPubufts())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvoicecompany") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvoicecompany())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcredit") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcredit())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcreditdate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcreditdate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcreditbyhead") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcreditbyhead())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("blicencedate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBlicencedate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dlicencesdate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDlicencesdate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dlicenceedate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDlicenceedate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ilicenceadays") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIlicenceadays())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bbusinessdate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBbusinessdate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dbusinesssdate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDbusinesssdate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dbusinessedate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDbusinessedate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ibusinessadays") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIbusinessadays())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bproxy") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBproxy())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dproxysdate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDproxysdate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dproxyedate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDproxyedate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iproxyadays") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIproxyadays())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cmemo") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCmemo())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("blimitsale") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBlimitsale())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuscontactcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcuscontactcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuscountrycode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcuscountrycode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusenname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusenname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusenaddr1") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusenaddr1())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusenaddr2") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusenaddr2())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusenaddr3") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusenaddr3())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusenaddr4") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusenaddr4())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusportcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusportcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cprimaryven") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCprimaryven())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fcommisionrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFcommisionrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("finsuerate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFinsuerate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bhomebranch") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBhomebranch())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cbranchaddr") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCbranchaddr())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cbranchphone") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCbranchphone())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cbranchperson") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCbranchperson())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccustradeccode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcustradeccode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("customerkcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCustomerkcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcusstate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcusstate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bshop") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBshop())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusbankcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusbankcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusexch_name") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusexch_name())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("icusgsptype") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIcusgsptype())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("icusgspauth") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIcusgspauth())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusgspauthno") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusgspauthno())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusbusinessno") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusbusinessno())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuslicenceno") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcuslicenceno())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcusdomestic") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcusdomestic())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcusoverseas") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcusoverseas())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuscreditcompany") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcuscreditcompany())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccussaprotocol") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcussaprotocol())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusexprotocol") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusexprotocol())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusotherprotocol") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusotherprotocol())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fcusdiscountrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFcusdiscountrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccussscode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcussscode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuscmprotocol") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcuscmprotocol())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dcuscreatedatetime") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDcuscreatedatetime())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusappdocno") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusappdocno())%></td> 
			</tr> 
		</table> 
		 
		<!-- 工具栏 --> 
		<jsp:include page="../ToolBar/detail_toolbar.jsp"/> 
	</body> 
</html> 
