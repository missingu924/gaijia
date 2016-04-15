<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.hz.dict.service.IDictionaryService"%> 
<%@page import="com.u8.obj.InventoryObj"%> 
<!-- 基本信息 -->  
<% 
	// 上下文路径 
	String contextPath = request.getContextPath(); 
	 
	// 对象实例 
	InventoryObj domainInstance = new InventoryObj(); 
	// 该功能基本路径 
	String basePath = domainInstance.getBasePath(); 
 
	// 如果是修改，则获取对象信息 
	Object domainInstanceObj = request.getAttribute("domainInstance"); 
	if (domainInstanceObj != null) 
	{ 
		domainInstance = (InventoryObj) domainInstanceObj; 
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
		if(!checkNull("cinvcode","<%=domainInstance.getPropertyCnName("cinvcode")%>")) return false; 
		if(!checkNull("cinvaddcode","<%=domainInstance.getPropertyCnName("cinvaddcode")%>")) return false; 
		if(!checkNull("cinvname","<%=domainInstance.getPropertyCnName("cinvname")%>")) return false; 
		if(!checkNull("cinvstd","<%=domainInstance.getPropertyCnName("cinvstd")%>")) return false; 
		if(!checkNull("cinvccode","<%=domainInstance.getPropertyCnName("cinvccode")%>")) return false; 
		if(!checkNull("cvencode","<%=domainInstance.getPropertyCnName("cvencode")%>")) return false; 
		if(!checkNull("creplaceitem","<%=domainInstance.getPropertyCnName("creplaceitem")%>")) return false; 
		if(!checkNull("cposition","<%=domainInstance.getPropertyCnName("cposition")%>")) return false; 
		if(!checkNull("bsale","<%=domainInstance.getPropertyCnName("bsale")%>")) return false; 
		if(!checkNull("bpurchase","<%=domainInstance.getPropertyCnName("bpurchase")%>")) return false; 
		if(!checkNull("bself","<%=domainInstance.getPropertyCnName("bself")%>")) return false; 
		if(!checkNull("bcomsume","<%=domainInstance.getPropertyCnName("bcomsume")%>")) return false; 
		if(!checkNull("bproducing","<%=domainInstance.getPropertyCnName("bproducing")%>")) return false; 
		if(!checkNull("bservice","<%=domainInstance.getPropertyCnName("bservice")%>")) return false; 
		if(!checkNull("baccessary","<%=domainInstance.getPropertyCnName("baccessary")%>")) return false; 
		if(!checkNull("itaxrate","<%=domainInstance.getPropertyCnName("itaxrate")%>")) return false; 
		if(!checkNull("iinvweight","<%=domainInstance.getPropertyCnName("iinvweight")%>")) return false; 
		if(!checkNull("ivolume","<%=domainInstance.getPropertyCnName("ivolume")%>")) return false; 
		if(!checkNull("iinvrcost","<%=domainInstance.getPropertyCnName("iinvrcost")%>")) return false; 
		if(!checkNull("iinvsprice","<%=domainInstance.getPropertyCnName("iinvsprice")%>")) return false; 
		if(!checkNull("iinvscost","<%=domainInstance.getPropertyCnName("iinvscost")%>")) return false; 
		if(!checkNull("iinvlscost","<%=domainInstance.getPropertyCnName("iinvlscost")%>")) return false; 
		if(!checkNull("iinvncost","<%=domainInstance.getPropertyCnName("iinvncost")%>")) return false; 
		if(!checkNull("iinvadvance","<%=domainInstance.getPropertyCnName("iinvadvance")%>")) return false; 
		if(!checkNull("iinvbatch","<%=domainInstance.getPropertyCnName("iinvbatch")%>")) return false; 
		if(!checkNull("isafenum","<%=domainInstance.getPropertyCnName("isafenum")%>")) return false; 
		if(!checkNull("itopsum","<%=domainInstance.getPropertyCnName("itopsum")%>")) return false; 
		if(!checkNull("ilowsum","<%=domainInstance.getPropertyCnName("ilowsum")%>")) return false; 
		if(!checkNull("ioverstock","<%=domainInstance.getPropertyCnName("ioverstock")%>")) return false; 
		if(!checkNull("cinvabc","<%=domainInstance.getPropertyCnName("cinvabc")%>")) return false; 
		if(!checkNull("binvquality","<%=domainInstance.getPropertyCnName("binvquality")%>")) return false; 
		if(!checkNull("binvbatch","<%=domainInstance.getPropertyCnName("binvbatch")%>")) return false; 
		if(!checkNull("binventrust","<%=domainInstance.getPropertyCnName("binventrust")%>")) return false; 
		if(!checkNull("binvoverstock","<%=domainInstance.getPropertyCnName("binvoverstock")%>")) return false; 
		if(!checkNull("dsdate","<%=domainInstance.getPropertyCnName("dsdate")%>")) return false; 
		if(!checkNull("dedate","<%=domainInstance.getPropertyCnName("dedate")%>")) return false; 
		if(!checkNull("bfree1","<%=domainInstance.getPropertyCnName("bfree1")%>")) return false; 
		if(!checkNull("bfree2","<%=domainInstance.getPropertyCnName("bfree2")%>")) return false; 
		if(!checkNull("cinvdefine1","<%=domainInstance.getPropertyCnName("cinvdefine1")%>")) return false; 
		if(!checkNull("cinvdefine2","<%=domainInstance.getPropertyCnName("cinvdefine2")%>")) return false; 
		if(!checkNull("cinvdefine3","<%=domainInstance.getPropertyCnName("cinvdefine3")%>")) return false; 
		if(!checkNull("i_id","<%=domainInstance.getPropertyCnName("i_id")%>")) return false; 
		if(!checkNull("binvtype","<%=domainInstance.getPropertyCnName("binvtype")%>")) return false; 
		if(!checkNull("iinvmpcost","<%=domainInstance.getPropertyCnName("iinvmpcost")%>")) return false; 
		if(!checkNull("cquality","<%=domainInstance.getPropertyCnName("cquality")%>")) return false; 
		if(!checkNull("iinvsalecost","<%=domainInstance.getPropertyCnName("iinvsalecost")%>")) return false; 
		if(!checkNull("iinvscost1","<%=domainInstance.getPropertyCnName("iinvscost1")%>")) return false; 
		if(!checkNull("iinvscost2","<%=domainInstance.getPropertyCnName("iinvscost2")%>")) return false; 
		if(!checkNull("iinvscost3","<%=domainInstance.getPropertyCnName("iinvscost3")%>")) return false; 
		if(!checkNull("bfree3","<%=domainInstance.getPropertyCnName("bfree3")%>")) return false; 
		if(!checkNull("bfree4","<%=domainInstance.getPropertyCnName("bfree4")%>")) return false; 
		if(!checkNull("bfree5","<%=domainInstance.getPropertyCnName("bfree5")%>")) return false; 
		if(!checkNull("bfree6","<%=domainInstance.getPropertyCnName("bfree6")%>")) return false; 
		if(!checkNull("bfree7","<%=domainInstance.getPropertyCnName("bfree7")%>")) return false; 
		if(!checkNull("bfree8","<%=domainInstance.getPropertyCnName("bfree8")%>")) return false; 
		if(!checkNull("bfree9","<%=domainInstance.getPropertyCnName("bfree9")%>")) return false; 
		if(!checkNull("bfree10","<%=domainInstance.getPropertyCnName("bfree10")%>")) return false; 
		if(!checkNull("ccreateperson","<%=domainInstance.getPropertyCnName("ccreateperson")%>")) return false; 
		if(!checkNull("cmodifyperson","<%=domainInstance.getPropertyCnName("cmodifyperson")%>")) return false; 
		if(!checkNull("dmodifydate","<%=domainInstance.getPropertyCnName("dmodifydate")%>")) return false; 
		if(!checkNull("fsubscribepoint","<%=domainInstance.getPropertyCnName("fsubscribepoint")%>")) return false; 
		if(!checkNull("fvagquantity","<%=domainInstance.getPropertyCnName("fvagquantity")%>")) return false; 
		if(!checkNull("cvaluetype","<%=domainInstance.getPropertyCnName("cvaluetype")%>")) return false; 
		if(!checkNull("bfixexch","<%=domainInstance.getPropertyCnName("bfixexch")%>")) return false; 
		if(!checkNull("foutexcess","<%=domainInstance.getPropertyCnName("foutexcess")%>")) return false; 
		if(!checkNull("finexcess","<%=domainInstance.getPropertyCnName("finexcess")%>")) return false; 
		if(!checkNull("imassdate","<%=domainInstance.getPropertyCnName("imassdate")%>")) return false; 
		if(!checkNull("iwarndays","<%=domainInstance.getPropertyCnName("iwarndays")%>")) return false; 
		if(!checkNull("fexpensesexch","<%=domainInstance.getPropertyCnName("fexpensesexch")%>")) return false; 
		if(!checkNull("btrack","<%=domainInstance.getPropertyCnName("btrack")%>")) return false; 
		if(!checkNull("bserial","<%=domainInstance.getPropertyCnName("bserial")%>")) return false; 
		if(!checkNull("bbarcode","<%=domainInstance.getPropertyCnName("bbarcode")%>")) return false; 
		if(!checkNull("iid","<%=domainInstance.getPropertyCnName("iid")%>")) return false; 
		if(!checkNull("cbarcode","<%=domainInstance.getPropertyCnName("cbarcode")%>")) return false; 
		if(!checkNull("cinvdefine4","<%=domainInstance.getPropertyCnName("cinvdefine4")%>")) return false; 
		if(!checkNull("cinvdefine5","<%=domainInstance.getPropertyCnName("cinvdefine5")%>")) return false; 
		if(!checkNull("cinvdefine6","<%=domainInstance.getPropertyCnName("cinvdefine6")%>")) return false; 
		if(!checkNull("cinvdefine7","<%=domainInstance.getPropertyCnName("cinvdefine7")%>")) return false; 
		if(!checkNull("cinvdefine8","<%=domainInstance.getPropertyCnName("cinvdefine8")%>")) return false; 
		if(!checkNull("cinvdefine9","<%=domainInstance.getPropertyCnName("cinvdefine9")%>")) return false; 
		if(!checkNull("cinvdefine10","<%=domainInstance.getPropertyCnName("cinvdefine10")%>")) return false; 
		if(!checkNull("cinvdefine11","<%=domainInstance.getPropertyCnName("cinvdefine11")%>")) return false; 
		if(!checkNull("cinvdefine12","<%=domainInstance.getPropertyCnName("cinvdefine12")%>")) return false; 
		if(!checkNull("cinvdefine13","<%=domainInstance.getPropertyCnName("cinvdefine13")%>")) return false; 
		if(!checkNull("cinvdefine14","<%=domainInstance.getPropertyCnName("cinvdefine14")%>")) return false; 
		if(!checkNull("cinvdefine15","<%=domainInstance.getPropertyCnName("cinvdefine15")%>")) return false; 
		if(!checkNull("cinvdefine16","<%=domainInstance.getPropertyCnName("cinvdefine16")%>")) return false; 
		if(!checkNull("igrouptype","<%=domainInstance.getPropertyCnName("igrouptype")%>")) return false; 
		if(!checkNull("cgroupcode","<%=domainInstance.getPropertyCnName("cgroupcode")%>")) return false; 
		if(!checkNull("ccomunitcode","<%=domainInstance.getPropertyCnName("ccomunitcode")%>")) return false; 
		if(!checkNull("casscomunitcode","<%=domainInstance.getPropertyCnName("casscomunitcode")%>")) return false; 
		if(!checkNull("csacomunitcode","<%=domainInstance.getPropertyCnName("csacomunitcode")%>")) return false; 
		if(!checkNull("cpucomunitcode","<%=domainInstance.getPropertyCnName("cpucomunitcode")%>")) return false; 
		if(!checkNull("cstcomunitcode","<%=domainInstance.getPropertyCnName("cstcomunitcode")%>")) return false; 
		if(!checkNull("ccacomunitcode","<%=domainInstance.getPropertyCnName("ccacomunitcode")%>")) return false; 
		if(!checkNull("cfrequency","<%=domainInstance.getPropertyCnName("cfrequency")%>")) return false; 
		if(!checkNull("ifrequency","<%=domainInstance.getPropertyCnName("ifrequency")%>")) return false; 
		if(!checkNull("idays","<%=domainInstance.getPropertyCnName("idays")%>")) return false; 
		if(!checkNull("dlastdate","<%=domainInstance.getPropertyCnName("dlastdate")%>")) return false; 
		if(!checkNull("iwastage","<%=domainInstance.getPropertyCnName("iwastage")%>")) return false; 
		if(!checkNull("bsolitude","<%=domainInstance.getPropertyCnName("bsolitude")%>")) return false; 
		if(!checkNull("centerprise","<%=domainInstance.getPropertyCnName("centerprise")%>")) return false; 
		if(!checkNull("caddress","<%=domainInstance.getPropertyCnName("caddress")%>")) return false; 
		if(!checkNull("cfile","<%=domainInstance.getPropertyCnName("cfile")%>")) return false; 
		if(!checkNull("clabel","<%=domainInstance.getPropertyCnName("clabel")%>")) return false; 
		if(!checkNull("ccheckout","<%=domainInstance.getPropertyCnName("ccheckout")%>")) return false; 
		if(!checkNull("clicence","<%=domainInstance.getPropertyCnName("clicence")%>")) return false; 
		if(!checkNull("bspecialties","<%=domainInstance.getPropertyCnName("bspecialties")%>")) return false; 
		if(!checkNull("cdefwarehouse","<%=domainInstance.getPropertyCnName("cdefwarehouse")%>")) return false; 
		if(!checkNull("ihighprice","<%=domainInstance.getPropertyCnName("ihighprice")%>")) return false; 
		if(!checkNull("iexpsalerate","<%=domainInstance.getPropertyCnName("iexpsalerate")%>")) return false; 
		if(!checkNull("cpricegroup","<%=domainInstance.getPropertyCnName("cpricegroup")%>")) return false; 
		if(!checkNull("coffergrade","<%=domainInstance.getPropertyCnName("coffergrade")%>")) return false; 
		if(!checkNull("iofferrate","<%=domainInstance.getPropertyCnName("iofferrate")%>")) return false; 
		if(!checkNull("cmonth","<%=domainInstance.getPropertyCnName("cmonth")%>")) return false; 
		if(!checkNull("iadvancedate","<%=domainInstance.getPropertyCnName("iadvancedate")%>")) return false; 
		if(!checkNull("ccurrencyname","<%=domainInstance.getPropertyCnName("ccurrencyname")%>")) return false; 
		if(!checkNull("cproduceaddress","<%=domainInstance.getPropertyCnName("cproduceaddress")%>")) return false; 
		if(!checkNull("cproducenation","<%=domainInstance.getPropertyCnName("cproducenation")%>")) return false; 
		if(!checkNull("cregisterno","<%=domainInstance.getPropertyCnName("cregisterno")%>")) return false; 
		if(!checkNull("centerno","<%=domainInstance.getPropertyCnName("centerno")%>")) return false; 
		if(!checkNull("cpackingtype","<%=domainInstance.getPropertyCnName("cpackingtype")%>")) return false; 
		if(!checkNull("cenglishname","<%=domainInstance.getPropertyCnName("cenglishname")%>")) return false; 
		if(!checkNull("bpropertycheck","<%=domainInstance.getPropertyCnName("bpropertycheck")%>")) return false; 
		if(!checkNull("cpreparationtype","<%=domainInstance.getPropertyCnName("cpreparationtype")%>")) return false; 
		if(!checkNull("ccommodity","<%=domainInstance.getPropertyCnName("ccommodity")%>")) return false; 
		if(!checkNull("irecipebatch","<%=domainInstance.getPropertyCnName("irecipebatch")%>")) return false; 
		if(!checkNull("cnotpatentname","<%=domainInstance.getPropertyCnName("cnotpatentname")%>")) return false; 
		if(!checkNull("pubufts","<%=domainInstance.getPropertyCnName("pubufts")%>")) return false; 
		if(!checkNull("bpromotsales","<%=domainInstance.getPropertyCnName("bpromotsales")%>")) return false; 
		if(!checkNull("iplanpolicy","<%=domainInstance.getPropertyCnName("iplanpolicy")%>")) return false; 
		if(!checkNull("iropmethod","<%=domainInstance.getPropertyCnName("iropmethod")%>")) return false; 
		if(!checkNull("ibatchrule","<%=domainInstance.getPropertyCnName("ibatchrule")%>")) return false; 
		if(!checkNull("fbatchincrement","<%=domainInstance.getPropertyCnName("fbatchincrement")%>")) return false; 
		if(!checkNull("iassureprovidedays","<%=domainInstance.getPropertyCnName("iassureprovidedays")%>")) return false; 
		if(!checkNull("iteststyle","<%=domainInstance.getPropertyCnName("iteststyle")%>")) return false; 
		if(!checkNull("idtmethod","<%=domainInstance.getPropertyCnName("idtmethod")%>")) return false; 
		if(!checkNull("fdtrate","<%=domainInstance.getPropertyCnName("fdtrate")%>")) return false; 
		if(!checkNull("fdtnum","<%=domainInstance.getPropertyCnName("fdtnum")%>")) return false; 
		if(!checkNull("cdtunit","<%=domainInstance.getPropertyCnName("cdtunit")%>")) return false; 
		if(!checkNull("idtstyle","<%=domainInstance.getPropertyCnName("idtstyle")%>")) return false; 
		if(!checkNull("iqtmethod","<%=domainInstance.getPropertyCnName("iqtmethod")%>")) return false; 
		if(!checkNull("pictureguid","<%=domainInstance.getPropertyCnName("pictureguid")%>")) return false; 
		if(!checkNull("bplaninv","<%=domainInstance.getPropertyCnName("bplaninv")%>")) return false; 
		if(!checkNull("bproxyforeign","<%=domainInstance.getPropertyCnName("bproxyforeign")%>")) return false; 
		if(!checkNull("batomodel","<%=domainInstance.getPropertyCnName("batomodel")%>")) return false; 
		if(!checkNull("bcheckitem","<%=domainInstance.getPropertyCnName("bcheckitem")%>")) return false; 
		if(!checkNull("bptomodel","<%=domainInstance.getPropertyCnName("bptomodel")%>")) return false; 
		if(!checkNull("bequipment","<%=domainInstance.getPropertyCnName("bequipment")%>")) return false; 
		if(!checkNull("cproductunit","<%=domainInstance.getPropertyCnName("cproductunit")%>")) return false; 
		if(!checkNull("forderuplimit","<%=domainInstance.getPropertyCnName("forderuplimit")%>")) return false; 
		if(!checkNull("cmassunit","<%=domainInstance.getPropertyCnName("cmassunit")%>")) return false; 
		if(!checkNull("fretailprice","<%=domainInstance.getPropertyCnName("fretailprice")%>")) return false; 
		if(!checkNull("cinvdepcode","<%=domainInstance.getPropertyCnName("cinvdepcode")%>")) return false; 
		if(!checkNull("ialteradvance","<%=domainInstance.getPropertyCnName("ialteradvance")%>")) return false; 
		if(!checkNull("falterbasenum","<%=domainInstance.getPropertyCnName("falterbasenum")%>")) return false; 
		if(!checkNull("cplanmethod","<%=domainInstance.getPropertyCnName("cplanmethod")%>")) return false; 
		if(!checkNull("bmps","<%=domainInstance.getPropertyCnName("bmps")%>")) return false; 
		if(!checkNull("brop","<%=domainInstance.getPropertyCnName("brop")%>")) return false; 
		if(!checkNull("breplan","<%=domainInstance.getPropertyCnName("breplan")%>")) return false; 
		if(!checkNull("csrpolicy","<%=domainInstance.getPropertyCnName("csrpolicy")%>")) return false; 
		if(!checkNull("bbillunite","<%=domainInstance.getPropertyCnName("bbillunite")%>")) return false; 
		if(!checkNull("isupplyday","<%=domainInstance.getPropertyCnName("isupplyday")%>")) return false; 
		if(!checkNull("fsupplymulti","<%=domainInstance.getPropertyCnName("fsupplymulti")%>")) return false; 
		if(!checkNull("fminsupply","<%=domainInstance.getPropertyCnName("fminsupply")%>")) return false; 
		if(!checkNull("bcutmantissa","<%=domainInstance.getPropertyCnName("bcutmantissa")%>")) return false; 
		if(!checkNull("cinvpersoncode","<%=domainInstance.getPropertyCnName("cinvpersoncode")%>")) return false; 
		if(!checkNull("iinvtfid","<%=domainInstance.getPropertyCnName("iinvtfid")%>")) return false; 
		if(!checkNull("cengineerfigno","<%=domainInstance.getPropertyCnName("cengineerfigno")%>")) return false; 
		if(!checkNull("bintotalcost","<%=domainInstance.getPropertyCnName("bintotalcost")%>")) return false; 
		if(!checkNull("isupplytype","<%=domainInstance.getPropertyCnName("isupplytype")%>")) return false; 
		if(!checkNull("bconfigfree1","<%=domainInstance.getPropertyCnName("bconfigfree1")%>")) return false; 
		if(!checkNull("bconfigfree2","<%=domainInstance.getPropertyCnName("bconfigfree2")%>")) return false; 
		if(!checkNull("bconfigfree3","<%=domainInstance.getPropertyCnName("bconfigfree3")%>")) return false; 
		if(!checkNull("bconfigfree4","<%=domainInstance.getPropertyCnName("bconfigfree4")%>")) return false; 
		if(!checkNull("bconfigfree5","<%=domainInstance.getPropertyCnName("bconfigfree5")%>")) return false; 
		if(!checkNull("bconfigfree6","<%=domainInstance.getPropertyCnName("bconfigfree6")%>")) return false; 
		if(!checkNull("bconfigfree7","<%=domainInstance.getPropertyCnName("bconfigfree7")%>")) return false; 
		if(!checkNull("bconfigfree8","<%=domainInstance.getPropertyCnName("bconfigfree8")%>")) return false; 
		if(!checkNull("bconfigfree9","<%=domainInstance.getPropertyCnName("bconfigfree9")%>")) return false; 
		if(!checkNull("bconfigfree10","<%=domainInstance.getPropertyCnName("bconfigfree10")%>")) return false; 
		if(!checkNull("idtlevel","<%=domainInstance.getPropertyCnName("idtlevel")%>")) return false; 
		if(!checkNull("cdtaql","<%=domainInstance.getPropertyCnName("cdtaql")%>")) return false; 
		if(!checkNull("bperioddt","<%=domainInstance.getPropertyCnName("bperioddt")%>")) return false; 
		if(!checkNull("cdtperiod","<%=domainInstance.getPropertyCnName("cdtperiod")%>")) return false; 
		if(!checkNull("ibigmonth","<%=domainInstance.getPropertyCnName("ibigmonth")%>")) return false; 
		if(!checkNull("ibigday","<%=domainInstance.getPropertyCnName("ibigday")%>")) return false; 
		if(!checkNull("ismallmonth","<%=domainInstance.getPropertyCnName("ismallmonth")%>")) return false; 
		if(!checkNull("ismallday","<%=domainInstance.getPropertyCnName("ismallday")%>")) return false; 
		if(!checkNull("boutinvdt","<%=domainInstance.getPropertyCnName("boutinvdt")%>")) return false; 
		if(!checkNull("bbackinvdt","<%=domainInstance.getPropertyCnName("bbackinvdt")%>")) return false; 
		if(!checkNull("ienddtstyle","<%=domainInstance.getPropertyCnName("ienddtstyle")%>")) return false; 
		if(!checkNull("bdtwarninv","<%=domainInstance.getPropertyCnName("bdtwarninv")%>")) return false; 
		if(!checkNull("fbacktaxrate","<%=domainInstance.getPropertyCnName("fbacktaxrate")%>")) return false; 
		if(!checkNull("cciqcode","<%=domainInstance.getPropertyCnName("cciqcode")%>")) return false; 
		if(!checkNull("cwgroupcode","<%=domainInstance.getPropertyCnName("cwgroupcode")%>")) return false; 
		if(!checkNull("cwunit","<%=domainInstance.getPropertyCnName("cwunit")%>")) return false; 
		if(!checkNull("fgrossw","<%=domainInstance.getPropertyCnName("fgrossw")%>")) return false; 
		if(!checkNull("cvgroupcode","<%=domainInstance.getPropertyCnName("cvgroupcode")%>")) return false; 
		if(!checkNull("cvunit","<%=domainInstance.getPropertyCnName("cvunit")%>")) return false; 
		if(!checkNull("flength","<%=domainInstance.getPropertyCnName("flength")%>")) return false; 
		if(!checkNull("fwidth","<%=domainInstance.getPropertyCnName("fwidth")%>")) return false; 
		if(!checkNull("fheight","<%=domainInstance.getPropertyCnName("fheight")%>")) return false; 
		if(!checkNull("idtucounter","<%=domainInstance.getPropertyCnName("idtucounter")%>")) return false; 
		if(!checkNull("idtdcounter","<%=domainInstance.getPropertyCnName("idtdcounter")%>")) return false; 
		if(!checkNull("ibatchcounter","<%=domainInstance.getPropertyCnName("ibatchcounter")%>")) return false; 
		if(!checkNull("cshopunit","<%=domainInstance.getPropertyCnName("cshopunit")%>")) return false; 
		if(!checkNull("cpurpersoncode","<%=domainInstance.getPropertyCnName("cpurpersoncode")%>")) return false; 
		if(!checkNull("bimportmedicine","<%=domainInstance.getPropertyCnName("bimportmedicine")%>")) return false; 
		if(!checkNull("bfirstbusimedicine","<%=domainInstance.getPropertyCnName("bfirstbusimedicine")%>")) return false; 
		if(!checkNull("bforeexpland","<%=domainInstance.getPropertyCnName("bforeexpland")%>")) return false; 
		if(!checkNull("cinvplancode","<%=domainInstance.getPropertyCnName("cinvplancode")%>")) return false; 
		if(!checkNull("fconvertrate","<%=domainInstance.getPropertyCnName("fconvertrate")%>")) return false; 
		if(!checkNull("dreplacedate","<%=domainInstance.getPropertyCnName("dreplacedate")%>")) return false; 
		if(!checkNull("binvmodel","<%=domainInstance.getPropertyCnName("binvmodel")%>")) return false; 
		if(!checkNull("bkccutmantissa","<%=domainInstance.getPropertyCnName("bkccutmantissa")%>")) return false; 
		if(!checkNull("breceiptbydt","<%=domainInstance.getPropertyCnName("breceiptbydt")%>")) return false; 
		if(!checkNull("iimptaxrate","<%=domainInstance.getPropertyCnName("iimptaxrate")%>")) return false; 
		if(!checkNull("iexptaxrate","<%=domainInstance.getPropertyCnName("iexptaxrate")%>")) return false; 
		if(!checkNull("bexpsale","<%=domainInstance.getPropertyCnName("bexpsale")%>")) return false; 
		if(!checkNull("idrawbatch","<%=domainInstance.getPropertyCnName("idrawbatch")%>")) return false; 
		if(!checkNull("bcheckbsatp","<%=domainInstance.getPropertyCnName("bcheckbsatp")%>")) return false; 
		if(!checkNull("cinvprojectcode","<%=domainInstance.getPropertyCnName("cinvprojectcode")%>")) return false; 
		if(!checkNull("itestrule","<%=domainInstance.getPropertyCnName("itestrule")%>")) return false; 
		if(!checkNull("crulecode","<%=domainInstance.getPropertyCnName("crulecode")%>")) return false; 
		if(!checkNull("bcheckfree1","<%=domainInstance.getPropertyCnName("bcheckfree1")%>")) return false; 
		if(!checkNull("bcheckfree2","<%=domainInstance.getPropertyCnName("bcheckfree2")%>")) return false; 
		if(!checkNull("bcheckfree3","<%=domainInstance.getPropertyCnName("bcheckfree3")%>")) return false; 
		if(!checkNull("bcheckfree4","<%=domainInstance.getPropertyCnName("bcheckfree4")%>")) return false; 
		if(!checkNull("bcheckfree5","<%=domainInstance.getPropertyCnName("bcheckfree5")%>")) return false; 
		if(!checkNull("bcheckfree6","<%=domainInstance.getPropertyCnName("bcheckfree6")%>")) return false; 
		if(!checkNull("bcheckfree7","<%=domainInstance.getPropertyCnName("bcheckfree7")%>")) return false; 
		if(!checkNull("bcheckfree8","<%=domainInstance.getPropertyCnName("bcheckfree8")%>")) return false; 
		if(!checkNull("bcheckfree9","<%=domainInstance.getPropertyCnName("bcheckfree9")%>")) return false; 
		if(!checkNull("bcheckfree10","<%=domainInstance.getPropertyCnName("bcheckfree10")%>")) return false; 
		if(!checkNull("bbommain","<%=domainInstance.getPropertyCnName("bbommain")%>")) return false; 
		if(!checkNull("bbomsub","<%=domainInstance.getPropertyCnName("bbomsub")%>")) return false; 
		if(!checkNull("bproductbill","<%=domainInstance.getPropertyCnName("bproductbill")%>")) return false; 
		if(!checkNull("icheckatp","<%=domainInstance.getPropertyCnName("icheckatp")%>")) return false; 
		if(!checkNull("iinvatpid","<%=domainInstance.getPropertyCnName("iinvatpid")%>")) return false; 
		if(!checkNull("iplantfday","<%=domainInstance.getPropertyCnName("iplantfday")%>")) return false; 
		if(!checkNull("ioverlapday","<%=domainInstance.getPropertyCnName("ioverlapday")%>")) return false; 
		if(!checkNull("bpiece","<%=domainInstance.getPropertyCnName("bpiece")%>")) return false; 
		if(!checkNull("bsrvitem","<%=domainInstance.getPropertyCnName("bsrvitem")%>")) return false; 
		if(!checkNull("bsrvfittings","<%=domainInstance.getPropertyCnName("bsrvfittings")%>")) return false; 
		if(!checkNull("fmaxsupply","<%=domainInstance.getPropertyCnName("fmaxsupply")%>")) return false; 
		if(!checkNull("fminsplit","<%=domainInstance.getPropertyCnName("fminsplit")%>")) return false; 
		if(!checkNull("bspecialorder","<%=domainInstance.getPropertyCnName("bspecialorder")%>")) return false; 
		if(!checkNull("btracksalebill","<%=domainInstance.getPropertyCnName("btracksalebill")%>")) return false; 
					 
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
						<%=domainInstance.getPropertyCnName("cinvaddcode") %>: 
					</td> 
					<td> 
						<input name="cinvaddcode" type="text" id="cinvaddcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvaddcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvname") %>: 
					</td> 
					<td> 
						<input name="cinvname" type="text" id="cinvname" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvname(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvstd") %>: 
					</td> 
					<td> 
						<input name="cinvstd" type="text" id="cinvstd" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvstd(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvccode") %>: 
					</td> 
					<td> 
						<input name="cinvccode" type="text" id="cinvccode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvccode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cvencode") %>: 
					</td> 
					<td> 
						<input name="cvencode" type="text" id="cvencode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCvencode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("creplaceitem") %>: 
					</td> 
					<td> 
						<input name="creplaceitem" type="text" id="creplaceitem" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCreplaceitem(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cposition") %>: 
					</td> 
					<td> 
						<input name="cposition" type="text" id="cposition" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCposition(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bsale") %>: 
					</td> 
					<td> 
						<input name="bsale" type="text" id="bsale" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBsale(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bpurchase") %>: 
					</td> 
					<td> 
						<input name="bpurchase" type="text" id="bpurchase" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBpurchase(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bself") %>: 
					</td> 
					<td> 
						<input name="bself" type="text" id="bself" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBself(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcomsume") %>: 
					</td> 
					<td> 
						<input name="bcomsume" type="text" id="bcomsume" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcomsume(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bproducing") %>: 
					</td> 
					<td> 
						<input name="bproducing" type="text" id="bproducing" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBproducing(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bservice") %>: 
					</td> 
					<td> 
						<input name="bservice" type="text" id="bservice" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBservice(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("baccessary") %>: 
					</td> 
					<td> 
						<input name="baccessary" type="text" id="baccessary" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBaccessary(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("iinvweight") %>: 
					</td> 
					<td> 
						<input name="iinvweight" type="text" id="iinvweight" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvweight(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ivolume") %>: 
					</td> 
					<td> 
						<input name="ivolume" type="text" id="ivolume" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIvolume(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvrcost") %>: 
					</td> 
					<td> 
						<input name="iinvrcost" type="text" id="iinvrcost" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvrcost(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvsprice") %>: 
					</td> 
					<td> 
						<input name="iinvsprice" type="text" id="iinvsprice" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvsprice(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvscost") %>: 
					</td> 
					<td> 
						<input name="iinvscost" type="text" id="iinvscost" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvscost(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvlscost") %>: 
					</td> 
					<td> 
						<input name="iinvlscost" type="text" id="iinvlscost" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvlscost(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvncost") %>: 
					</td> 
					<td> 
						<input name="iinvncost" type="text" id="iinvncost" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvncost(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvadvance") %>: 
					</td> 
					<td> 
						<input name="iinvadvance" type="text" id="iinvadvance" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvadvance(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvbatch") %>: 
					</td> 
					<td> 
						<input name="iinvbatch" type="text" id="iinvbatch" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvbatch(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("isafenum") %>: 
					</td> 
					<td> 
						<input name="isafenum" type="text" id="isafenum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIsafenum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("itopsum") %>: 
					</td> 
					<td> 
						<input name="itopsum" type="text" id="itopsum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getItopsum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ilowsum") %>: 
					</td> 
					<td> 
						<input name="ilowsum" type="text" id="ilowsum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIlowsum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ioverstock") %>: 
					</td> 
					<td> 
						<input name="ioverstock" type="text" id="ioverstock" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIoverstock(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvabc") %>: 
					</td> 
					<td> 
						<input name="cinvabc" type="text" id="cinvabc" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvabc(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("binvquality") %>: 
					</td> 
					<td> 
						<input name="binvquality" type="text" id="binvquality" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBinvquality(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("binvbatch") %>: 
					</td> 
					<td> 
						<input name="binvbatch" type="text" id="binvbatch" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBinvbatch(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("binventrust") %>: 
					</td> 
					<td> 
						<input name="binventrust" type="text" id="binventrust" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBinventrust(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("binvoverstock") %>: 
					</td> 
					<td> 
						<input name="binvoverstock" type="text" id="binvoverstock" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBinvoverstock(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dsdate") %>: 
					</td> 
					<td> 
						<input name="dsdate" type="text" id="dsdate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDsdate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dedate") %>: 
					</td> 
					<td> 
						<input name="dedate" type="text" id="dedate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDedate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bfree1") %>: 
					</td> 
					<td> 
						<input name="bfree1" type="text" id="bfree1" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBfree1(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bfree2") %>: 
					</td> 
					<td> 
						<input name="bfree2" type="text" id="bfree2" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBfree2(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine1") %>: 
					</td> 
					<td> 
						<input name="cinvdefine1" type="text" id="cinvdefine1" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine1(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine2") %>: 
					</td> 
					<td> 
						<input name="cinvdefine2" type="text" id="cinvdefine2" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine2(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine3") %>: 
					</td> 
					<td> 
						<input name="cinvdefine3" type="text" id="cinvdefine3" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine3(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("i_id") %>: 
					</td> 
					<td> 
						<input name="i_id" type="text" id="i_id" value="<%=StringUtil.getNotEmptyStr(domainInstance.getI_id(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("binvtype") %>: 
					</td> 
					<td> 
						<input name="binvtype" type="text" id="binvtype" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBinvtype(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvmpcost") %>: 
					</td> 
					<td> 
						<input name="iinvmpcost" type="text" id="iinvmpcost" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvmpcost(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cquality") %>: 
					</td> 
					<td> 
						<input name="cquality" type="text" id="cquality" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCquality(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvsalecost") %>: 
					</td> 
					<td> 
						<input name="iinvsalecost" type="text" id="iinvsalecost" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvsalecost(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvscost1") %>: 
					</td> 
					<td> 
						<input name="iinvscost1" type="text" id="iinvscost1" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvscost1(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvscost2") %>: 
					</td> 
					<td> 
						<input name="iinvscost2" type="text" id="iinvscost2" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvscost2(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvscost3") %>: 
					</td> 
					<td> 
						<input name="iinvscost3" type="text" id="iinvscost3" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvscost3(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bfree3") %>: 
					</td> 
					<td> 
						<input name="bfree3" type="text" id="bfree3" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBfree3(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bfree4") %>: 
					</td> 
					<td> 
						<input name="bfree4" type="text" id="bfree4" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBfree4(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bfree5") %>: 
					</td> 
					<td> 
						<input name="bfree5" type="text" id="bfree5" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBfree5(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bfree6") %>: 
					</td> 
					<td> 
						<input name="bfree6" type="text" id="bfree6" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBfree6(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bfree7") %>: 
					</td> 
					<td> 
						<input name="bfree7" type="text" id="bfree7" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBfree7(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bfree8") %>: 
					</td> 
					<td> 
						<input name="bfree8" type="text" id="bfree8" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBfree8(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bfree9") %>: 
					</td> 
					<td> 
						<input name="bfree9" type="text" id="bfree9" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBfree9(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bfree10") %>: 
					</td> 
					<td> 
						<input name="bfree10" type="text" id="bfree10" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBfree10(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("fsubscribepoint") %>: 
					</td> 
					<td> 
						<input name="fsubscribepoint" type="text" id="fsubscribepoint" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFsubscribepoint(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fvagquantity") %>: 
					</td> 
					<td> 
						<input name="fvagquantity" type="text" id="fvagquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFvagquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cvaluetype") %>: 
					</td> 
					<td> 
						<input name="cvaluetype" type="text" id="cvaluetype" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCvaluetype(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bfixexch") %>: 
					</td> 
					<td> 
						<input name="bfixexch" type="text" id="bfixexch" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBfixexch(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("foutexcess") %>: 
					</td> 
					<td> 
						<input name="foutexcess" type="text" id="foutexcess" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFoutexcess(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("finexcess") %>: 
					</td> 
					<td> 
						<input name="finexcess" type="text" id="finexcess" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFinexcess(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("imassdate") %>: 
					</td> 
					<td> 
						<input name="imassdate" type="text" id="imassdate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getImassdate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iwarndays") %>: 
					</td> 
					<td> 
						<input name="iwarndays" type="text" id="iwarndays" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIwarndays(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fexpensesexch") %>: 
					</td> 
					<td> 
						<input name="fexpensesexch" type="text" id="fexpensesexch" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFexpensesexch(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("btrack") %>: 
					</td> 
					<td> 
						<input name="btrack" type="text" id="btrack" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBtrack(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bserial") %>: 
					</td> 
					<td> 
						<input name="bserial" type="text" id="bserial" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBserial(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bbarcode") %>: 
					</td> 
					<td> 
						<input name="bbarcode" type="text" id="bbarcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBbarcode(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("cbarcode") %>: 
					</td> 
					<td> 
						<input name="cbarcode" type="text" id="cbarcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCbarcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine4") %>: 
					</td> 
					<td> 
						<input name="cinvdefine4" type="text" id="cinvdefine4" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine4(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine5") %>: 
					</td> 
					<td> 
						<input name="cinvdefine5" type="text" id="cinvdefine5" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine5(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine6") %>: 
					</td> 
					<td> 
						<input name="cinvdefine6" type="text" id="cinvdefine6" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine6(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine7") %>: 
					</td> 
					<td> 
						<input name="cinvdefine7" type="text" id="cinvdefine7" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine7(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine8") %>: 
					</td> 
					<td> 
						<input name="cinvdefine8" type="text" id="cinvdefine8" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine8(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine9") %>: 
					</td> 
					<td> 
						<input name="cinvdefine9" type="text" id="cinvdefine9" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine9(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine10") %>: 
					</td> 
					<td> 
						<input name="cinvdefine10" type="text" id="cinvdefine10" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine10(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine11") %>: 
					</td> 
					<td> 
						<input name="cinvdefine11" type="text" id="cinvdefine11" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine11(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine12") %>: 
					</td> 
					<td> 
						<input name="cinvdefine12" type="text" id="cinvdefine12" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine12(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine13") %>: 
					</td> 
					<td> 
						<input name="cinvdefine13" type="text" id="cinvdefine13" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine13(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine14") %>: 
					</td> 
					<td> 
						<input name="cinvdefine14" type="text" id="cinvdefine14" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine14(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine15") %>: 
					</td> 
					<td> 
						<input name="cinvdefine15" type="text" id="cinvdefine15" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine15(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdefine16") %>: 
					</td> 
					<td> 
						<input name="cinvdefine16" type="text" id="cinvdefine16" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdefine16(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("igrouptype") %>: 
					</td> 
					<td> 
						<input name="igrouptype" type="text" id="igrouptype" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIgrouptype(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cgroupcode") %>: 
					</td> 
					<td> 
						<input name="cgroupcode" type="text" id="cgroupcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCgroupcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccomunitcode") %>: 
					</td> 
					<td> 
						<input name="ccomunitcode" type="text" id="ccomunitcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcomunitcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("casscomunitcode") %>: 
					</td> 
					<td> 
						<input name="casscomunitcode" type="text" id="casscomunitcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCasscomunitcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("csacomunitcode") %>: 
					</td> 
					<td> 
						<input name="csacomunitcode" type="text" id="csacomunitcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCsacomunitcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cpucomunitcode") %>: 
					</td> 
					<td> 
						<input name="cpucomunitcode" type="text" id="cpucomunitcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCpucomunitcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cstcomunitcode") %>: 
					</td> 
					<td> 
						<input name="cstcomunitcode" type="text" id="cstcomunitcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCstcomunitcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccacomunitcode") %>: 
					</td> 
					<td> 
						<input name="ccacomunitcode" type="text" id="ccacomunitcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcacomunitcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cfrequency") %>: 
					</td> 
					<td> 
						<input name="cfrequency" type="text" id="cfrequency" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCfrequency(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("idays") %>: 
					</td> 
					<td> 
						<input name="idays" type="text" id="idays" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIdays(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("iwastage") %>: 
					</td> 
					<td> 
						<input name="iwastage" type="text" id="iwastage" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIwastage(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bsolitude") %>: 
					</td> 
					<td> 
						<input name="bsolitude" type="text" id="bsolitude" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBsolitude(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("centerprise") %>: 
					</td> 
					<td> 
						<input name="centerprise" type="text" id="centerprise" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCenterprise(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("caddress") %>: 
					</td> 
					<td> 
						<input name="caddress" type="text" id="caddress" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCaddress(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cfile") %>: 
					</td> 
					<td> 
						<input name="cfile" type="text" id="cfile" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCfile(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("clabel") %>: 
					</td> 
					<td> 
						<input name="clabel" type="text" id="clabel" value="<%=StringUtil.getNotEmptyStr(domainInstance.getClabel(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccheckout") %>: 
					</td> 
					<td> 
						<input name="ccheckout" type="text" id="ccheckout" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcheckout(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("clicence") %>: 
					</td> 
					<td> 
						<input name="clicence" type="text" id="clicence" value="<%=StringUtil.getNotEmptyStr(domainInstance.getClicence(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bspecialties") %>: 
					</td> 
					<td> 
						<input name="bspecialties" type="text" id="bspecialties" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBspecialties(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefwarehouse") %>: 
					</td> 
					<td> 
						<input name="cdefwarehouse" type="text" id="cdefwarehouse" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefwarehouse(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ihighprice") %>: 
					</td> 
					<td> 
						<input name="ihighprice" type="text" id="ihighprice" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIhighprice(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iexpsalerate") %>: 
					</td> 
					<td> 
						<input name="iexpsalerate" type="text" id="iexpsalerate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIexpsalerate(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("cmonth") %>: 
					</td> 
					<td> 
						<input name="cmonth" type="text" id="cmonth" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCmonth(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iadvancedate") %>: 
					</td> 
					<td> 
						<input name="iadvancedate" type="text" id="iadvancedate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIadvancedate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccurrencyname") %>: 
					</td> 
					<td> 
						<input name="ccurrencyname" type="text" id="ccurrencyname" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcurrencyname(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cproduceaddress") %>: 
					</td> 
					<td> 
						<input name="cproduceaddress" type="text" id="cproduceaddress" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCproduceaddress(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cproducenation") %>: 
					</td> 
					<td> 
						<input name="cproducenation" type="text" id="cproducenation" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCproducenation(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cregisterno") %>: 
					</td> 
					<td> 
						<input name="cregisterno" type="text" id="cregisterno" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCregisterno(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("centerno") %>: 
					</td> 
					<td> 
						<input name="centerno" type="text" id="centerno" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCenterno(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cpackingtype") %>: 
					</td> 
					<td> 
						<input name="cpackingtype" type="text" id="cpackingtype" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCpackingtype(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cenglishname") %>: 
					</td> 
					<td> 
						<input name="cenglishname" type="text" id="cenglishname" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCenglishname(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bpropertycheck") %>: 
					</td> 
					<td> 
						<input name="bpropertycheck" type="text" id="bpropertycheck" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBpropertycheck(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cpreparationtype") %>: 
					</td> 
					<td> 
						<input name="cpreparationtype" type="text" id="cpreparationtype" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCpreparationtype(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccommodity") %>: 
					</td> 
					<td> 
						<input name="ccommodity" type="text" id="ccommodity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcommodity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("irecipebatch") %>: 
					</td> 
					<td> 
						<input name="irecipebatch" type="text" id="irecipebatch" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIrecipebatch(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cnotpatentname") %>: 
					</td> 
					<td> 
						<input name="cnotpatentname" type="text" id="cnotpatentname" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCnotpatentname(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("bpromotsales") %>: 
					</td> 
					<td> 
						<input name="bpromotsales" type="text" id="bpromotsales" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBpromotsales(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iplanpolicy") %>: 
					</td> 
					<td> 
						<input name="iplanpolicy" type="text" id="iplanpolicy" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIplanpolicy(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iropmethod") %>: 
					</td> 
					<td> 
						<input name="iropmethod" type="text" id="iropmethod" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIropmethod(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ibatchrule") %>: 
					</td> 
					<td> 
						<input name="ibatchrule" type="text" id="ibatchrule" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIbatchrule(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fbatchincrement") %>: 
					</td> 
					<td> 
						<input name="fbatchincrement" type="text" id="fbatchincrement" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFbatchincrement(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iassureprovidedays") %>: 
					</td> 
					<td> 
						<input name="iassureprovidedays" type="text" id="iassureprovidedays" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIassureprovidedays(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iteststyle") %>: 
					</td> 
					<td> 
						<input name="iteststyle" type="text" id="iteststyle" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIteststyle(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("idtmethod") %>: 
					</td> 
					<td> 
						<input name="idtmethod" type="text" id="idtmethod" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIdtmethod(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fdtrate") %>: 
					</td> 
					<td> 
						<input name="fdtrate" type="text" id="fdtrate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFdtrate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fdtnum") %>: 
					</td> 
					<td> 
						<input name="fdtnum" type="text" id="fdtnum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFdtnum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdtunit") %>: 
					</td> 
					<td> 
						<input name="cdtunit" type="text" id="cdtunit" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdtunit(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("idtstyle") %>: 
					</td> 
					<td> 
						<input name="idtstyle" type="text" id="idtstyle" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIdtstyle(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iqtmethod") %>: 
					</td> 
					<td> 
						<input name="iqtmethod" type="text" id="iqtmethod" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIqtmethod(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("pictureguid") %>: 
					</td> 
					<td> 
						<input name="pictureguid" type="text" id="pictureguid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getPictureguid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bplaninv") %>: 
					</td> 
					<td> 
						<input name="bplaninv" type="text" id="bplaninv" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBplaninv(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bproxyforeign") %>: 
					</td> 
					<td> 
						<input name="bproxyforeign" type="text" id="bproxyforeign" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBproxyforeign(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("batomodel") %>: 
					</td> 
					<td> 
						<input name="batomodel" type="text" id="batomodel" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBatomodel(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcheckitem") %>: 
					</td> 
					<td> 
						<input name="bcheckitem" type="text" id="bcheckitem" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcheckitem(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bptomodel") %>: 
					</td> 
					<td> 
						<input name="bptomodel" type="text" id="bptomodel" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBptomodel(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bequipment") %>: 
					</td> 
					<td> 
						<input name="bequipment" type="text" id="bequipment" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBequipment(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cproductunit") %>: 
					</td> 
					<td> 
						<input name="cproductunit" type="text" id="cproductunit" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCproductunit(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("forderuplimit") %>: 
					</td> 
					<td> 
						<input name="forderuplimit" type="text" id="forderuplimit" value="<%=StringUtil.getNotEmptyStr(domainInstance.getForderuplimit(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cmassunit") %>: 
					</td> 
					<td> 
						<input name="cmassunit" type="text" id="cmassunit" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCmassunit(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fretailprice") %>: 
					</td> 
					<td> 
						<input name="fretailprice" type="text" id="fretailprice" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFretailprice(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvdepcode") %>: 
					</td> 
					<td> 
						<input name="cinvdepcode" type="text" id="cinvdepcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvdepcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ialteradvance") %>: 
					</td> 
					<td> 
						<input name="ialteradvance" type="text" id="ialteradvance" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIalteradvance(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("falterbasenum") %>: 
					</td> 
					<td> 
						<input name="falterbasenum" type="text" id="falterbasenum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFalterbasenum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cplanmethod") %>: 
					</td> 
					<td> 
						<input name="cplanmethod" type="text" id="cplanmethod" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCplanmethod(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bmps") %>: 
					</td> 
					<td> 
						<input name="bmps" type="text" id="bmps" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBmps(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("brop") %>: 
					</td> 
					<td> 
						<input name="brop" type="text" id="brop" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBrop(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("breplan") %>: 
					</td> 
					<td> 
						<input name="breplan" type="text" id="breplan" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBreplan(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("csrpolicy") %>: 
					</td> 
					<td> 
						<input name="csrpolicy" type="text" id="csrpolicy" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCsrpolicy(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bbillunite") %>: 
					</td> 
					<td> 
						<input name="bbillunite" type="text" id="bbillunite" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBbillunite(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("isupplyday") %>: 
					</td> 
					<td> 
						<input name="isupplyday" type="text" id="isupplyday" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIsupplyday(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fsupplymulti") %>: 
					</td> 
					<td> 
						<input name="fsupplymulti" type="text" id="fsupplymulti" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFsupplymulti(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fminsupply") %>: 
					</td> 
					<td> 
						<input name="fminsupply" type="text" id="fminsupply" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFminsupply(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcutmantissa") %>: 
					</td> 
					<td> 
						<input name="bcutmantissa" type="text" id="bcutmantissa" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcutmantissa(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvpersoncode") %>: 
					</td> 
					<td> 
						<input name="cinvpersoncode" type="text" id="cinvpersoncode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvpersoncode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvtfid") %>: 
					</td> 
					<td> 
						<input name="iinvtfid" type="text" id="iinvtfid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvtfid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cengineerfigno") %>: 
					</td> 
					<td> 
						<input name="cengineerfigno" type="text" id="cengineerfigno" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCengineerfigno(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bintotalcost") %>: 
					</td> 
					<td> 
						<input name="bintotalcost" type="text" id="bintotalcost" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBintotalcost(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("isupplytype") %>: 
					</td> 
					<td> 
						<input name="isupplytype" type="text" id="isupplytype" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIsupplytype(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bconfigfree1") %>: 
					</td> 
					<td> 
						<input name="bconfigfree1" type="text" id="bconfigfree1" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree1(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bconfigfree2") %>: 
					</td> 
					<td> 
						<input name="bconfigfree2" type="text" id="bconfigfree2" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree2(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bconfigfree3") %>: 
					</td> 
					<td> 
						<input name="bconfigfree3" type="text" id="bconfigfree3" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree3(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bconfigfree4") %>: 
					</td> 
					<td> 
						<input name="bconfigfree4" type="text" id="bconfigfree4" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree4(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bconfigfree5") %>: 
					</td> 
					<td> 
						<input name="bconfigfree5" type="text" id="bconfigfree5" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree5(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bconfigfree6") %>: 
					</td> 
					<td> 
						<input name="bconfigfree6" type="text" id="bconfigfree6" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree6(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bconfigfree7") %>: 
					</td> 
					<td> 
						<input name="bconfigfree7" type="text" id="bconfigfree7" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree7(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bconfigfree8") %>: 
					</td> 
					<td> 
						<input name="bconfigfree8" type="text" id="bconfigfree8" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree8(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bconfigfree9") %>: 
					</td> 
					<td> 
						<input name="bconfigfree9" type="text" id="bconfigfree9" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree9(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bconfigfree10") %>: 
					</td> 
					<td> 
						<input name="bconfigfree10" type="text" id="bconfigfree10" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBconfigfree10(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("idtlevel") %>: 
					</td> 
					<td> 
						<input name="idtlevel" type="text" id="idtlevel" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIdtlevel(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdtaql") %>: 
					</td> 
					<td> 
						<input name="cdtaql" type="text" id="cdtaql" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdtaql(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bperioddt") %>: 
					</td> 
					<td> 
						<input name="bperioddt" type="text" id="bperioddt" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBperioddt(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdtperiod") %>: 
					</td> 
					<td> 
						<input name="cdtperiod" type="text" id="cdtperiod" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdtperiod(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ibigmonth") %>: 
					</td> 
					<td> 
						<input name="ibigmonth" type="text" id="ibigmonth" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIbigmonth(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ibigday") %>: 
					</td> 
					<td> 
						<input name="ibigday" type="text" id="ibigday" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIbigday(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ismallmonth") %>: 
					</td> 
					<td> 
						<input name="ismallmonth" type="text" id="ismallmonth" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIsmallmonth(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ismallday") %>: 
					</td> 
					<td> 
						<input name="ismallday" type="text" id="ismallday" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIsmallday(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("boutinvdt") %>: 
					</td> 
					<td> 
						<input name="boutinvdt" type="text" id="boutinvdt" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBoutinvdt(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bbackinvdt") %>: 
					</td> 
					<td> 
						<input name="bbackinvdt" type="text" id="bbackinvdt" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBbackinvdt(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ienddtstyle") %>: 
					</td> 
					<td> 
						<input name="ienddtstyle" type="text" id="ienddtstyle" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIenddtstyle(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bdtwarninv") %>: 
					</td> 
					<td> 
						<input name="bdtwarninv" type="text" id="bdtwarninv" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBdtwarninv(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fbacktaxrate") %>: 
					</td> 
					<td> 
						<input name="fbacktaxrate" type="text" id="fbacktaxrate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFbacktaxrate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cciqcode") %>: 
					</td> 
					<td> 
						<input name="cciqcode" type="text" id="cciqcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCciqcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cwgroupcode") %>: 
					</td> 
					<td> 
						<input name="cwgroupcode" type="text" id="cwgroupcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCwgroupcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cwunit") %>: 
					</td> 
					<td> 
						<input name="cwunit" type="text" id="cwunit" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCwunit(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fgrossw") %>: 
					</td> 
					<td> 
						<input name="fgrossw" type="text" id="fgrossw" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFgrossw(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cvgroupcode") %>: 
					</td> 
					<td> 
						<input name="cvgroupcode" type="text" id="cvgroupcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCvgroupcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cvunit") %>: 
					</td> 
					<td> 
						<input name="cvunit" type="text" id="cvunit" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCvunit(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("flength") %>: 
					</td> 
					<td> 
						<input name="flength" type="text" id="flength" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFlength(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fwidth") %>: 
					</td> 
					<td> 
						<input name="fwidth" type="text" id="fwidth" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFwidth(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fheight") %>: 
					</td> 
					<td> 
						<input name="fheight" type="text" id="fheight" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFheight(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("idtucounter") %>: 
					</td> 
					<td> 
						<input name="idtucounter" type="text" id="idtucounter" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIdtucounter(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("idtdcounter") %>: 
					</td> 
					<td> 
						<input name="idtdcounter" type="text" id="idtdcounter" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIdtdcounter(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ibatchcounter") %>: 
					</td> 
					<td> 
						<input name="ibatchcounter" type="text" id="ibatchcounter" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIbatchcounter(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cshopunit") %>: 
					</td> 
					<td> 
						<input name="cshopunit" type="text" id="cshopunit" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCshopunit(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cpurpersoncode") %>: 
					</td> 
					<td> 
						<input name="cpurpersoncode" type="text" id="cpurpersoncode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCpurpersoncode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bimportmedicine") %>: 
					</td> 
					<td> 
						<input name="bimportmedicine" type="text" id="bimportmedicine" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBimportmedicine(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bfirstbusimedicine") %>: 
					</td> 
					<td> 
						<input name="bfirstbusimedicine" type="text" id="bfirstbusimedicine" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBfirstbusimedicine(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bforeexpland") %>: 
					</td> 
					<td> 
						<input name="bforeexpland" type="text" id="bforeexpland" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBforeexpland(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvplancode") %>: 
					</td> 
					<td> 
						<input name="cinvplancode" type="text" id="cinvplancode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvplancode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fconvertrate") %>: 
					</td> 
					<td> 
						<input name="fconvertrate" type="text" id="fconvertrate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFconvertrate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dreplacedate") %>: 
					</td> 
					<td> 
						<input name="dreplacedate" type="text" id="dreplacedate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDreplacedate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("binvmodel") %>: 
					</td> 
					<td> 
						<input name="binvmodel" type="text" id="binvmodel" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBinvmodel(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bkccutmantissa") %>: 
					</td> 
					<td> 
						<input name="bkccutmantissa" type="text" id="bkccutmantissa" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBkccutmantissa(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("breceiptbydt") %>: 
					</td> 
					<td> 
						<input name="breceiptbydt" type="text" id="breceiptbydt" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBreceiptbydt(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iimptaxrate") %>: 
					</td> 
					<td> 
						<input name="iimptaxrate" type="text" id="iimptaxrate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIimptaxrate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iexptaxrate") %>: 
					</td> 
					<td> 
						<input name="iexptaxrate" type="text" id="iexptaxrate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIexptaxrate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bexpsale") %>: 
					</td> 
					<td> 
						<input name="bexpsale" type="text" id="bexpsale" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBexpsale(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("idrawbatch") %>: 
					</td> 
					<td> 
						<input name="idrawbatch" type="text" id="idrawbatch" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIdrawbatch(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcheckbsatp") %>: 
					</td> 
					<td> 
						<input name="bcheckbsatp" type="text" id="bcheckbsatp" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcheckbsatp(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvprojectcode") %>: 
					</td> 
					<td> 
						<input name="cinvprojectcode" type="text" id="cinvprojectcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvprojectcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("itestrule") %>: 
					</td> 
					<td> 
						<input name="itestrule" type="text" id="itestrule" value="<%=StringUtil.getNotEmptyStr(domainInstance.getItestrule(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("crulecode") %>: 
					</td> 
					<td> 
						<input name="crulecode" type="text" id="crulecode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCrulecode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcheckfree1") %>: 
					</td> 
					<td> 
						<input name="bcheckfree1" type="text" id="bcheckfree1" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree1(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcheckfree2") %>: 
					</td> 
					<td> 
						<input name="bcheckfree2" type="text" id="bcheckfree2" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree2(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcheckfree3") %>: 
					</td> 
					<td> 
						<input name="bcheckfree3" type="text" id="bcheckfree3" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree3(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcheckfree4") %>: 
					</td> 
					<td> 
						<input name="bcheckfree4" type="text" id="bcheckfree4" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree4(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcheckfree5") %>: 
					</td> 
					<td> 
						<input name="bcheckfree5" type="text" id="bcheckfree5" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree5(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcheckfree6") %>: 
					</td> 
					<td> 
						<input name="bcheckfree6" type="text" id="bcheckfree6" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree6(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcheckfree7") %>: 
					</td> 
					<td> 
						<input name="bcheckfree7" type="text" id="bcheckfree7" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree7(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcheckfree8") %>: 
					</td> 
					<td> 
						<input name="bcheckfree8" type="text" id="bcheckfree8" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree8(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcheckfree9") %>: 
					</td> 
					<td> 
						<input name="bcheckfree9" type="text" id="bcheckfree9" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree9(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bcheckfree10") %>: 
					</td> 
					<td> 
						<input name="bcheckfree10" type="text" id="bcheckfree10" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBcheckfree10(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bbommain") %>: 
					</td> 
					<td> 
						<input name="bbommain" type="text" id="bbommain" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBbommain(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bbomsub") %>: 
					</td> 
					<td> 
						<input name="bbomsub" type="text" id="bbomsub" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBbomsub(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bproductbill") %>: 
					</td> 
					<td> 
						<input name="bproductbill" type="text" id="bproductbill" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBproductbill(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("icheckatp") %>: 
					</td> 
					<td> 
						<input name="icheckatp" type="text" id="icheckatp" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIcheckatp(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvatpid") %>: 
					</td> 
					<td> 
						<input name="iinvatpid" type="text" id="iinvatpid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvatpid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iplantfday") %>: 
					</td> 
					<td> 
						<input name="iplantfday" type="text" id="iplantfday" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIplantfday(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ioverlapday") %>: 
					</td> 
					<td> 
						<input name="ioverlapday" type="text" id="ioverlapday" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIoverlapday(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bpiece") %>: 
					</td> 
					<td> 
						<input name="bpiece" type="text" id="bpiece" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBpiece(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bsrvitem") %>: 
					</td> 
					<td> 
						<input name="bsrvitem" type="text" id="bsrvitem" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBsrvitem(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bsrvfittings") %>: 
					</td> 
					<td> 
						<input name="bsrvfittings" type="text" id="bsrvfittings" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBsrvfittings(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fmaxsupply") %>: 
					</td> 
					<td> 
						<input name="fmaxsupply" type="text" id="fmaxsupply" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFmaxsupply(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fminsplit") %>: 
					</td> 
					<td> 
						<input name="fminsplit" type="text" id="fminsplit" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFminsplit(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bspecialorder") %>: 
					</td> 
					<td> 
						<input name="bspecialorder" type="text" id="bspecialorder" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBspecialorder(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("btracksalebill") %>: 
					</td> 
					<td> 
						<input name="btracksalebill" type="text" id="btracksalebill" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBtracksalebill(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
			</table> 
			 
			<!-- 工具栏 --> 
			<jsp:include page="../ToolBar/addOrModify_toolbar.jsp" /> 
		</form> 
	</body> 
</html> 
