<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 --> 
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.common.obj.PaginationObj"%> 
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.u8.obj.SoSodetailsObj"%> 
<!-- 基本信息 --> 
<% 
	// 当前上下文路径 
	String contextPath = request.getContextPath(); 
 
	// 该功能对象实例 
	SoSodetailsObj domainInstance = (SoSodetailsObj) request.getAttribute("domainInstance"); 
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
						<th><%=domainInstance.getPropertyCnName("autoid") %></th> 
						<th><%=domainInstance.getPropertyCnName("csocode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("dpredate") %></th> 
						<th><%=domainInstance.getPropertyCnName("iquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("inum") %></th> 
						<th><%=domainInstance.getPropertyCnName("iquotedprice") %></th> 
						<th><%=domainInstance.getPropertyCnName("iunitprice") %></th> 
						<th><%=domainInstance.getPropertyCnName("itaxunitprice") %></th> 
						<th><%=domainInstance.getPropertyCnName("imoney") %></th> 
						<th><%=domainInstance.getPropertyCnName("itax") %></th> 
						<th><%=domainInstance.getPropertyCnName("isum") %></th> 
						<th><%=domainInstance.getPropertyCnName("idiscount") %></th> 
						<th><%=domainInstance.getPropertyCnName("inatunitprice") %></th> 
						<th><%=domainInstance.getPropertyCnName("inatmoney") %></th> 
						<th><%=domainInstance.getPropertyCnName("inattax") %></th> 
						<th><%=domainInstance.getPropertyCnName("inatsum") %></th> 
						<th><%=domainInstance.getPropertyCnName("inatdiscount") %></th> 
						<th><%=domainInstance.getPropertyCnName("ifhnum") %></th> 
						<th><%=domainInstance.getPropertyCnName("ifhquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("ifhmoney") %></th> 
						<th><%=domainInstance.getPropertyCnName("ikpquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("ikpnum") %></th> 
						<th><%=domainInstance.getPropertyCnName("ikpmoney") %></th> 
						<th><%=domainInstance.getPropertyCnName("cmemo") %></th> 
						<th><%=domainInstance.getPropertyCnName("cfree1") %></th> 
						<th><%=domainInstance.getPropertyCnName("cfree2") %></th> 
						<th><%=domainInstance.getPropertyCnName("bfh") %></th> 
						<th><%=domainInstance.getPropertyCnName("isosid") %></th> 
						<th><%=domainInstance.getPropertyCnName("kl") %></th> 
						<th><%=domainInstance.getPropertyCnName("kl2") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvname") %></th> 
						<th><%=domainInstance.getPropertyCnName("itaxrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine22") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine23") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine24") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine25") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine26") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine27") %></th> 
						<th><%=domainInstance.getPropertyCnName("citemcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("citem_class") %></th> 
						<th><%=domainInstance.getPropertyCnName("citemname") %></th> 
						<th><%=domainInstance.getPropertyCnName("citem_cname") %></th> 
						<th><%=domainInstance.getPropertyCnName("cfree3") %></th> 
						<th><%=domainInstance.getPropertyCnName("cfree4") %></th> 
						<th><%=domainInstance.getPropertyCnName("cfree5") %></th> 
						<th><%=domainInstance.getPropertyCnName("cfree6") %></th> 
						<th><%=domainInstance.getPropertyCnName("cfree7") %></th> 
						<th><%=domainInstance.getPropertyCnName("cfree8") %></th> 
						<th><%=domainInstance.getPropertyCnName("cfree9") %></th> 
						<th><%=domainInstance.getPropertyCnName("cfree10") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvexchrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("cunitid") %></th> 
						<th><%=domainInstance.getPropertyCnName("id") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine28") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine29") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine30") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine31") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine32") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine33") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine34") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine35") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine36") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefine37") %></th> 
						<th><%=domainInstance.getPropertyCnName("fpurquan") %></th> 
						<th><%=domainInstance.getPropertyCnName("fsalecost") %></th> 
						<th><%=domainInstance.getPropertyCnName("fsaleprice") %></th> 
						<th><%=domainInstance.getPropertyCnName("cquocode") %></th> 
						<th><%=domainInstance.getPropertyCnName("iquoid") %></th> 
						<th><%=domainInstance.getPropertyCnName("cscloser") %></th> 
						<th><%=domainInstance.getPropertyCnName("dpremodate") %></th> 
						<th><%=domainInstance.getPropertyCnName("irowno") %></th> 
						<th><%=domainInstance.getPropertyCnName("icusbomid") %></th> 
						<th><%=domainInstance.getPropertyCnName("imoquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccontractid") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccontracttagcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccontractrowguid") %></th> 
						<th><%=domainInstance.getPropertyCnName("ippartseqid") %></th> 
						<th><%=domainInstance.getPropertyCnName("ippartid") %></th> 
						<th><%=domainInstance.getPropertyCnName("ippartqty") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusinvcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccusinvname") %></th> 
						<th><%=domainInstance.getPropertyCnName("iprekeepquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("iprekeepnum") %></th> 
						<th><%=domainInstance.getPropertyCnName("iprekeeptotquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("iprekeeptotnum") %></th> 
						<th><%=domainInstance.getPropertyCnName("dreleasedate") %></th> 
						<th><%=domainInstance.getPropertyCnName("fcusminprice") %></th> 
						<th><%=domainInstance.getPropertyCnName("fimquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("fomquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("ballpurchase") %></th> 
						<th><%=domainInstance.getPropertyCnName("finquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("icostquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("icostsum") %></th> 
						<th><%=domainInstance.getPropertyCnName("foutquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("foutnum") %></th> 
						<th><%=domainInstance.getPropertyCnName("iexchsum") %></th> 
						<th><%=domainInstance.getPropertyCnName("imoneysum") %></th> 
						<th><%=domainInstance.getPropertyCnName("iaoids") %></th> 
						<th><%=domainInstance.getPropertyCnName("cpreordercode") %></th> 
						<th><%=domainInstance.getPropertyCnName("fretquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("fretnum") %></th> 
						<th><%=domainInstance.getPropertyCnName("dbclosedate") %></th> 
						<th><%=domainInstance.getPropertyCnName("dbclosesystime") %></th> 
						<th><%=domainInstance.getPropertyCnName("borderbom") %></th> 
						<th><%=domainInstance.getPropertyCnName("borderbomover") %></th> 
						<th><%=domainInstance.getPropertyCnName("idemandtype") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdemandcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdemandmemo") %></th> 
						<th><%=domainInstance.getPropertyCnName("fpursum") %></th> 
						<th><%=domainInstance.getPropertyCnName("fpurbillqty") %></th> 
						<th><%=domainInstance.getPropertyCnName("fpurbillsum") %></th> 
						<th><%=domainInstance.getPropertyCnName("iimid") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccorvouchtype") %></th> 
						<th><%=domainInstance.getPropertyCnName("icorrowno") %></th> 
						<th><%=domainInstance.getPropertyCnName("busecusbom") %></th> 
						<th><%=domainInstance.getPropertyCnName("body_outid") %></th> 
					</tr> 
				</thead> 
				<% 
					for (int i = 0; i < list.size(); i++) 
						{ 
							SoSodetailsObj o = (SoSodetailsObj) list.get(i); 
				%> 
				<tr> 
					<td> 
						<a href="#" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=detail4this&<%=o.findKeyColumnName()%>=<%=o.getKeyValue()%>')"> <%=StringUtil.getNotEmptyStr(o.getKeyValue())%> </a> 
					</td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCsocode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDpredate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getInum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIquotedprice())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIunitprice())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getItaxunitprice())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getImoney())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getItax())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIsum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIdiscount())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getInatunitprice())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getInatmoney())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getInattax())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getInatsum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getInatdiscount())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIfhnum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIfhquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIfhmoney())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIkpquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIkpnum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIkpmoney())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCmemo())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCfree1())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCfree2())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBfh())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIsosid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getKl())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getKl2())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvname())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getItaxrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine22())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine23())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine24())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine25())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine26())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine27())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCitemcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCitem_class())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCitemname())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCitem_cname())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCfree3())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCfree4())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCfree5())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCfree6())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCfree7())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCfree8())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCfree9())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCfree10())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvexchrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCunitid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getId())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine28())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine29())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine30())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine31())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine32())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine33())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine34())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine35())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine36())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefine37())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFpurquan())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFsalecost())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFsaleprice())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCquocode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIquoid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCscloser())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDpremodate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIrowno())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIcusbomid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getImoquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcontractid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcontracttagcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcontractrowguid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIppartseqid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIppartid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIppartqty())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusinvcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcusinvname())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIprekeepquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIprekeepnum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIprekeeptotquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIprekeeptotnum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDreleasedate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFcusminprice())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFimquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFomquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBallpurchase())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFinquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIcostquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIcostsum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFoutquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFoutnum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIexchsum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getImoneysum())%></td>
					<td><%=StringUtil.getNotEmptyStr(o.getIaoids())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCpreordercode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFretquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFretnum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDbclosedate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDbclosesystime())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBorderbom())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBorderbomover())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIdemandtype())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdemandcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdemandmemo())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFpursum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFpurbillqty())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFpurbillsum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIimid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcorvouchtype())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIcorrowno())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBusecusbom())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBody_outid())%></td> 
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
