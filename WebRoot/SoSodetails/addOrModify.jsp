<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.hz.dict.service.IDictionaryService"%> 
<%@page import="com.u8.obj.SoSodetailsObj"%> 
<!-- 基本信息 -->  
<% 
	// 上下文路径 
	String contextPath = request.getContextPath(); 
	 
	// 对象实例 
	SoSodetailsObj domainInstance = new SoSodetailsObj(); 
	// 该功能基本路径 
	String basePath = domainInstance.getBasePath(); 
 
	// 如果是修改，则获取对象信息 
	Object domainInstanceObj = request.getAttribute("domainInstance"); 
	if (domainInstanceObj != null) 
	{ 
		domainInstance = (SoSodetailsObj) domainInstanceObj; 
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
		if(!checkNull("autoid","<%=domainInstance.getPropertyCnName("autoid")%>")) return false; 
		if(!checkNull("csocode","<%=domainInstance.getPropertyCnName("csocode")%>")) return false; 
		if(!checkNull("cinvcode","<%=domainInstance.getPropertyCnName("cinvcode")%>")) return false; 
		if(!checkNull("dpredate","<%=domainInstance.getPropertyCnName("dpredate")%>")) return false; 
		if(!checkNull("iquantity","<%=domainInstance.getPropertyCnName("iquantity")%>")) return false; 
		if(!checkNull("inum","<%=domainInstance.getPropertyCnName("inum")%>")) return false; 
		if(!checkNull("iquotedprice","<%=domainInstance.getPropertyCnName("iquotedprice")%>")) return false; 
		if(!checkNull("iunitprice","<%=domainInstance.getPropertyCnName("iunitprice")%>")) return false; 
		if(!checkNull("itaxunitprice","<%=domainInstance.getPropertyCnName("itaxunitprice")%>")) return false; 
		if(!checkNull("imoney","<%=domainInstance.getPropertyCnName("imoney")%>")) return false; 
		if(!checkNull("itax","<%=domainInstance.getPropertyCnName("itax")%>")) return false; 
		if(!checkNull("isum","<%=domainInstance.getPropertyCnName("isum")%>")) return false; 
		if(!checkNull("idiscount","<%=domainInstance.getPropertyCnName("idiscount")%>")) return false; 
		if(!checkNull("inatunitprice","<%=domainInstance.getPropertyCnName("inatunitprice")%>")) return false; 
		if(!checkNull("inatmoney","<%=domainInstance.getPropertyCnName("inatmoney")%>")) return false; 
		if(!checkNull("inattax","<%=domainInstance.getPropertyCnName("inattax")%>")) return false; 
		if(!checkNull("inatsum","<%=domainInstance.getPropertyCnName("inatsum")%>")) return false; 
		if(!checkNull("inatdiscount","<%=domainInstance.getPropertyCnName("inatdiscount")%>")) return false; 
		if(!checkNull("ifhnum","<%=domainInstance.getPropertyCnName("ifhnum")%>")) return false; 
		if(!checkNull("ifhquantity","<%=domainInstance.getPropertyCnName("ifhquantity")%>")) return false; 
		if(!checkNull("ifhmoney","<%=domainInstance.getPropertyCnName("ifhmoney")%>")) return false; 
		if(!checkNull("ikpquantity","<%=domainInstance.getPropertyCnName("ikpquantity")%>")) return false; 
		if(!checkNull("ikpnum","<%=domainInstance.getPropertyCnName("ikpnum")%>")) return false; 
		if(!checkNull("ikpmoney","<%=domainInstance.getPropertyCnName("ikpmoney")%>")) return false; 
		if(!checkNull("cmemo","<%=domainInstance.getPropertyCnName("cmemo")%>")) return false; 
		if(!checkNull("cfree1","<%=domainInstance.getPropertyCnName("cfree1")%>")) return false; 
		if(!checkNull("cfree2","<%=domainInstance.getPropertyCnName("cfree2")%>")) return false; 
		if(!checkNull("bfh","<%=domainInstance.getPropertyCnName("bfh")%>")) return false; 
		if(!checkNull("isosid","<%=domainInstance.getPropertyCnName("isosid")%>")) return false; 
		if(!checkNull("kl","<%=domainInstance.getPropertyCnName("kl")%>")) return false; 
		if(!checkNull("kl2","<%=domainInstance.getPropertyCnName("kl2")%>")) return false; 
		if(!checkNull("cinvname","<%=domainInstance.getPropertyCnName("cinvname")%>")) return false; 
		if(!checkNull("itaxrate","<%=domainInstance.getPropertyCnName("itaxrate")%>")) return false; 
		if(!checkNull("cdefine22","<%=domainInstance.getPropertyCnName("cdefine22")%>")) return false; 
		if(!checkNull("cdefine23","<%=domainInstance.getPropertyCnName("cdefine23")%>")) return false; 
		if(!checkNull("cdefine24","<%=domainInstance.getPropertyCnName("cdefine24")%>")) return false; 
		if(!checkNull("cdefine25","<%=domainInstance.getPropertyCnName("cdefine25")%>")) return false; 
		if(!checkNull("cdefine26","<%=domainInstance.getPropertyCnName("cdefine26")%>")) return false; 
		if(!checkNull("cdefine27","<%=domainInstance.getPropertyCnName("cdefine27")%>")) return false; 
		if(!checkNull("citemcode","<%=domainInstance.getPropertyCnName("citemcode")%>")) return false; 
		if(!checkNull("citem_class","<%=domainInstance.getPropertyCnName("citem_class")%>")) return false; 
		if(!checkNull("citemname","<%=domainInstance.getPropertyCnName("citemname")%>")) return false; 
		if(!checkNull("citem_cname","<%=domainInstance.getPropertyCnName("citem_cname")%>")) return false; 
		if(!checkNull("cfree3","<%=domainInstance.getPropertyCnName("cfree3")%>")) return false; 
		if(!checkNull("cfree4","<%=domainInstance.getPropertyCnName("cfree4")%>")) return false; 
		if(!checkNull("cfree5","<%=domainInstance.getPropertyCnName("cfree5")%>")) return false; 
		if(!checkNull("cfree6","<%=domainInstance.getPropertyCnName("cfree6")%>")) return false; 
		if(!checkNull("cfree7","<%=domainInstance.getPropertyCnName("cfree7")%>")) return false; 
		if(!checkNull("cfree8","<%=domainInstance.getPropertyCnName("cfree8")%>")) return false; 
		if(!checkNull("cfree9","<%=domainInstance.getPropertyCnName("cfree9")%>")) return false; 
		if(!checkNull("cfree10","<%=domainInstance.getPropertyCnName("cfree10")%>")) return false; 
		if(!checkNull("iinvexchrate","<%=domainInstance.getPropertyCnName("iinvexchrate")%>")) return false; 
		if(!checkNull("cunitid","<%=domainInstance.getPropertyCnName("cunitid")%>")) return false; 
		if(!checkNull("id","<%=domainInstance.getPropertyCnName("id")%>")) return false; 
		if(!checkNull("cdefine28","<%=domainInstance.getPropertyCnName("cdefine28")%>")) return false; 
		if(!checkNull("cdefine29","<%=domainInstance.getPropertyCnName("cdefine29")%>")) return false; 
		if(!checkNull("cdefine30","<%=domainInstance.getPropertyCnName("cdefine30")%>")) return false; 
		if(!checkNull("cdefine31","<%=domainInstance.getPropertyCnName("cdefine31")%>")) return false; 
		if(!checkNull("cdefine32","<%=domainInstance.getPropertyCnName("cdefine32")%>")) return false; 
		if(!checkNull("cdefine33","<%=domainInstance.getPropertyCnName("cdefine33")%>")) return false; 
		if(!checkNull("cdefine34","<%=domainInstance.getPropertyCnName("cdefine34")%>")) return false; 
		if(!checkNull("cdefine35","<%=domainInstance.getPropertyCnName("cdefine35")%>")) return false; 
		if(!checkNull("cdefine36","<%=domainInstance.getPropertyCnName("cdefine36")%>")) return false; 
		if(!checkNull("cdefine37","<%=domainInstance.getPropertyCnName("cdefine37")%>")) return false; 
		if(!checkNull("fpurquan","<%=domainInstance.getPropertyCnName("fpurquan")%>")) return false; 
		if(!checkNull("fsalecost","<%=domainInstance.getPropertyCnName("fsalecost")%>")) return false; 
		if(!checkNull("fsaleprice","<%=domainInstance.getPropertyCnName("fsaleprice")%>")) return false; 
		if(!checkNull("cquocode","<%=domainInstance.getPropertyCnName("cquocode")%>")) return false; 
		if(!checkNull("iquoid","<%=domainInstance.getPropertyCnName("iquoid")%>")) return false; 
		if(!checkNull("cscloser","<%=domainInstance.getPropertyCnName("cscloser")%>")) return false; 
		if(!checkNull("dpremodate","<%=domainInstance.getPropertyCnName("dpremodate")%>")) return false; 
		if(!checkNull("irowno","<%=domainInstance.getPropertyCnName("irowno")%>")) return false; 
		if(!checkNull("icusbomid","<%=domainInstance.getPropertyCnName("icusbomid")%>")) return false; 
		if(!checkNull("imoquantity","<%=domainInstance.getPropertyCnName("imoquantity")%>")) return false; 
		if(!checkNull("ccontractid","<%=domainInstance.getPropertyCnName("ccontractid")%>")) return false; 
		if(!checkNull("ccontracttagcode","<%=domainInstance.getPropertyCnName("ccontracttagcode")%>")) return false; 
		if(!checkNull("ccontractrowguid","<%=domainInstance.getPropertyCnName("ccontractrowguid")%>")) return false; 
		if(!checkNull("ippartseqid","<%=domainInstance.getPropertyCnName("ippartseqid")%>")) return false; 
		if(!checkNull("ippartid","<%=domainInstance.getPropertyCnName("ippartid")%>")) return false; 
		if(!checkNull("ippartqty","<%=domainInstance.getPropertyCnName("ippartqty")%>")) return false; 
		if(!checkNull("ccusinvcode","<%=domainInstance.getPropertyCnName("ccusinvcode")%>")) return false; 
		if(!checkNull("ccusinvname","<%=domainInstance.getPropertyCnName("ccusinvname")%>")) return false; 
		if(!checkNull("iprekeepquantity","<%=domainInstance.getPropertyCnName("iprekeepquantity")%>")) return false; 
		if(!checkNull("iprekeepnum","<%=domainInstance.getPropertyCnName("iprekeepnum")%>")) return false; 
		if(!checkNull("iprekeeptotquantity","<%=domainInstance.getPropertyCnName("iprekeeptotquantity")%>")) return false; 
		if(!checkNull("iprekeeptotnum","<%=domainInstance.getPropertyCnName("iprekeeptotnum")%>")) return false; 
		if(!checkNull("dreleasedate","<%=domainInstance.getPropertyCnName("dreleasedate")%>")) return false; 
		if(!checkNull("fcusminprice","<%=domainInstance.getPropertyCnName("fcusminprice")%>")) return false; 
		if(!checkNull("fimquantity","<%=domainInstance.getPropertyCnName("fimquantity")%>")) return false; 
		if(!checkNull("fomquantity","<%=domainInstance.getPropertyCnName("fomquantity")%>")) return false; 
		if(!checkNull("ballpurchase","<%=domainInstance.getPropertyCnName("ballpurchase")%>")) return false; 
		if(!checkNull("finquantity","<%=domainInstance.getPropertyCnName("finquantity")%>")) return false; 
		if(!checkNull("icostquantity","<%=domainInstance.getPropertyCnName("icostquantity")%>")) return false; 
		if(!checkNull("icostsum","<%=domainInstance.getPropertyCnName("icostsum")%>")) return false; 
		if(!checkNull("foutquantity","<%=domainInstance.getPropertyCnName("foutquantity")%>")) return false; 
		if(!checkNull("foutnum","<%=domainInstance.getPropertyCnName("foutnum")%>")) return false; 
		if(!checkNull("iexchsum","<%=domainInstance.getPropertyCnName("iexchsum")%>")) return false; 
		if(!checkNull("imoneysum","<%=domainInstance.getPropertyCnName("imoneysum")%>")) return false; 
		if(!checkNull("dufts","<%=domainInstance.getPropertyCnName("dufts")%>")) return false; 
		if(!checkNull("iaoids","<%=domainInstance.getPropertyCnName("iaoids")%>")) return false; 
		if(!checkNull("cpreordercode","<%=domainInstance.getPropertyCnName("cpreordercode")%>")) return false; 
		if(!checkNull("fretquantity","<%=domainInstance.getPropertyCnName("fretquantity")%>")) return false; 
		if(!checkNull("fretnum","<%=domainInstance.getPropertyCnName("fretnum")%>")) return false; 
		if(!checkNull("dbclosedate","<%=domainInstance.getPropertyCnName("dbclosedate")%>")) return false; 
		if(!checkNull("dbclosesystime","<%=domainInstance.getPropertyCnName("dbclosesystime")%>")) return false; 
		if(!checkNull("borderbom","<%=domainInstance.getPropertyCnName("borderbom")%>")) return false; 
		if(!checkNull("borderbomover","<%=domainInstance.getPropertyCnName("borderbomover")%>")) return false; 
		if(!checkNull("idemandtype","<%=domainInstance.getPropertyCnName("idemandtype")%>")) return false; 
		if(!checkNull("cdemandcode","<%=domainInstance.getPropertyCnName("cdemandcode")%>")) return false; 
		if(!checkNull("cdemandmemo","<%=domainInstance.getPropertyCnName("cdemandmemo")%>")) return false; 
		if(!checkNull("fpursum","<%=domainInstance.getPropertyCnName("fpursum")%>")) return false; 
		if(!checkNull("fpurbillqty","<%=domainInstance.getPropertyCnName("fpurbillqty")%>")) return false; 
		if(!checkNull("fpurbillsum","<%=domainInstance.getPropertyCnName("fpurbillsum")%>")) return false; 
		if(!checkNull("iimid","<%=domainInstance.getPropertyCnName("iimid")%>")) return false; 
		if(!checkNull("ccorvouchtype","<%=domainInstance.getPropertyCnName("ccorvouchtype")%>")) return false; 
		if(!checkNull("icorrowno","<%=domainInstance.getPropertyCnName("icorrowno")%>")) return false; 
		if(!checkNull("busecusbom","<%=domainInstance.getPropertyCnName("busecusbom")%>")) return false; 
		if(!checkNull("body_outid","<%=domainInstance.getPropertyCnName("body_outid")%>")) return false; 
					 
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
						<%=domainInstance.getPropertyCnName("csocode") %>: 
					</td> 
					<td> 
						<input name="csocode" type="text" id="csocode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCsocode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvcode") %>: 
					</td> 
					<td> 
						<input name="cinvcode" type="text" id="cinvcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCinvcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dpredate") %>: 
					</td> 
					<td> 
						<input name="dpredate" type="text" id="dpredate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDpredate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iquantity") %>: 
					</td> 
					<td> 
						<input name="iquantity" type="text" id="iquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("inum") %>: 
					</td> 
					<td> 
						<input name="inum" type="text" id="inum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getInum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iquotedprice") %>: 
					</td> 
					<td> 
						<input name="iquotedprice" type="text" id="iquotedprice" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIquotedprice(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iunitprice") %>: 
					</td> 
					<td> 
						<input name="iunitprice" type="text" id="iunitprice" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIunitprice(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("itaxunitprice") %>: 
					</td> 
					<td> 
						<input name="itaxunitprice" type="text" id="itaxunitprice" value="<%=StringUtil.getNotEmptyStr(domainInstance.getItaxunitprice(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("itax") %>: 
					</td> 
					<td> 
						<input name="itax" type="text" id="itax" value="<%=StringUtil.getNotEmptyStr(domainInstance.getItax(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("isum") %>: 
					</td> 
					<td> 
						<input name="isum" type="text" id="isum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIsum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("idiscount") %>: 
					</td> 
					<td> 
						<input name="idiscount" type="text" id="idiscount" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIdiscount(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("inatunitprice") %>: 
					</td> 
					<td> 
						<input name="inatunitprice" type="text" id="inatunitprice" value="<%=StringUtil.getNotEmptyStr(domainInstance.getInatunitprice(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("inatmoney") %>: 
					</td> 
					<td> 
						<input name="inatmoney" type="text" id="inatmoney" value="<%=StringUtil.getNotEmptyStr(domainInstance.getInatmoney(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("inattax") %>: 
					</td> 
					<td> 
						<input name="inattax" type="text" id="inattax" value="<%=StringUtil.getNotEmptyStr(domainInstance.getInattax(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("inatsum") %>: 
					</td> 
					<td> 
						<input name="inatsum" type="text" id="inatsum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getInatsum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("inatdiscount") %>: 
					</td> 
					<td> 
						<input name="inatdiscount" type="text" id="inatdiscount" value="<%=StringUtil.getNotEmptyStr(domainInstance.getInatdiscount(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ifhnum") %>: 
					</td> 
					<td> 
						<input name="ifhnum" type="text" id="ifhnum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIfhnum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ifhquantity") %>: 
					</td> 
					<td> 
						<input name="ifhquantity" type="text" id="ifhquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIfhquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ifhmoney") %>: 
					</td> 
					<td> 
						<input name="ifhmoney" type="text" id="ifhmoney" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIfhmoney(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ikpquantity") %>: 
					</td> 
					<td> 
						<input name="ikpquantity" type="text" id="ikpquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIkpquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ikpnum") %>: 
					</td> 
					<td> 
						<input name="ikpnum" type="text" id="ikpnum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIkpnum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ikpmoney") %>: 
					</td> 
					<td> 
						<input name="ikpmoney" type="text" id="ikpmoney" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIkpmoney(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("cfree1") %>: 
					</td> 
					<td> 
						<input name="cfree1" type="text" id="cfree1" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCfree1(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cfree2") %>: 
					</td> 
					<td> 
						<input name="cfree2" type="text" id="cfree2" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCfree2(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("bfh") %>: 
					</td> 
					<td> 
						<input name="bfh" type="text" id="bfh" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBfh(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("isosid") %>: 
					</td> 
					<td> 
						<input name="isosid" type="text" id="isosid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIsosid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("kl") %>: 
					</td> 
					<td> 
						<input name="kl" type="text" id="kl" value="<%=StringUtil.getNotEmptyStr(domainInstance.getKl(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("kl2") %>: 
					</td> 
					<td> 
						<input name="kl2" type="text" id="kl2" value="<%=StringUtil.getNotEmptyStr(domainInstance.getKl2(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("itaxrate") %>: 
					</td> 
					<td> 
						<input name="itaxrate" type="text" id="itaxrate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getItaxrate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine22") %>: 
					</td> 
					<td> 
						<input name="cdefine22" type="text" id="cdefine22" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine22(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine23") %>: 
					</td> 
					<td> 
						<input name="cdefine23" type="text" id="cdefine23" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine23(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine24") %>: 
					</td> 
					<td> 
						<input name="cdefine24" type="text" id="cdefine24" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine24(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine25") %>: 
					</td> 
					<td> 
						<input name="cdefine25" type="text" id="cdefine25" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine25(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine26") %>: 
					</td> 
					<td> 
						<input name="cdefine26" type="text" id="cdefine26" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine26(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine27") %>: 
					</td> 
					<td> 
						<input name="cdefine27" type="text" id="cdefine27" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine27(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("citemcode") %>: 
					</td> 
					<td> 
						<input name="citemcode" type="text" id="citemcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCitemcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("citem_class") %>: 
					</td> 
					<td> 
						<input name="citem_class" type="text" id="citem_class" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCitem_class(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("citemname") %>: 
					</td> 
					<td> 
						<input name="citemname" type="text" id="citemname" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCitemname(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("citem_cname") %>: 
					</td> 
					<td> 
						<input name="citem_cname" type="text" id="citem_cname" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCitem_cname(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cfree3") %>: 
					</td> 
					<td> 
						<input name="cfree3" type="text" id="cfree3" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCfree3(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cfree4") %>: 
					</td> 
					<td> 
						<input name="cfree4" type="text" id="cfree4" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCfree4(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cfree5") %>: 
					</td> 
					<td> 
						<input name="cfree5" type="text" id="cfree5" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCfree5(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cfree6") %>: 
					</td> 
					<td> 
						<input name="cfree6" type="text" id="cfree6" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCfree6(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cfree7") %>: 
					</td> 
					<td> 
						<input name="cfree7" type="text" id="cfree7" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCfree7(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cfree8") %>: 
					</td> 
					<td> 
						<input name="cfree8" type="text" id="cfree8" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCfree8(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cfree9") %>: 
					</td> 
					<td> 
						<input name="cfree9" type="text" id="cfree9" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCfree9(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cfree10") %>: 
					</td> 
					<td> 
						<input name="cfree10" type="text" id="cfree10" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCfree10(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iinvexchrate") %>: 
					</td> 
					<td> 
						<input name="iinvexchrate" type="text" id="iinvexchrate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIinvexchrate(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cunitid") %>: 
					</td> 
					<td> 
						<input name="cunitid" type="text" id="cunitid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCunitid(),"")%>" size="20"  > 
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
						<%=domainInstance.getPropertyCnName("cdefine28") %>: 
					</td> 
					<td> 
						<input name="cdefine28" type="text" id="cdefine28" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine28(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine29") %>: 
					</td> 
					<td> 
						<input name="cdefine29" type="text" id="cdefine29" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine29(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine30") %>: 
					</td> 
					<td> 
						<input name="cdefine30" type="text" id="cdefine30" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine30(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine31") %>: 
					</td> 
					<td> 
						<input name="cdefine31" type="text" id="cdefine31" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine31(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine32") %>: 
					</td> 
					<td> 
						<input name="cdefine32" type="text" id="cdefine32" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine32(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine33") %>: 
					</td> 
					<td> 
						<input name="cdefine33" type="text" id="cdefine33" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine33(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine34") %>: 
					</td> 
					<td> 
						<input name="cdefine34" type="text" id="cdefine34" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine34(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine35") %>: 
					</td> 
					<td> 
						<input name="cdefine35" type="text" id="cdefine35" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine35(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine36") %>: 
					</td> 
					<td> 
						<input name="cdefine36" type="text" id="cdefine36" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine36(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdefine37") %>: 
					</td> 
					<td> 
						<input name="cdefine37" type="text" id="cdefine37" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdefine37(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fpurquan") %>: 
					</td> 
					<td> 
						<input name="fpurquan" type="text" id="fpurquan" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFpurquan(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fsalecost") %>: 
					</td> 
					<td> 
						<input name="fsalecost" type="text" id="fsalecost" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFsalecost(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fsaleprice") %>: 
					</td> 
					<td> 
						<input name="fsaleprice" type="text" id="fsaleprice" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFsaleprice(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cquocode") %>: 
					</td> 
					<td> 
						<input name="cquocode" type="text" id="cquocode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCquocode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iquoid") %>: 
					</td> 
					<td> 
						<input name="iquoid" type="text" id="iquoid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIquoid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cscloser") %>: 
					</td> 
					<td> 
						<input name="cscloser" type="text" id="cscloser" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCscloser(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dpremodate") %>: 
					</td> 
					<td> 
						<input name="dpremodate" type="text" id="dpremodate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDpremodate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("irowno") %>: 
					</td> 
					<td> 
						<input name="irowno" type="text" id="irowno" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIrowno(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("icusbomid") %>: 
					</td> 
					<td> 
						<input name="icusbomid" type="text" id="icusbomid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIcusbomid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("imoquantity") %>: 
					</td> 
					<td> 
						<input name="imoquantity" type="text" id="imoquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getImoquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccontractid") %>: 
					</td> 
					<td> 
						<input name="ccontractid" type="text" id="ccontractid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcontractid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccontracttagcode") %>: 
					</td> 
					<td> 
						<input name="ccontracttagcode" type="text" id="ccontracttagcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcontracttagcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccontractrowguid") %>: 
					</td> 
					<td> 
						<input name="ccontractrowguid" type="text" id="ccontractrowguid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcontractrowguid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ippartseqid") %>: 
					</td> 
					<td> 
						<input name="ippartseqid" type="text" id="ippartseqid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIppartseqid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ippartid") %>: 
					</td> 
					<td> 
						<input name="ippartid" type="text" id="ippartid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIppartid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ippartqty") %>: 
					</td> 
					<td> 
						<input name="ippartqty" type="text" id="ippartqty" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIppartqty(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusinvcode") %>: 
					</td> 
					<td> 
						<input name="ccusinvcode" type="text" id="ccusinvcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusinvcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccusinvname") %>: 
					</td> 
					<td> 
						<input name="ccusinvname" type="text" id="ccusinvname" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcusinvname(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iprekeepquantity") %>: 
					</td> 
					<td> 
						<input name="iprekeepquantity" type="text" id="iprekeepquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIprekeepquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iprekeepnum") %>: 
					</td> 
					<td> 
						<input name="iprekeepnum" type="text" id="iprekeepnum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIprekeepnum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iprekeeptotquantity") %>: 
					</td> 
					<td> 
						<input name="iprekeeptotquantity" type="text" id="iprekeeptotquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIprekeeptotquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iprekeeptotnum") %>: 
					</td> 
					<td> 
						<input name="iprekeeptotnum" type="text" id="iprekeeptotnum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIprekeeptotnum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dreleasedate") %>: 
					</td> 
					<td> 
						<input name="dreleasedate" type="text" id="dreleasedate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDreleasedate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fcusminprice") %>: 
					</td> 
					<td> 
						<input name="fcusminprice" type="text" id="fcusminprice" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFcusminprice(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fimquantity") %>: 
					</td> 
					<td> 
						<input name="fimquantity" type="text" id="fimquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFimquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fomquantity") %>: 
					</td> 
					<td> 
						<input name="fomquantity" type="text" id="fomquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFomquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ballpurchase") %>: 
					</td> 
					<td> 
						<input name="ballpurchase" type="text" id="ballpurchase" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBallpurchase(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("finquantity") %>: 
					</td> 
					<td> 
						<input name="finquantity" type="text" id="finquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFinquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("icostquantity") %>: 
					</td> 
					<td> 
						<input name="icostquantity" type="text" id="icostquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIcostquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("icostsum") %>: 
					</td> 
					<td> 
						<input name="icostsum" type="text" id="icostsum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIcostsum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("foutquantity") %>: 
					</td> 
					<td> 
						<input name="foutquantity" type="text" id="foutquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFoutquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("foutnum") %>: 
					</td> 
					<td> 
						<input name="foutnum" type="text" id="foutnum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFoutnum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iexchsum") %>: 
					</td> 
					<td> 
						<input name="iexchsum" type="text" id="iexchsum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIexchsum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("imoneysum") %>: 
					</td> 
					<td> 
						<input name="imoneysum" type="text" id="imoneysum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getImoneysum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dufts") %>: 
					</td> 
					<td> 
						<input name="dufts" type="text" id="dufts" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDufts(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iaoids") %>: 
					</td> 
					<td> 
						<input name="iaoids" type="text" id="iaoids" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIaoids(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cpreordercode") %>: 
					</td> 
					<td> 
						<input name="cpreordercode" type="text" id="cpreordercode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCpreordercode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fretquantity") %>: 
					</td> 
					<td> 
						<input name="fretquantity" type="text" id="fretquantity" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFretquantity(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fretnum") %>: 
					</td> 
					<td> 
						<input name="fretnum" type="text" id="fretnum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFretnum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dbclosedate") %>: 
					</td> 
					<td> 
						<input name="dbclosedate" type="text" id="dbclosedate" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDbclosedate(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dbclosesystime") %>: 
					</td> 
					<td> 
						<input name="dbclosesystime" type="text" id="dbclosesystime" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDbclosesystime(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("borderbom") %>: 
					</td> 
					<td> 
						<input name="borderbom" type="text" id="borderbom" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBorderbom(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("borderbomover") %>: 
					</td> 
					<td> 
						<input name="borderbomover" type="text" id="borderbomover" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBorderbomover(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("idemandtype") %>: 
					</td> 
					<td> 
						<input name="idemandtype" type="text" id="idemandtype" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIdemandtype(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdemandcode") %>: 
					</td> 
					<td> 
						<input name="cdemandcode" type="text" id="cdemandcode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdemandcode(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cdemandmemo") %>: 
					</td> 
					<td> 
						<input name="cdemandmemo" type="text" id="cdemandmemo" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCdemandmemo(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fpursum") %>: 
					</td> 
					<td> 
						<input name="fpursum" type="text" id="fpursum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFpursum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fpurbillqty") %>: 
					</td> 
					<td> 
						<input name="fpurbillqty" type="text" id="fpurbillqty" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFpurbillqty(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fpurbillsum") %>: 
					</td> 
					<td> 
						<input name="fpurbillsum" type="text" id="fpurbillsum" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFpurbillsum(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("iimid") %>: 
					</td> 
					<td> 
						<input name="iimid" type="text" id="iimid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIimid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("ccorvouchtype") %>: 
					</td> 
					<td> 
						<input name="ccorvouchtype" type="text" id="ccorvouchtype" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCcorvouchtype(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("icorrowno") %>: 
					</td> 
					<td> 
						<input name="icorrowno" type="text" id="icorrowno" value="<%=StringUtil.getNotEmptyStr(domainInstance.getIcorrowno(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("busecusbom") %>: 
					</td> 
					<td> 
						<input name="busecusbom" type="text" id="busecusbom" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBusecusbom(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("body_outid") %>: 
					</td> 
					<td> 
						<input name="body_outid" type="text" id="body_outid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBody_outid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
			</table> 
			 
			<!-- 工具栏 --> 
			<jsp:include page="../ToolBar/addOrModify_toolbar.jsp" /> 
		</form> 
	</body> 
</html> 
