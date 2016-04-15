<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.dictionary.DictionaryUtil"%> 
<%@page import="com.u8.obj.DispatchlistsObj"%> 
<!-- 基本信息 -->  
<% 
	// 上下文路径 
	String contextPath = request.getContextPath(); 
	 
	// 对象实例 
	DispatchlistsObj domainInstance = new DispatchlistsObj(); 
	// 该功能基本路径 
	String basePath = domainInstance.getBasePath(); 
 
	// 如果是修改，则获取对象信息 
	Object domainInstanceObj = request.getAttribute("domainInstance"); 
	if (domainInstanceObj != null) 
	{ 
		domainInstance = (DispatchlistsObj) domainInstanceObj; 
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
		if(!checkNull("dlid","<%=domainInstance.getPropertyCnName("dlid")%>")) return false; 
		if(!checkNull("icorid","<%=domainInstance.getPropertyCnName("icorid")%>")) return false; 
		if(!checkNull("cwhcode","<%=domainInstance.getPropertyCnName("cwhcode")%>")) return false; 
		if(!checkNull("cinvcode","<%=domainInstance.getPropertyCnName("cinvcode")%>")) return false; 
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
		if(!checkNull("isettlenum","<%=domainInstance.getPropertyCnName("isettlenum")%>")) return false; 
		if(!checkNull("isettlequantity","<%=domainInstance.getPropertyCnName("isettlequantity")%>")) return false; 
		if(!checkNull("ibatch","<%=domainInstance.getPropertyCnName("ibatch")%>")) return false; 
		if(!checkNull("cbatch","<%=domainInstance.getPropertyCnName("cbatch")%>")) return false; 
		if(!checkNull("bsettleall","<%=domainInstance.getPropertyCnName("bsettleall")%>")) return false; 
		if(!checkNull("cmemo","<%=domainInstance.getPropertyCnName("cmemo")%>")) return false; 
		if(!checkNull("cfree1","<%=domainInstance.getPropertyCnName("cfree1")%>")) return false; 
		if(!checkNull("cfree2","<%=domainInstance.getPropertyCnName("cfree2")%>")) return false; 
		if(!checkNull("itb","<%=domainInstance.getPropertyCnName("itb")%>")) return false; 
		if(!checkNull("dvdate","<%=domainInstance.getPropertyCnName("dvdate")%>")) return false; 
		if(!checkNull("tbquantity","<%=domainInstance.getPropertyCnName("tbquantity")%>")) return false; 
		if(!checkNull("tbnum","<%=domainInstance.getPropertyCnName("tbnum")%>")) return false; 
		if(!checkNull("isosid","<%=domainInstance.getPropertyCnName("isosid")%>")) return false; 
		if(!checkNull("idlsid","<%=domainInstance.getPropertyCnName("idlsid")%>")) return false; 
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
		if(!checkNull("foutquantity","<%=domainInstance.getPropertyCnName("foutquantity")%>")) return false; 
		if(!checkNull("foutnum","<%=domainInstance.getPropertyCnName("foutnum")%>")) return false; 
		if(!checkNull("citemcode","<%=domainInstance.getPropertyCnName("citemcode")%>")) return false; 
		if(!checkNull("citem_class","<%=domainInstance.getPropertyCnName("citem_class")%>")) return false; 
		if(!checkNull("fsalecost","<%=domainInstance.getPropertyCnName("fsalecost")%>")) return false; 
		if(!checkNull("fsaleprice","<%=domainInstance.getPropertyCnName("fsaleprice")%>")) return false; 
		if(!checkNull("cvenabbname","<%=domainInstance.getPropertyCnName("cvenabbname")%>")) return false; 
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
		if(!checkNull("bisstqc","<%=domainInstance.getPropertyCnName("bisstqc")%>")) return false; 
		if(!checkNull("iinvexchrate","<%=domainInstance.getPropertyCnName("iinvexchrate")%>")) return false; 
		if(!checkNull("cunitid","<%=domainInstance.getPropertyCnName("cunitid")%>")) return false; 
		if(!checkNull("ccode","<%=domainInstance.getPropertyCnName("ccode")%>")) return false; 
		if(!checkNull("iretquantity","<%=domainInstance.getPropertyCnName("iretquantity")%>")) return false; 
		if(!checkNull("fensettlequan","<%=domainInstance.getPropertyCnName("fensettlequan")%>")) return false; 
		if(!checkNull("fensettlesum","<%=domainInstance.getPropertyCnName("fensettlesum")%>")) return false; 
		if(!checkNull("isettleprice","<%=domainInstance.getPropertyCnName("isettleprice")%>")) return false; 
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
		if(!checkNull("dmdate","<%=domainInstance.getPropertyCnName("dmdate")%>")) return false; 
		if(!checkNull("bgsp","<%=domainInstance.getPropertyCnName("bgsp")%>")) return false; 
		if(!checkNull("cgspstate","<%=domainInstance.getPropertyCnName("cgspstate")%>")) return false; 
		if(!checkNull("csocode","<%=domainInstance.getPropertyCnName("csocode")%>")) return false; 
		if(!checkNull("ccorcode","<%=domainInstance.getPropertyCnName("ccorcode")%>")) return false; 
		if(!checkNull("ippartseqid","<%=domainInstance.getPropertyCnName("ippartseqid")%>")) return false; 
		if(!checkNull("ippartid","<%=domainInstance.getPropertyCnName("ippartid")%>")) return false; 
		if(!checkNull("ippartqty","<%=domainInstance.getPropertyCnName("ippartqty")%>")) return false; 
		if(!checkNull("ccontractid","<%=domainInstance.getPropertyCnName("ccontractid")%>")) return false; 
		if(!checkNull("ccontracttagcode","<%=domainInstance.getPropertyCnName("ccontracttagcode")%>")) return false; 
		if(!checkNull("ccontractrowguid","<%=domainInstance.getPropertyCnName("ccontractrowguid")%>")) return false; 
		if(!checkNull("imassdate","<%=domainInstance.getPropertyCnName("imassdate")%>")) return false; 
		if(!checkNull("cmassunit","<%=domainInstance.getPropertyCnName("cmassunit")%>")) return false; 
		if(!checkNull("bqaneedcheck","<%=domainInstance.getPropertyCnName("bqaneedcheck")%>")) return false; 
		if(!checkNull("bqaurgency","<%=domainInstance.getPropertyCnName("bqaurgency")%>")) return false; 
		if(!checkNull("bqachecking","<%=domainInstance.getPropertyCnName("bqachecking")%>")) return false; 
		if(!checkNull("bqachecked","<%=domainInstance.getPropertyCnName("bqachecked")%>")) return false; 
		if(!checkNull("iqaquantity","<%=domainInstance.getPropertyCnName("iqaquantity")%>")) return false; 
		if(!checkNull("iqanum","<%=domainInstance.getPropertyCnName("iqanum")%>")) return false; 
		if(!checkNull("ccusinvcode","<%=domainInstance.getPropertyCnName("ccusinvcode")%>")) return false; 
		if(!checkNull("ccusinvname","<%=domainInstance.getPropertyCnName("ccusinvname")%>")) return false; 
		if(!checkNull("fsumsignquantity","<%=domainInstance.getPropertyCnName("fsumsignquantity")%>")) return false; 
		if(!checkNull("fsumsignnum","<%=domainInstance.getPropertyCnName("fsumsignnum")%>")) return false; 
		if(!checkNull("cbaccounter","<%=domainInstance.getPropertyCnName("cbaccounter")%>")) return false; 
		if(!checkNull("bcosting","<%=domainInstance.getPropertyCnName("bcosting")%>")) return false; 
		if(!checkNull("cordercode","<%=domainInstance.getPropertyCnName("cordercode")%>")) return false; 
		if(!checkNull("iorderrowno","<%=domainInstance.getPropertyCnName("iorderrowno")%>")) return false; 
		if(!checkNull("fcusminprice","<%=domainInstance.getPropertyCnName("fcusminprice")%>")) return false; 
		if(!checkNull("icostquantity","<%=domainInstance.getPropertyCnName("icostquantity")%>")) return false; 
		if(!checkNull("icostsum","<%=domainInstance.getPropertyCnName("icostsum")%>")) return false; 
		if(!checkNull("ispecialtype","<%=domainInstance.getPropertyCnName("ispecialtype")%>")) return false; 
		if(!checkNull("cvmivencode","<%=domainInstance.getPropertyCnName("cvmivencode")%>")) return false; 
		if(!checkNull("iexchsum","<%=domainInstance.getPropertyCnName("iexchsum")%>")) return false; 
		if(!checkNull("imoneysum","<%=domainInstance.getPropertyCnName("imoneysum")%>")) return false; 
		if(!checkNull("irowno","<%=domainInstance.getPropertyCnName("irowno")%>")) return false; 
		if(!checkNull("frettbquantity","<%=domainInstance.getPropertyCnName("frettbquantity")%>")) return false; 
		if(!checkNull("fretsum","<%=domainInstance.getPropertyCnName("fretsum")%>")) return false; 
		if(!checkNull("iexpiratdatecalcu","<%=domainInstance.getPropertyCnName("iexpiratdatecalcu")%>")) return false; 
		if(!checkNull("dexpirationdate","<%=domainInstance.getPropertyCnName("dexpirationdate")%>")) return false; 
		if(!checkNull("cexpirationdate","<%=domainInstance.getPropertyCnName("cexpirationdate")%>")) return false; 
		if(!checkNull("cbatchproperty1","<%=domainInstance.getPropertyCnName("cbatchproperty1")%>")) return false; 
		if(!checkNull("cbatchproperty2","<%=domainInstance.getPropertyCnName("cbatchproperty2")%>")) return false; 
		if(!checkNull("cbatchproperty3","<%=domainInstance.getPropertyCnName("cbatchproperty3")%>")) return false; 
		if(!checkNull("cbatchproperty4","<%=domainInstance.getPropertyCnName("cbatchproperty4")%>")) return false; 
		if(!checkNull("cbatchproperty5","<%=domainInstance.getPropertyCnName("cbatchproperty5")%>")) return false; 
		if(!checkNull("cbatchproperty6","<%=domainInstance.getPropertyCnName("cbatchproperty6")%>")) return false; 
		if(!checkNull("cbatchproperty7","<%=domainInstance.getPropertyCnName("cbatchproperty7")%>")) return false; 
		if(!checkNull("cbatchproperty8","<%=domainInstance.getPropertyCnName("cbatchproperty8")%>")) return false; 
		if(!checkNull("cbatchproperty9","<%=domainInstance.getPropertyCnName("cbatchproperty9")%>")) return false; 
		if(!checkNull("cbatchproperty10","<%=domainInstance.getPropertyCnName("cbatchproperty10")%>")) return false; 
		if(!checkNull("dblpreexchmomey","<%=domainInstance.getPropertyCnName("dblpreexchmomey")%>")) return false; 
		if(!checkNull("dblpremomey","<%=domainInstance.getPropertyCnName("dblpremomey")%>")) return false; 
		if(!checkNull("idemandtype","<%=domainInstance.getPropertyCnName("idemandtype")%>")) return false; 
		if(!checkNull("cdemandcode","<%=domainInstance.getPropertyCnName("cdemandcode")%>")) return false; 
		if(!checkNull("cdemandmemo","<%=domainInstance.getPropertyCnName("cdemandmemo")%>")) return false; 
		if(!checkNull("cdemandid","<%=domainInstance.getPropertyCnName("cdemandid")%>")) return false; 
		if(!checkNull("idemandseq","<%=domainInstance.getPropertyCnName("idemandseq")%>")) return false; 
		if(!checkNull("cvencode","<%=domainInstance.getPropertyCnName("cvencode")%>")) return false; 
		if(!checkNull("creasoncode","<%=domainInstance.getPropertyCnName("creasoncode")%>")) return false; 
		if(!checkNull("cinvsn","<%=domainInstance.getPropertyCnName("cinvsn")%>")) return false; 
		if(!checkNull("iinvsncount","<%=domainInstance.getPropertyCnName("iinvsncount")%>")) return false; 
		if(!checkNull("bneedsign","<%=domainInstance.getPropertyCnName("bneedsign")%>")) return false; 
		if(!checkNull("bsignover","<%=domainInstance.getPropertyCnName("bsignover")%>")) return false; 
		if(!checkNull("bneedloss","<%=domainInstance.getPropertyCnName("bneedloss")%>")) return false; 
		if(!checkNull("flossrate","<%=domainInstance.getPropertyCnName("flossrate")%>")) return false; 
		if(!checkNull("frlossqty","<%=domainInstance.getPropertyCnName("frlossqty")%>")) return false; 
		if(!checkNull("fulossqty","<%=domainInstance.getPropertyCnName("fulossqty")%>")) return false; 
		if(!checkNull("isettletype","<%=domainInstance.getPropertyCnName("isettletype")%>")) return false; 
		if(!checkNull("crelacuscode","<%=domainInstance.getPropertyCnName("crelacuscode")%>")) return false; 
		if(!checkNull("clossmaker","<%=domainInstance.getPropertyCnName("clossmaker")%>")) return false; 
		if(!checkNull("dlossdate","<%=domainInstance.getPropertyCnName("dlossdate")%>")) return false; 
		if(!checkNull("dlosstime","<%=domainInstance.getPropertyCnName("dlosstime")%>")) return false; 
		if(!checkNull("icoridlsid","<%=domainInstance.getPropertyCnName("icoridlsid")%>")) return false; 
		if(!checkNull("fretoutqty","<%=domainInstance.getPropertyCnName("fretoutqty")%>")) return false; 
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
						<%=domainInstance.getPropertyCnName("dlid") %>: 
					</td> 
					<td> 
						<input name="dlid" type="text" id="dlid" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDlid(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cwhcode") %>: 
					</td> 
					<td> 
						<%=DictionaryUtil.getSelectHtml("U8仓库字典", "cwhcode", StringUtil.getNotEmptyStr(domainInstance.getCwhcode(), ""))%> 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("cinvcode") %>: 
					</td> 
					<td> 
						<%=DictionaryUtil.getSelectHtml("U8存货字典", "cinvcode", StringUtil.getNotEmptyStr(domainInstance.getCinvcode(), ""))%> 
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
			</table> 
			 
			<!-- 工具栏 --> 
			<jsp:include page="../ToolBar/addOrModify_toolbar.jsp" /> 
		</form> 
	</body> 
</html> 
