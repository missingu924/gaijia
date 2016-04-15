<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.u8.obj.SoSodetailsObj"%> 
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
					<%=domainInstance.getPropertyCnName("autoid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getAutoid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("csocode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCsocode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dpredate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDpredate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("inum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getInum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iquotedprice") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIquotedprice())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iunitprice") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIunitprice())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("itaxunitprice") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getItaxunitprice())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("imoney") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getImoney())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("itax") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getItax())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("isum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIsum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("idiscount") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIdiscount())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("inatunitprice") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getInatunitprice())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("inatmoney") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getInatmoney())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("inattax") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getInattax())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("inatsum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getInatsum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("inatdiscount") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getInatdiscount())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ifhnum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIfhnum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ifhquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIfhquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ifhmoney") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIfhmoney())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ikpquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIkpquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ikpnum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIkpnum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ikpmoney") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIkpmoney())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cmemo") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCmemo())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cfree1") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCfree1())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cfree2") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCfree2())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bfh") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBfh())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("isosid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIsosid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("kl") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getKl())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("kl2") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getKl2())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("itaxrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getItaxrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine22") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine22())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine23") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine23())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine24") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine24())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine25") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine25())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine26") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine26())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine27") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine27())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("citemcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCitemcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("citem_class") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCitem_class())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("citemname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCitemname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("citem_cname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCitem_cname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cfree3") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCfree3())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cfree4") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCfree4())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cfree5") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCfree5())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cfree6") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCfree6())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cfree7") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCfree7())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cfree8") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCfree8())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cfree9") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCfree9())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cfree10") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCfree10())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvexchrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvexchrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cunitid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCunitid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("id") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getId())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine28") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine28())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine29") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine29())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine30") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine30())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine31") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine31())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine32") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine32())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine33") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine33())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine34") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine34())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine35") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine35())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine36") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine36())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefine37") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefine37())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fpurquan") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFpurquan())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fsalecost") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFsalecost())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fsaleprice") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFsaleprice())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cquocode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCquocode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iquoid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIquoid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cscloser") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCscloser())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dpremodate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDpremodate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("irowno") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIrowno())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("icusbomid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIcusbomid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("imoquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getImoquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccontractid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcontractid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccontracttagcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcontracttagcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccontractrowguid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcontractrowguid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ippartseqid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIppartseqid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ippartid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIppartid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ippartqty") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIppartqty())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusinvcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusinvcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccusinvname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcusinvname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iprekeepquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIprekeepquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iprekeepnum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIprekeepnum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iprekeeptotquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIprekeeptotquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iprekeeptotnum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIprekeeptotnum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dreleasedate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDreleasedate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fcusminprice") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFcusminprice())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fimquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFimquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fomquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFomquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ballpurchase") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBallpurchase())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("finquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFinquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("icostquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIcostquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("icostsum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIcostsum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("foutquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFoutquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("foutnum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFoutnum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iexchsum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIexchsum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("imoneysum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getImoneysum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dufts") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDufts())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iaoids") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIaoids())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cpreordercode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCpreordercode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fretquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFretquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fretnum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFretnum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dbclosedate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDbclosedate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dbclosesystime") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDbclosesystime())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("borderbom") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBorderbom())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("borderbomover") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBorderbomover())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("idemandtype") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIdemandtype())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdemandcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdemandcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdemandmemo") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdemandmemo())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fpursum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFpursum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fpurbillqty") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFpurbillqty())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fpurbillsum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFpurbillsum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iimid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIimid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccorvouchtype") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcorvouchtype())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("icorrowno") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIcorrowno())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("busecusbom") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBusecusbom())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("body_outid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBody_outid())%></td> 
			</tr> 
		</table> 
		 
		<!-- 工具栏 --> 
		<jsp:include page="../ToolBar/detail_toolbar.jsp"/> 
	</body> 
</html> 
