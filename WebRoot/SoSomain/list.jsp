<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 --> 
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.common.obj.PaginationObj"%> 
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.u8.obj.SoSomainObj"%> 
<!-- 基本信息 --> 
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
						<%=domainInstance.getPropertyCnName("csocode") %> 
						<input name="csocode" type="text" id="csocode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCsocode())%>" size="20" > 
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
						<th><%=domainInstance.getPropertyCnName("cstcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ddate") %></th> 
						<th><%=domainInstance.getPropertyCnName("csocode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuscode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdepcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cpersoncode") %></th> 
						<th><%=domainInstance.getPropertyCnName("csccode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusoaddress") %></th> 
						<th><%=domainInstance.getPropertyCnName("cpaycode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cexch_name") %></th> 
						<th><%=domainInstance.getPropertyCnName("iexchrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("itaxrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("imoney") %></th> 
						<th><%=domainInstance.getPropertyCnName("cmemo") %></th> 
						<th><%=domainInstance.getPropertyCnName("istatus") %></th> 
						<th><%=domainInstance.getPropertyCnName("cmaker") %></th> 
						<th><%=domainInstance.getPropertyCnName("cverifier") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccloser") %></th> 
						<th><%=domainInstance.getPropertyCnName("bdisflag") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine1") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine2") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine3") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine4") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine5") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine6") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine7") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine8") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine9") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine10") %></th> 
						<th><%=domainInstance.getPropertyCnName("breturnflag") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusname") %></th> 
						<th><%=domainInstance.getPropertyCnName("border") %></th> 
						<th><%=domainInstance.getPropertyCnName("id") %></th> 
						<th><%=domainInstance.getPropertyCnName("ivtid") %></th> 
						<th><%=domainInstance.getPropertyCnName("cchanger") %></th> 
						<th><%=domainInstance.getPropertyCnName("cbustype") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccrechpname") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine11") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine12") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine13") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine14") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine15") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine16") %></th> 
						<th><%=domainInstance.getPropertyCnName("coppcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("clocker") %></th> 
						<th><%=domainInstance.getPropertyCnName("dpremodatebt") %></th> 
						<th><%=domainInstance.getPropertyCnName("dpredatebt") %></th> 
						<th><%=domainInstance.getPropertyCnName("cgatheringplan") %></th> 
						<th><%=domainInstance.getPropertyCnName("caddcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("iverifystate") %></th> 
						<th><%=domainInstance.getPropertyCnName("ireturncount") %></th> 
						<th><%=domainInstance.getPropertyCnName("iswfcontrolled") %></th> 
						<th><%=domainInstance.getPropertyCnName("icreditstate") %></th> 
						<th><%=domainInstance.getPropertyCnName("cmodifier") %></th> 
						<th><%=domainInstance.getPropertyCnName("dmoddate") %></th> 
						<th><%=domainInstance.getPropertyCnName("dverifydate") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusperson") %></th> 
						<th><%=domainInstance.getPropertyCnName("dcreatesystime") %></th> 
						<th><%=domainInstance.getPropertyCnName("dverifysystime") %></th> 
						<th><%=domainInstance.getPropertyCnName("dmodifysystime") %></th> 
						<th><%=domainInstance.getPropertyCnName("iflowid") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcashsale") %></th> 
						<th><%=domainInstance.getPropertyCnName("cgathingcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cchangeverifier") %></th> 
						<th><%=domainInstance.getPropertyCnName("dchangeverifydate") %></th> 
						<th><%=domainInstance.getPropertyCnName("dchangeverifytime") %></th> 
						<th><%=domainInstance.getPropertyCnName("outid") %></th> 
						<th>操作</th> 
					</tr> 
				</thead> 
				<% 
					for (int i = 0; i < list.size(); i++) 
						{ 
							SoSomainObj o = (SoSomainObj) list.get(i); 
				%> 
				<tr> 
					<td> 
						<a href="#" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=detail4this&<%=o.findKeyColumnName()%>=<%=o.getKeyValue()%>')"> <%=StringUtil.getNotEmptyStr(o.getKeyValue())%> </a> 
					</td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDdate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCsocode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcuscode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdepcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCpersoncode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCsccode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusoaddress())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCpaycode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCexch_name())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIexchrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getItaxrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getImoney())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCmemo())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIstatus())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCmaker())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCverifier())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcloser())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBdisflag())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine1())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine2())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine3())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine4())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine5())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine6())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine7())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine8())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine9())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine10())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBreturnflag())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusname())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBorder())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getId())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIvtid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCchanger())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCbustype())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcrechpname())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine11())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine12())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine13())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine14())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine15())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine16())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCoppcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getClocker())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDpremodatebt())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDpredatebt())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCgatheringplan())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCaddcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIverifystate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIreturncount())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIswfcontrolled())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIcreditstate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCmodifier())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDmoddate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDverifydate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusperson())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDcreatesystime())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDverifysystime())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDmodifysystime())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIflowid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcashsale())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCgathingcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCchangeverifier())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDchangeverifydate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDchangeverifytime())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getOutid())%></td> 
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
