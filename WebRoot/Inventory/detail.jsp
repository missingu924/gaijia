<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.dictionary.DictionaryUtil"%> 
<%@page import="com.u8.obj.InventoryObj"%> 
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
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />		<title><%=domainInstance.getCnName()%>详情</title> 
		<link href="../css/global.css" rel="stylesheet" type="text/css" /> 
		<link href="../css/table.css" rel="stylesheet" type="text/css" /> 
		<script src="../js/jquery-2.0.3.min.js"></script> 
		<script src="../js/utils.js"></script> 
	</head> 
	<body> 
		<!-- 表格标题 --> 
		<table width="700" align="center" class="title_table"> 
			<tr> 
				<td> 
					<img src="../images/svg/heavy/green/list.png" width="18" height="18" align="absmiddle"> 
					&nbsp;&nbsp;<%=domainInstance.getCnName()%>信息 
				</td> 
			</tr> 
		</table> 
		<!-- 详细信息 --> 
		<table width="700" align="center" class="detail_table detail_table-bordered detail_table-striped"> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvccode") %>: 
				</td> 
				<td><%=DictionaryUtil.getDictValueByDictKey("U8存货类别字典",domainInstance.getCinvccode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvstd") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvstd())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cvencode") %>: 
				</td> 
				<td><%=DictionaryUtil.getDictValueByDictKey("U8供应商字典",domainInstance.getCvencode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccomunitcode") %>: 
				</td> 
				<td><%=DictionaryUtil.getDictValueByDictKey("U8计量单位字典",domainInstance.getCcomunitcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvaddcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvaddcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("creplaceitem") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCreplaceitem())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cposition") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCposition())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bsale") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBsale())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bpurchase") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBpurchase())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bself") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBself())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcomsume") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcomsume())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bproducing") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBproducing())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bservice") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBservice())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("baccessary") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBaccessary())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("itaxrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getItaxrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvweight") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvweight())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ivolume") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIvolume())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvrcost") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvrcost())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvsprice") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvsprice())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvscost") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvscost())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvlscost") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvlscost())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvncost") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvncost())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvadvance") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvadvance())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvbatch") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvbatch())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("isafenum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIsafenum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("itopsum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getItopsum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ilowsum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIlowsum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ioverstock") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIoverstock())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvabc") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvabc())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("binvquality") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBinvquality())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("binvbatch") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBinvbatch())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("binventrust") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBinventrust())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("binvoverstock") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBinvoverstock())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dsdate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDsdate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dedate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDedate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bfree1") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBfree1())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bfree2") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBfree2())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine1") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine1())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine2") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine2())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine3") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine3())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("i_id") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getI_id())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("binvtype") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBinvtype())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvmpcost") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvmpcost())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cquality") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCquality())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvsalecost") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvsalecost())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvscost1") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvscost1())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvscost2") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvscost2())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvscost3") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvscost3())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bfree3") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBfree3())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bfree4") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBfree4())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bfree5") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBfree5())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bfree6") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBfree6())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bfree7") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBfree7())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bfree8") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBfree8())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bfree9") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBfree9())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bfree10") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBfree10())%></td> 
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
					<%=domainInstance.getPropertyCnName("fsubscribepoint") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFsubscribepoint())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fvagquantity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFvagquantity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cvaluetype") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCvaluetype())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bfixexch") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBfixexch())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("foutexcess") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFoutexcess())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("finexcess") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFinexcess())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("imassdate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getImassdate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iwarndays") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIwarndays())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fexpensesexch") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFexpensesexch())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("btrack") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBtrack())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bserial") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBserial())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bbarcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBbarcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cbarcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCbarcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine4") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine4())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine5") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine5())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine6") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine6())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine7") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine7())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine8") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine8())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine9") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine9())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine10") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine10())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine11") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine11())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine12") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine12())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine13") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine13())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine14") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine14())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine15") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine15())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdefine16") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine16())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("igrouptype") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIgrouptype())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cgroupcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCgroupcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("casscomunitcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCasscomunitcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("csacomunitcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCsacomunitcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cpucomunitcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCpucomunitcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cstcomunitcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCstcomunitcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccacomunitcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcacomunitcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cfrequency") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCfrequency())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ifrequency") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIfrequency())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("idays") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIdays())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dlastdate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDlastdate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iwastage") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIwastage())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bsolitude") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBsolitude())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("centerprise") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCenterprise())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("caddress") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCaddress())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cfile") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCfile())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("clabel") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getClabel())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccheckout") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcheckout())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("clicence") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getClicence())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bspecialties") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBspecialties())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdefwarehouse") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdefwarehouse())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ihighprice") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIhighprice())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iexpsalerate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIexpsalerate())%></td> 
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
					<%=domainInstance.getPropertyCnName("cmonth") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCmonth())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iadvancedate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIadvancedate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccurrencyname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcurrencyname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cproduceaddress") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCproduceaddress())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cproducenation") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCproducenation())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cregisterno") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCregisterno())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("centerno") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCenterno())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cpackingtype") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCpackingtype())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cenglishname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCenglishname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bpropertycheck") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBpropertycheck())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cpreparationtype") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCpreparationtype())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccommodity") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCcommodity())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("irecipebatch") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIrecipebatch())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cnotpatentname") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCnotpatentname())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("pubufts") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getPubufts())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bpromotsales") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBpromotsales())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iplanpolicy") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIplanpolicy())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iropmethod") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIropmethod())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ibatchrule") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIbatchrule())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fbatchincrement") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFbatchincrement())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iassureprovidedays") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIassureprovidedays())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iteststyle") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIteststyle())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("idtmethod") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIdtmethod())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fdtrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFdtrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fdtnum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFdtnum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdtunit") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdtunit())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("idtstyle") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIdtstyle())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iqtmethod") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIqtmethod())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("pictureguid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getPictureguid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bplaninv") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBplaninv())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bproxyforeign") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBproxyforeign())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("batomodel") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBatomodel())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcheckitem") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcheckitem())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bptomodel") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBptomodel())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bequipment") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBequipment())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cproductunit") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCproductunit())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("forderuplimit") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getForderuplimit())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cmassunit") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCmassunit())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fretailprice") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFretailprice())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvdepcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvdepcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ialteradvance") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIalteradvance())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("falterbasenum") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFalterbasenum())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cplanmethod") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCplanmethod())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bmps") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBmps())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("brop") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBrop())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("breplan") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBreplan())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("csrpolicy") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCsrpolicy())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bbillunite") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBbillunite())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("isupplyday") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIsupplyday())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fsupplymulti") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFsupplymulti())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fminsupply") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFminsupply())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcutmantissa") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcutmantissa())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvpersoncode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvpersoncode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvtfid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvtfid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cengineerfigno") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCengineerfigno())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bintotalcost") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBintotalcost())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("isupplytype") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIsupplytype())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bconfigfree1") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree1())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bconfigfree2") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree2())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bconfigfree3") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree3())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bconfigfree4") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree4())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bconfigfree5") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree5())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bconfigfree6") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree6())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bconfigfree7") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree7())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bconfigfree8") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree8())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bconfigfree9") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree9())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bconfigfree10") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree10())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("idtlevel") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIdtlevel())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdtaql") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdtaql())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bperioddt") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBperioddt())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdtperiod") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCdtperiod())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ibigmonth") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIbigmonth())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ibigday") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIbigday())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ismallmonth") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIsmallmonth())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ismallday") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIsmallday())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("boutinvdt") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBoutinvdt())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bbackinvdt") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBbackinvdt())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ienddtstyle") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIenddtstyle())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bdtwarninv") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBdtwarninv())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fbacktaxrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFbacktaxrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cciqcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCciqcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cwgroupcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCwgroupcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cwunit") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCwunit())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fgrossw") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFgrossw())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cvgroupcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCvgroupcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cvunit") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCvunit())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("flength") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFlength())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fwidth") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFwidth())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fheight") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFheight())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("idtucounter") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIdtucounter())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("idtdcounter") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIdtdcounter())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ibatchcounter") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIbatchcounter())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cshopunit") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCshopunit())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cpurpersoncode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCpurpersoncode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bimportmedicine") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBimportmedicine())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bfirstbusimedicine") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBfirstbusimedicine())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bforeexpland") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBforeexpland())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvplancode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvplancode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fconvertrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFconvertrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dreplacedate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDreplacedate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("binvmodel") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBinvmodel())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bkccutmantissa") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBkccutmantissa())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("breceiptbydt") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBreceiptbydt())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iimptaxrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIimptaxrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iexptaxrate") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIexptaxrate())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bexpsale") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBexpsale())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("idrawbatch") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIdrawbatch())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcheckbsatp") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcheckbsatp())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvprojectcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvprojectcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("itestrule") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getItestrule())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("crulecode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCrulecode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcheckfree1") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree1())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcheckfree2") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree2())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcheckfree3") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree3())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcheckfree4") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree4())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcheckfree5") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree5())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcheckfree6") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree6())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcheckfree7") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree7())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcheckfree8") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree8())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcheckfree9") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree9())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcheckfree10") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree10())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bbommain") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBbommain())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bbomsub") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBbomsub())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bproductbill") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBproductbill())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("icheckatp") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIcheckatp())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iinvatpid") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIinvatpid())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iplantfday") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIplantfday())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ioverlapday") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIoverlapday())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bpiece") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBpiece())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bsrvitem") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBsrvitem())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bsrvfittings") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBsrvfittings())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fmaxsupply") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFmaxsupply())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fminsplit") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFminsplit())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bspecialorder") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBspecialorder())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("btracksalebill") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBtracksalebill())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cinvmnemcode") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getCinvmnemcode())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iplandefault") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIplandefault())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ipfbatchqty") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIpfbatchqty())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("iallocateprintdgt") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIallocateprintdgt())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bcheckbatch") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBcheckbatch())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("bmngoldpart") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBmngoldpart())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ioldpartmngrule") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getIoldpartmngrule())%></td> 
			</tr> 
		</table> 
		 
		<!-- 工具栏 --> 
		<jsp:include page="../ToolBar/detail_toolbar.jsp"/> 
	</body> 
</html> 
