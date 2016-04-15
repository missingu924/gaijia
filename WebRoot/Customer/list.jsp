<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 --> 
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.common.obj.PaginationObj"%> 
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.u8.obj.CustomerObj"%> 
<!-- 基本信息 --> 
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
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />		<title><%=domainInstance.getCnName() %>列表</title> 
		<link href="../css/global.css" rel="stylesheet" type="text/css"> 
		<link href="../css/table.css" rel="stylesheet" type="text/css"> 
		<script type="text/javascript" src="../js/jquery-2.0.3.min.js"></script> 
		<script type="text/javascript" src="../js/utils.js"></script> 
		<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script> 
	</head> 
	<body> 
		<form name="pageForm" id="pageForm" method="post" action="<%=request.getContextPath()%>/<%=basePath%>/Servlet?method=list4this"> 
			 
			<!-- 查询条件 --> 
			<table class="search_table" align="center" width="98%"> 
				<tr> 
					<td align="left"> 
						<%=domainInstance.getPropertyCnName("ccusname") %> 
						<input name="ccusname" type="text" id="ccusname" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusname())%>" size="20" > 
						&nbsp;  
						<input name="searchButton" type="button" class="button button_search" value="查询" onClick="toPage(1)"> 
					</td> 
					<td align="right"> 
						<input name="addButton" type="button" class="button button_add" value="增加" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=preModify4this')"> 
						<input name="uploadButton" type="button" class="button button_upload" value="导入" onClick="openBigModalDialog('<%=contextPath%>/ExcelParser/uploadFile.jsp?basedbobj_class=<%=domainInstance.getClass().getCanonicalName()%>')">
					</td> 
				</tr> 
			</table> 
 
			<!-- 查询结果 --> 
			<% 
				PaginationObj pagination = null; 
				List list = new ArrayList(); 
 
				Object paginationObj = request.getAttribute("domainPagination"); 
				if (paginationObj != null) 
				{ 
					pagination = (PaginationObj) paginationObj; 
					list = (List) pagination.getDataList(); 
				} 
				if (paginationObj == null) 
				{ 
					out.print("没有符合条件的数据，请重新设置条件再查询。"); 
				} else 
				{ 
			%> 
			<table class="table table-bordered table-striped" align="center" width="98%"> 
				<thead> 
					<tr> 
						<th><%=domainInstance.getPropertyCnName("ccuscode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusname") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusabbname") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccccode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdccode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ctrade") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusaddress") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuspostcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusregcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusbank") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusaccount") %></th> 
						<th><%=domainInstance.getPropertyCnName("dcusdevdate") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuslperson") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusemail") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusperson") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusphone") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusfax") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusbp") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccushand") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuspperson") %></th> 
						<th><%=domainInstance.getPropertyCnName("icusdisrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuscregrade") %></th> 
						<th><%=domainInstance.getPropertyCnName("icuscreline") %></th> 
						<th><%=domainInstance.getPropertyCnName("icuscredate") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuspaycond") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusoaddress") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusotype") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusheadcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuswhcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdepart") %></th> 
						<th><%=domainInstance.getPropertyCnName("iarmoney") %></th> 
						<th><%=domainInstance.getPropertyCnName("dlastdate") %></th> 
						<th><%=domainInstance.getPropertyCnName("ilastmoney") %></th> 
						<th><%=domainInstance.getPropertyCnName("dlrdate") %></th> 
						<th><%=domainInstance.getPropertyCnName("ilrmoney") %></th> 
						<th><%=domainInstance.getPropertyCnName("denddate") %></th> 
						<th><%=domainInstance.getPropertyCnName("ifrequency") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine1") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine2") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine3") %></th> 
						<th><%=domainInstance.getPropertyCnName("icostgrade") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccreateperson") %></th> 
						<th><%=domainInstance.getPropertyCnName("cmodifyperson") %></th> 
						<th><%=domainInstance.getPropertyCnName("dmodifydate") %></th> 
						<th><%=domainInstance.getPropertyCnName("crelvendor") %></th> 
						<th><%=domainInstance.getPropertyCnName("iid") %></th> 
						<th><%=domainInstance.getPropertyCnName("cpricegroup") %></th> 
						<th><%=domainInstance.getPropertyCnName("coffergrade") %></th> 
						<th><%=domainInstance.getPropertyCnName("iofferrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine4") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine5") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine6") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine7") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine8") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine9") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine10") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine11") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine12") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine13") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine14") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine15") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusdefine16") %></th> 
						<th><%=domainInstance.getPropertyCnName("pubufts") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvoicecompany") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcredit") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcreditdate") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcreditbyhead") %></th> 
						<th><%=domainInstance.getPropertyCnName("blicencedate") %></th> 
						<th><%=domainInstance.getPropertyCnName("dlicencesdate") %></th> 
						<th><%=domainInstance.getPropertyCnName("dlicenceedate") %></th> 
						<th><%=domainInstance.getPropertyCnName("ilicenceadays") %></th> 
						<th><%=domainInstance.getPropertyCnName("bbusinessdate") %></th> 
						<th><%=domainInstance.getPropertyCnName("dbusinesssdate") %></th> 
						<th><%=domainInstance.getPropertyCnName("dbusinessedate") %></th> 
						<th><%=domainInstance.getPropertyCnName("ibusinessadays") %></th> 
						<th><%=domainInstance.getPropertyCnName("bproxy") %></th> 
						<th><%=domainInstance.getPropertyCnName("dproxysdate") %></th> 
						<th><%=domainInstance.getPropertyCnName("dproxyedate") %></th> 
						<th><%=domainInstance.getPropertyCnName("iproxyadays") %></th> 
						<th><%=domainInstance.getPropertyCnName("cmemo") %></th> 
						<th><%=domainInstance.getPropertyCnName("blimitsale") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuscontactcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuscountrycode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusenname") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusenaddr1") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusenaddr2") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusenaddr3") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusenaddr4") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusportcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cprimaryven") %></th> 
						<th><%=domainInstance.getPropertyCnName("fcommisionrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("finsuerate") %></th> 
						<th><%=domainInstance.getPropertyCnName("bhomebranch") %></th> 
						<th><%=domainInstance.getPropertyCnName("cbranchaddr") %></th> 
						<th><%=domainInstance.getPropertyCnName("cbranchphone") %></th> 
						<th><%=domainInstance.getPropertyCnName("cbranchperson") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccustradeccode") %></th> 
						<th><%=domainInstance.getPropertyCnName("customerkcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcusstate") %></th> 
						<th><%=domainInstance.getPropertyCnName("bshop") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusbankcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusexch_name") %></th> 
						<th><%=domainInstance.getPropertyCnName("icusgsptype") %></th> 
						<th><%=domainInstance.getPropertyCnName("icusgspauth") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusgspauthno") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusbusinessno") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuslicenceno") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcusdomestic") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcusoverseas") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuscreditcompany") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccussaprotocol") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusexprotocol") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusotherprotocol") %></th> 
						<th><%=domainInstance.getPropertyCnName("fcusdiscountrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccussscode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuscmprotocol") %></th> 
						<th><%=domainInstance.getPropertyCnName("dcuscreatedatetime") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusappdocno") %></th> 
						<th>操作</th> 
					</tr> 
				</thead> 
				<% 
					for (int i = 0; i < list.size(); i++) 
						{ 
							CustomerObj o = (CustomerObj) list.get(i); 
				%> 
				<tr> 
					<td> 
						<a href="#" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=detail4this&<%=o.findKeyColumnName()%>=<%=o.getKeyValue()%>')"> <%=StringUtil.getNotEmptyStr(o.getKeyValue())%> </a> 
					</td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusname())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusabbname())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcccode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdccode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCtrade())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusaddress())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcuspostcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusregcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusbank())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusaccount())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDcusdevdate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcuslperson())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusemail())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusperson())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusphone())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusfax())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusbp())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcushand())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcuspperson())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIcusdisrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcuscregrade())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIcuscreline())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIcuscredate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcuspaycond())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusoaddress())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusotype())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusheadcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcuswhcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdepart())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIarmoney())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDlastdate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIlastmoney())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDlrdate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIlrmoney())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDenddate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIfrequency())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine1())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine2())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine3())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIcostgrade())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcreateperson())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCmodifyperson())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDmodifydate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCrelvendor())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCpricegroup())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCoffergrade())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIofferrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine4())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine5())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine6())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine7())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine8())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine9())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine10())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine11())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine12())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine13())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine14())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine15())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusdefine16())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getPubufts())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvoicecompany())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcredit())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcreditdate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcreditbyhead())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBlicencedate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDlicencesdate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDlicenceedate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIlicenceadays())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBbusinessdate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDbusinesssdate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDbusinessedate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIbusinessadays())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBproxy())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDproxysdate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDproxyedate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIproxyadays())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCmemo())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBlimitsale())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcuscontactcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcuscountrycode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusenname())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusenaddr1())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusenaddr2())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusenaddr3())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusenaddr4())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusportcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCprimaryven())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFcommisionrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFinsuerate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBhomebranch())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCbranchaddr())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCbranchphone())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCbranchperson())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcustradeccode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCustomerkcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcusstate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBshop())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusbankcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusexch_name())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIcusgsptype())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIcusgspauth())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusgspauthno())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusbusinessno())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcuslicenceno())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcusdomestic())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcusoverseas())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcuscreditcompany())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcussaprotocol())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusexprotocol())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusotherprotocol())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFcusdiscountrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcussscode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcuscmprotocol())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDcuscreatedatetime())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusappdocno())%></td> 
					<td align="left" style="cursor: pointer"> 
						<input type="button" class="button button_modify" title="修改" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=preModify4this&<%=o.findKeyColumnName()%>=<%=o.getKeyValue()%>')" /> 
						&nbsp; 
						<input type="button" class="button button_delete" title="删除" 
							onClick="javascript: 
								$('#pageForm').attr('action','<%=contextPath%>/<%=basePath%>/Servlet?method=delete4this&<%=o.findKeyColumnName()%>_4del=<%=o.getKeyValue()%>'); 
								$('#pageForm').submit(); 
								" /> 
					</td> 
				</tr> 
				<% 
					} 
				%> 
			</table> 
 
			<!-- 翻页操作栏 --> 
			<jsp:include page="../ToolBar/pagination_toolbar.jsp"> 
				<jsp:param name="basePath" value="<%=basePath%>"/> 
			</jsp:include> 
 
			<% 
				} 
			%> 
		</form>  
 
	</body> 
</html> 
