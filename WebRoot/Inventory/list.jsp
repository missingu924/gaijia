<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 --> 
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.common.obj.PaginationObj"%> 
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.u8.obj.InventoryObj"%> 
<!-- 基本信息 --> 
<% 
	// 当前上下文路径 
	String contextPath = request.getContextPath(); 
 
	// 该功能对象实例 
	InventoryObj domainInstance = (InventoryObj) request.getAttribute("domainInstance"); 
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
						<%=domainInstance.getPropertyCnName("cinvcode") %> 
						<input name="cinvcode" type="text" id="cinvcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvcode())%>" size="20" > 
						&nbsp;  
						<%=domainInstance.getPropertyCnName("cinvname") %> 
						<input name="cinvname" type="text" id="cinvname" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvname())%>" size="20" > 
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
						<th><%=domainInstance.getPropertyCnName("cinvcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvaddcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvname") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvstd") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvccode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cvencode") %></th> 
						<th><%=domainInstance.getPropertyCnName("creplaceitem") %></th> 
						<th><%=domainInstance.getPropertyCnName("cposition") %></th> 
						<th><%=domainInstance.getPropertyCnName("bsale") %></th> 
						<th><%=domainInstance.getPropertyCnName("bpurchase") %></th> 
						<th><%=domainInstance.getPropertyCnName("bself") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcomsume") %></th> 
						<th><%=domainInstance.getPropertyCnName("bproducing") %></th> 
						<th><%=domainInstance.getPropertyCnName("bservice") %></th> 
						<th><%=domainInstance.getPropertyCnName("baccessary") %></th> 
						<th><%=domainInstance.getPropertyCnName("itaxrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvweight") %></th> 
						<th><%=domainInstance.getPropertyCnName("ivolume") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvrcost") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvsprice") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvscost") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvlscost") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvncost") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvadvance") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvbatch") %></th> 
						<th><%=domainInstance.getPropertyCnName("isafenum") %></th> 
						<th><%=domainInstance.getPropertyCnName("itopsum") %></th> 
						<th><%=domainInstance.getPropertyCnName("ilowsum") %></th> 
						<th><%=domainInstance.getPropertyCnName("ioverstock") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvabc") %></th> 
						<th><%=domainInstance.getPropertyCnName("binvquality") %></th> 
						<th><%=domainInstance.getPropertyCnName("binvbatch") %></th> 
						<th><%=domainInstance.getPropertyCnName("binventrust") %></th> 
						<th><%=domainInstance.getPropertyCnName("binvoverstock") %></th> 
						<th><%=domainInstance.getPropertyCnName("dsdate") %></th> 
						<th><%=domainInstance.getPropertyCnName("dedate") %></th> 
						<th><%=domainInstance.getPropertyCnName("bfree1") %></th> 
						<th><%=domainInstance.getPropertyCnName("bfree2") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine1") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine2") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine3") %></th> 
						<th><%=domainInstance.getPropertyCnName("i_id") %></th> 
						<th><%=domainInstance.getPropertyCnName("binvtype") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvmpcost") %></th> 
						<th><%=domainInstance.getPropertyCnName("cquality") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvsalecost") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvscost1") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvscost2") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvscost3") %></th> 
						<th><%=domainInstance.getPropertyCnName("bfree3") %></th> 
						<th><%=domainInstance.getPropertyCnName("bfree4") %></th> 
						<th><%=domainInstance.getPropertyCnName("bfree5") %></th> 
						<th><%=domainInstance.getPropertyCnName("bfree6") %></th> 
						<th><%=domainInstance.getPropertyCnName("bfree7") %></th> 
						<th><%=domainInstance.getPropertyCnName("bfree8") %></th> 
						<th><%=domainInstance.getPropertyCnName("bfree9") %></th> 
						<th><%=domainInstance.getPropertyCnName("bfree10") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccreateperson") %></th> 
						<th><%=domainInstance.getPropertyCnName("cmodifyperson") %></th> 
						<th><%=domainInstance.getPropertyCnName("dmodifydate") %></th> 
						<th><%=domainInstance.getPropertyCnName("fsubscribepoint") %></th> 
						<th><%=domainInstance.getPropertyCnName("fvagquantity") %></th> 
						<th><%=domainInstance.getPropertyCnName("cvaluetype") %></th> 
						<th><%=domainInstance.getPropertyCnName("bfixexch") %></th> 
						<th><%=domainInstance.getPropertyCnName("foutexcess") %></th> 
						<th><%=domainInstance.getPropertyCnName("finexcess") %></th> 
						<th><%=domainInstance.getPropertyCnName("imassdate") %></th> 
						<th><%=domainInstance.getPropertyCnName("iwarndays") %></th> 
						<th><%=domainInstance.getPropertyCnName("fexpensesexch") %></th> 
						<th><%=domainInstance.getPropertyCnName("btrack") %></th> 
						<th><%=domainInstance.getPropertyCnName("bserial") %></th> 
						<th><%=domainInstance.getPropertyCnName("bbarcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("iid") %></th> 
						<th><%=domainInstance.getPropertyCnName("cbarcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine4") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine5") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine6") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine7") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine8") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine9") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine10") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine11") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine12") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine13") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine14") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine15") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdefine16") %></th> 
						<th><%=domainInstance.getPropertyCnName("igrouptype") %></th> 
						<th><%=domainInstance.getPropertyCnName("cgroupcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccomunitcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("casscomunitcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("csacomunitcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cpucomunitcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cstcomunitcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccacomunitcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cfrequency") %></th> 
						<th><%=domainInstance.getPropertyCnName("ifrequency") %></th> 
						<th><%=domainInstance.getPropertyCnName("idays") %></th> 
						<th><%=domainInstance.getPropertyCnName("dlastdate") %></th> 
						<th><%=domainInstance.getPropertyCnName("iwastage") %></th> 
						<th><%=domainInstance.getPropertyCnName("bsolitude") %></th> 
						<th><%=domainInstance.getPropertyCnName("centerprise") %></th> 
						<th><%=domainInstance.getPropertyCnName("caddress") %></th> 
						<th><%=domainInstance.getPropertyCnName("cfile") %></th> 
						<th><%=domainInstance.getPropertyCnName("clabel") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccheckout") %></th> 
						<th><%=domainInstance.getPropertyCnName("clicence") %></th> 
						<th><%=domainInstance.getPropertyCnName("bspecialties") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdefwarehouse") %></th> 
						<th><%=domainInstance.getPropertyCnName("ihighprice") %></th> 
						<th><%=domainInstance.getPropertyCnName("iexpsalerate") %></th> 
						<th><%=domainInstance.getPropertyCnName("cpricegroup") %></th> 
						<th><%=domainInstance.getPropertyCnName("coffergrade") %></th> 
						<th><%=domainInstance.getPropertyCnName("iofferrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("cmonth") %></th> 
						<th><%=domainInstance.getPropertyCnName("iadvancedate") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccurrencyname") %></th> 
						<th><%=domainInstance.getPropertyCnName("cproduceaddress") %></th> 
						<th><%=domainInstance.getPropertyCnName("cproducenation") %></th> 
						<th><%=domainInstance.getPropertyCnName("cregisterno") %></th> 
						<th><%=domainInstance.getPropertyCnName("centerno") %></th> 
						<th><%=domainInstance.getPropertyCnName("cpackingtype") %></th> 
						<th><%=domainInstance.getPropertyCnName("cenglishname") %></th> 
						<th><%=domainInstance.getPropertyCnName("bpropertycheck") %></th> 
						<th><%=domainInstance.getPropertyCnName("cpreparationtype") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccommodity") %></th> 
						<th><%=domainInstance.getPropertyCnName("irecipebatch") %></th> 
						<th><%=domainInstance.getPropertyCnName("cnotpatentname") %></th> 
						<th><%=domainInstance.getPropertyCnName("pubufts") %></th> 
						<th><%=domainInstance.getPropertyCnName("bpromotsales") %></th> 
						<th><%=domainInstance.getPropertyCnName("iplanpolicy") %></th> 
						<th><%=domainInstance.getPropertyCnName("iropmethod") %></th> 
						<th><%=domainInstance.getPropertyCnName("ibatchrule") %></th> 
						<th><%=domainInstance.getPropertyCnName("fbatchincrement") %></th> 
						<th><%=domainInstance.getPropertyCnName("iassureprovidedays") %></th> 
						<th><%=domainInstance.getPropertyCnName("iteststyle") %></th> 
						<th><%=domainInstance.getPropertyCnName("idtmethod") %></th> 
						<th><%=domainInstance.getPropertyCnName("fdtrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("fdtnum") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdtunit") %></th> 
						<th><%=domainInstance.getPropertyCnName("idtstyle") %></th> 
						<th><%=domainInstance.getPropertyCnName("iqtmethod") %></th> 
						<th><%=domainInstance.getPropertyCnName("pictureguid") %></th> 
						<th><%=domainInstance.getPropertyCnName("bplaninv") %></th> 
						<th><%=domainInstance.getPropertyCnName("bproxyforeign") %></th> 
						<th><%=domainInstance.getPropertyCnName("batomodel") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcheckitem") %></th> 
						<th><%=domainInstance.getPropertyCnName("bptomodel") %></th> 
						<th><%=domainInstance.getPropertyCnName("bequipment") %></th> 
						<th><%=domainInstance.getPropertyCnName("cproductunit") %></th> 
						<th><%=domainInstance.getPropertyCnName("forderuplimit") %></th> 
						<th><%=domainInstance.getPropertyCnName("cmassunit") %></th> 
						<th><%=domainInstance.getPropertyCnName("fretailprice") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvdepcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ialteradvance") %></th> 
						<th><%=domainInstance.getPropertyCnName("falterbasenum") %></th> 
						<th><%=domainInstance.getPropertyCnName("cplanmethod") %></th> 
						<th><%=domainInstance.getPropertyCnName("bmps") %></th> 
						<th><%=domainInstance.getPropertyCnName("brop") %></th> 
						<th><%=domainInstance.getPropertyCnName("breplan") %></th> 
						<th><%=domainInstance.getPropertyCnName("csrpolicy") %></th> 
						<th><%=domainInstance.getPropertyCnName("bbillunite") %></th> 
						<th><%=domainInstance.getPropertyCnName("isupplyday") %></th> 
						<th><%=domainInstance.getPropertyCnName("fsupplymulti") %></th> 
						<th><%=domainInstance.getPropertyCnName("fminsupply") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcutmantissa") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvpersoncode") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvtfid") %></th> 
						<th><%=domainInstance.getPropertyCnName("cengineerfigno") %></th> 
						<th><%=domainInstance.getPropertyCnName("bintotalcost") %></th> 
						<th><%=domainInstance.getPropertyCnName("isupplytype") %></th> 
						<th><%=domainInstance.getPropertyCnName("bconfigfree1") %></th> 
						<th><%=domainInstance.getPropertyCnName("bconfigfree2") %></th> 
						<th><%=domainInstance.getPropertyCnName("bconfigfree3") %></th> 
						<th><%=domainInstance.getPropertyCnName("bconfigfree4") %></th> 
						<th><%=domainInstance.getPropertyCnName("bconfigfree5") %></th> 
						<th><%=domainInstance.getPropertyCnName("bconfigfree6") %></th> 
						<th><%=domainInstance.getPropertyCnName("bconfigfree7") %></th> 
						<th><%=domainInstance.getPropertyCnName("bconfigfree8") %></th> 
						<th><%=domainInstance.getPropertyCnName("bconfigfree9") %></th> 
						<th><%=domainInstance.getPropertyCnName("bconfigfree10") %></th> 
						<th><%=domainInstance.getPropertyCnName("idtlevel") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdtaql") %></th> 
						<th><%=domainInstance.getPropertyCnName("bperioddt") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdtperiod") %></th> 
						<th><%=domainInstance.getPropertyCnName("ibigmonth") %></th> 
						<th><%=domainInstance.getPropertyCnName("ibigday") %></th> 
						<th><%=domainInstance.getPropertyCnName("ismallmonth") %></th> 
						<th><%=domainInstance.getPropertyCnName("ismallday") %></th> 
						<th><%=domainInstance.getPropertyCnName("boutinvdt") %></th> 
						<th><%=domainInstance.getPropertyCnName("bbackinvdt") %></th> 
						<th><%=domainInstance.getPropertyCnName("ienddtstyle") %></th> 
						<th><%=domainInstance.getPropertyCnName("bdtwarninv") %></th> 
						<th><%=domainInstance.getPropertyCnName("fbacktaxrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("cciqcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cwgroupcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cwunit") %></th> 
						<th><%=domainInstance.getPropertyCnName("fgrossw") %></th> 
						<th><%=domainInstance.getPropertyCnName("cvgroupcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cvunit") %></th> 
						<th><%=domainInstance.getPropertyCnName("flength") %></th> 
						<th><%=domainInstance.getPropertyCnName("fwidth") %></th> 
						<th><%=domainInstance.getPropertyCnName("fheight") %></th> 
						<th><%=domainInstance.getPropertyCnName("idtucounter") %></th> 
						<th><%=domainInstance.getPropertyCnName("idtdcounter") %></th> 
						<th><%=domainInstance.getPropertyCnName("ibatchcounter") %></th> 
						<th><%=domainInstance.getPropertyCnName("cshopunit") %></th> 
						<th><%=domainInstance.getPropertyCnName("cpurpersoncode") %></th> 
						<th><%=domainInstance.getPropertyCnName("bimportmedicine") %></th> 
						<th><%=domainInstance.getPropertyCnName("bfirstbusimedicine") %></th> 
						<th><%=domainInstance.getPropertyCnName("bforeexpland") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvplancode") %></th> 
						<th><%=domainInstance.getPropertyCnName("fconvertrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("dreplacedate") %></th> 
						<th><%=domainInstance.getPropertyCnName("binvmodel") %></th> 
						<th><%=domainInstance.getPropertyCnName("bkccutmantissa") %></th> 
						<th><%=domainInstance.getPropertyCnName("breceiptbydt") %></th> 
						<th><%=domainInstance.getPropertyCnName("iimptaxrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("iexptaxrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("bexpsale") %></th> 
						<th><%=domainInstance.getPropertyCnName("idrawbatch") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcheckbsatp") %></th> 
						<th><%=domainInstance.getPropertyCnName("cinvprojectcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("itestrule") %></th> 
						<th><%=domainInstance.getPropertyCnName("crulecode") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcheckfree1") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcheckfree2") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcheckfree3") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcheckfree4") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcheckfree5") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcheckfree6") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcheckfree7") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcheckfree8") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcheckfree9") %></th> 
						<th><%=domainInstance.getPropertyCnName("bcheckfree10") %></th> 
						<th><%=domainInstance.getPropertyCnName("bbommain") %></th> 
						<th><%=domainInstance.getPropertyCnName("bbomsub") %></th> 
						<th><%=domainInstance.getPropertyCnName("bproductbill") %></th> 
						<th><%=domainInstance.getPropertyCnName("icheckatp") %></th> 
						<th><%=domainInstance.getPropertyCnName("iinvatpid") %></th> 
						<th><%=domainInstance.getPropertyCnName("iplantfday") %></th> 
						<th><%=domainInstance.getPropertyCnName("ioverlapday") %></th> 
						<th><%=domainInstance.getPropertyCnName("bpiece") %></th> 
						<th><%=domainInstance.getPropertyCnName("bsrvitem") %></th> 
						<th><%=domainInstance.getPropertyCnName("bsrvfittings") %></th> 
						<th><%=domainInstance.getPropertyCnName("fmaxsupply") %></th> 
						<th><%=domainInstance.getPropertyCnName("fminsplit") %></th> 
						<th><%=domainInstance.getPropertyCnName("bspecialorder") %></th> 
						<th><%=domainInstance.getPropertyCnName("btracksalebill") %></th> 
						<th>操作</th> 
					</tr> 
				</thead> 
				<% 
					for (int i = 0; i < list.size(); i++) 
						{ 
							InventoryObj o = (InventoryObj) list.get(i); 
				%> 
				<tr> 
					<td> 
						<a href="#" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=detail4this&<%=o.findKeyColumnName()%>=<%=o.getKeyValue()%>')"> <%=StringUtil.getNotEmptyStr(o.getKeyValue())%> </a> 
					</td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvaddcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvname())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvstd())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvccode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCvencode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCreplaceitem())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCposition())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBsale())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBpurchase())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBself())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcomsume())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBproducing())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBservice())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBaccessary())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getItaxrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvweight())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIvolume())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvrcost())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvsprice())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvscost())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvlscost())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvncost())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvadvance())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvbatch())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIsafenum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getItopsum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIlowsum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIoverstock())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvabc())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBinvquality())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBinvbatch())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBinventrust())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBinvoverstock())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDsdate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDedate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBfree1())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBfree2())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine1())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine2())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine3())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getI_id())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBinvtype())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvmpcost())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCquality())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvsalecost())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvscost1())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvscost2())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvscost3())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBfree3())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBfree4())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBfree5())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBfree6())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBfree7())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBfree8())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBfree9())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBfree10())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcreateperson())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCmodifyperson())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDmodifydate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFsubscribepoint())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFvagquantity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCvaluetype())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBfixexch())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFoutexcess())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFinexcess())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getImassdate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIwarndays())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFexpensesexch())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBtrack())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBserial())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBbarcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCbarcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine4())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine5())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine6())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine7())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine8())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine9())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine10())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine11())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine12())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine13())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine14())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine15())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdefine16())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIgrouptype())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCgroupcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcomunitcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCasscomunitcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCsacomunitcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCpucomunitcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCstcomunitcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcacomunitcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCfrequency())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIfrequency())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIdays())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDlastdate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIwastage())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBsolitude())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCenterprise())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCaddress())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCfile())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getClabel())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcheckout())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getClicence())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBspecialties())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdefwarehouse())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIhighprice())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIexpsalerate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCpricegroup())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCoffergrade())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIofferrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCmonth())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIadvancedate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcurrencyname())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCproduceaddress())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCproducenation())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCregisterno())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCenterno())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCpackingtype())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCenglishname())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBpropertycheck())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCpreparationtype())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCcommodity())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIrecipebatch())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCnotpatentname())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getPubufts())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBpromotsales())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIplanpolicy())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIropmethod())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIbatchrule())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFbatchincrement())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIassureprovidedays())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIteststyle())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIdtmethod())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFdtrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFdtnum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdtunit())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIdtstyle())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIqtmethod())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getPictureguid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBplaninv())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBproxyforeign())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBatomodel())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcheckitem())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBptomodel())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBequipment())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCproductunit())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getForderuplimit())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCmassunit())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFretailprice())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvdepcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIalteradvance())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFalterbasenum())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCplanmethod())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBmps())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBrop())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBreplan())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCsrpolicy())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBbillunite())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIsupplyday())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFsupplymulti())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFminsupply())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcutmantissa())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvpersoncode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvtfid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCengineerfigno())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBintotalcost())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIsupplytype())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBconfigfree1())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBconfigfree2())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBconfigfree3())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBconfigfree4())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBconfigfree5())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBconfigfree6())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBconfigfree7())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBconfigfree8())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBconfigfree9())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBconfigfree10())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIdtlevel())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdtaql())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBperioddt())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCdtperiod())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIbigmonth())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIbigday())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIsmallmonth())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIsmallday())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBoutinvdt())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBbackinvdt())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIenddtstyle())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBdtwarninv())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFbacktaxrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCciqcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCwgroupcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCwunit())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFgrossw())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCvgroupcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCvunit())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFlength())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFwidth())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFheight())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIdtucounter())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIdtdcounter())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIbatchcounter())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCshopunit())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCpurpersoncode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBimportmedicine())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBfirstbusimedicine())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBforeexpland())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvplancode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFconvertrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDreplacedate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBinvmodel())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBkccutmantissa())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBreceiptbydt())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIimptaxrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIexptaxrate())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBexpsale())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIdrawbatch())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcheckbsatp())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCinvprojectcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getItestrule())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getCrulecode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcheckfree1())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcheckfree2())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcheckfree3())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcheckfree4())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcheckfree5())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcheckfree6())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcheckfree7())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcheckfree8())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcheckfree9())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBcheckfree10())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBbommain())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBbomsub())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBproductbill())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIcheckatp())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIinvatpid())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIplantfday())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getIoverlapday())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBpiece())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBsrvitem())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBsrvfittings())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFmaxsupply())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFminsplit())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBspecialorder())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBtracksalebill())%></td> 
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
