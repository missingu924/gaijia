<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.u8.obj.SoSomainObj"%> 
<% 
	// 当前上下文路径  
	String contextPath = request.getContextPath();  
  
	// 该功能对象实例  
	SoSomainObj domainInstance = (SoSomainObj) request.getAttribute("domainInstance");  
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
					<%=domainInstance.getPropertyCnName("cstcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCstcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ddate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDdate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("csocode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCsocode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuscode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcuscode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdepcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdepcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cpersoncode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCpersoncode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("csccode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCsccode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusoaddress") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusoaddress())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cpaycode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCpaycode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cexch_name") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCexch_name())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iexchrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIexchrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("itaxrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getItaxrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("imoney") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getImoney())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cmemo") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCmemo())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("istatus") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIstatus())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cmaker") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCmaker())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cverifier") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCverifier())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccloser") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcloser())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bdisflag") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBdisflag())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine1") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine1())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine2") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine2())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine3") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine3())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine4") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine4())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine5") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine5())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine6") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine6())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine7") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine7())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine8") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine8())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine9") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine9())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine10") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine10())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("breturnflag") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBreturnflag())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("border") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBorder())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("id") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getId())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ivtid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIvtid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ufts") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getUfts())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cchanger") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCchanger())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cbustype") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCbustype())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccrechpname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcrechpname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine11") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine11())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine12") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine12())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine13") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine13())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine14") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine14())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine15") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine15())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine16") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine16())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("coppcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCoppcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("clocker") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getClocker())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dpremodatebt") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDpremodatebt())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dpredatebt") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDpredatebt())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cgatheringplan") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCgatheringplan())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("caddcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCaddcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iverifystate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIverifystate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ireturncount") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIreturncount())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iswfcontrolled") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIswfcontrolled())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("icreditstate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIcreditstate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cmodifier") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCmodifier())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dmoddate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDmoddate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dverifydate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDverifydate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusperson") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusperson())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dcreatesystime") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDcreatesystime())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dverifysystime") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDverifysystime())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dmodifysystime") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDmodifysystime())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iflowid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIflowid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcashsale") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcashsale())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cgathingcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCgathingcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cchangeverifier") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCchangeverifier())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dchangeverifydate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDchangeverifydate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dchangeverifytime") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDchangeverifytime())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("outid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getOutid())%></td> 
			</tr> 
		</table> 
		 
		<!-- 工具栏 --> 
		<jsp:include page="../ToolBar/detail_toolbar.jsp"/> 
	</body> 
</html> 
