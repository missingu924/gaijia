<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 --> 
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.common.obj.PaginationObj"%> 
<%@page import="com.wuyg.dictionary.DictionaryUtil"%> 
<%@page import="com.u8.obj.DispatchlistsObj"%>
<%@page import="com.u8.obj.DispatchlistObj"%> 
<!-- 基本信息 --> 
<% 
	// 当前上下文路径 
	String contextPath = request.getContextPath(); 
	// 该功能对象实例 
	DispatchlistObj domainInstance = (DispatchlistObj) request.getAttribute("domainInstance"); 
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
		<form name="addOrModifyForm" id="addOrModifyForm" method="post" action="<%=request.getContextPath()%>/<%=basePath%>/Servlet?method=modifyPrice"> 
		<!-- 表格标题 --> 
		<table width="90%" align="center" class="title_table"> 
			<tr> 
				<td> 
					<img src="../images/svg/heavy/green/list.png" width="18" height="18" align="absmiddle"> 
					&nbsp;&nbsp;<%=domainInstance.getCnName()%>信息 
				</td> 
			</tr> 
		</table> 
			<!-- 主表信息 --> 
			<table class="search_table" align="center" width="90%"> 
			<input type="hidden" name="dlid" value="<%=domainInstance.getDlid() %>">
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdlcode") %>:				<%=StringUtil.getNotEmptyStr(domainInstance.getCdlcode())%></td> 
				<td><%=domainInstance.getPropertyCnName("ddate") %>: <%=StringUtil.getNotEmptyStr(domainInstance.getDdateShow())%></td> 
		      </tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cdepcode") %>:				<%=DictionaryUtil.getDictValueByDictKey("U8部门字典",domainInstance.getCdepcode())%></td> 
				<td><%=domainInstance.getPropertyCnName("cpersoncode") %>: <%=DictionaryUtil.getDictValueByDictKey("U8人员字典",domainInstance.getCpersoncode())%></td> 
		      </tr> 
		   	<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("cexch_name") %>:				<%=domainInstance.getCexch_name()%></td> 
				<td><%=domainInstance.getPropertyCnName("iexchrate") %>: <%=StringUtil.getNotEmptyStr(StringUtil.formatDouble(domainInstance.getIexchrate(),2))%></td> 
		    </tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("ccuscode") %>:				<%=DictionaryUtil.getDictValueByDictKey("U8客户字典",domainInstance.getCcuscode())%></td> 
				<td><%=domainInstance.getPropertyCnName("itaxrate") %>: <%=StringUtil.getNotEmptyStr(StringUtil.formatDouble(domainInstance.getItaxrate(),2))%></td> 
		      </tr> 
			</table> 
 
			<!-- 查询结果 --> 
			<% 
				PaginationObj pagination = null; 
				List list = new ArrayList(); 
 
				Object temp = request.getAttribute("details"); 
				if (temp != null) 
				{  
					list = (List) temp; 
				} 
				
				DispatchlistsObj o = new DispatchlistsObj();
			%> 
			<table class="table table-bordered table-striped" align="center" width="90%"> 
				<thead> 
					<tr> 
						<th><%=o.getPropertyCnName("cwhcode") %></th> 
						<th><%=o.getPropertyCnName("cinvcode") %></th> 
						<th>规格型号</th>
						<th><%=o.getPropertyCnName("iquantity") %></th> 
						<th><%=o.getPropertyCnName("isettlequantity") %></th> 
						<th><%=o.getPropertyCnName("itaxunitprice") %></th> 
						<th><%=o.getPropertyCnName("isum") %></th> 
						<th><%=o.getPropertyCnName("inatsum") %></th> 
						<th><font color="#ff6600">修改含税单价</font></th>
						<th><font color="#ff6600">查看修改记录</font></th>  
					</tr> 
				</thead> 
				<% 
					double isumTotal = 0;
					boolean priceChangedTotal = false;
					for (int i = 0; i < list.size(); i++) 
						{ 
							o = (DispatchlistsObj) list.get(i); 
							
							boolean priceChanged = o.isPriceChanged();
							priceChangedTotal = priceChangedTotal||priceChanged;
							String fontColor= priceChanged?"#ff6600":"";
							
							isumTotal+=o.getIsum();
				%> 
				<tr>
					<td><%=DictionaryUtil.getDictValueByDictKey("U8仓库字典",o.getCwhcode())%></td>  
					<td><%=DictionaryUtil.getDictValueByDictKey("U8存货字典",o.getCinvcode())%></td>  
					<td><%=DictionaryUtil.getDictValueByDictKey("U8存货规格型号字典",o.getCinvcode())%></td>
					<td style="text-align:right"><%=StringUtil.getNotEmptyStr(StringUtil.formatDouble(o.getIquantity(),0))%></td> 
					<td style="text-align:right"><%=StringUtil.getNotEmptyStr(StringUtil.formatDouble(o.getIsettlequantity(),0))%></td> 
					<td style="text-align:right">
						<font color="<%=fontColor %>">
						<%=StringUtil.getNotEmptyStr(StringUtil.formatDouble(o.getItaxunitprice(),2))%>
						</font>
					</td>
					<td style="text-align:right">
						<font color="<%=fontColor %>">
						<%=StringUtil.getNotEmptyStr(StringUtil.formatDouble(o.getIsum(),2))%>
						</font>
					</td>
					<td style="text-align:right">
						<font color="<%=fontColor %>">
						<%=StringUtil.getNotEmptyStr(StringUtil.formatDouble(o.getInatsum(),2))%>
						</font>
					</td>
					<td style="text-align:center">
						<input type="hidden" name="autoid" value="<%=o.getAutoid()%>">
						<input type="hidden" name="dlid" value="<%=o.getDlid()%>">
						<input type="hidden" name="iquantity" value="<%=o.getIquantity()%>">
						<input type="hidden" name="cwhcode" value="<%=o.getCwhcode()%>">
						<input type="hidden" name="cinvcode" value="<%=o.getCinvcode()%>">
						<input type="hidden" name="cdepcode" value="<%=domainInstance.getCdepcode()%>">
						<input type="hidden" name="cpersoncode" value="<%=domainInstance.getCpersoncode()%>">
						<input type="hidden" name="ccuscode" value="<%=domainInstance.getCcuscode()%>">
						<input type="hidden" name="itaxunitprice" value="<%=StringUtil.formatDouble(o.getItaxunitprice(),2) %>">
						<input type="hidden" name="itaxrate" value="<%=StringUtil.formatDouble(o.getItaxrate(),2) %>">
						<input type="hidden" name="iexchrate" value="<%=StringUtil.formatDouble(domainInstance.getIexchrate(),2) %>">
						<input type="text" name="itaxunitprice_after_change" size="10" style="color:#ff6600">
			
					</td>
					<td style="text-align:center">
						<%if(priceChanged){ %>
							<a href="#" onClick="openBigModalDialog('<%=contextPath%>/DispatchPriceChangeLog/Servlet?method=list4this&forDetail=true&autoid=<%=o.getKeyValue()%>')">查看</a>
						<%} else { %>
						<font color="#999999">未修改</font>
						<%} %>
					</td>
				</tr> 

				<% 
					} 
				%> 
				<tr>
					<td colspan="7" style="text-align:right;color:blue">合计</td>
					<td style="text-align:right;color:blue"><%=StringUtil.formatDouble(isumTotal,2) %></td>
					<td></td>
					<td style="text-align:center">
					<%if(priceChangedTotal){ %>
							<a href="#" onClick="openBigModalDialog('<%=contextPath%>/DispatchPriceChangeLog/Servlet?method=list4this&dlid=<%=o.getDlid()%>')">查看全部</a>
						<%} %>
					</td>
				</tr>
			</table> 
			
 			
			<!-- 工具栏 --> 
			<table align="center" width="100%" class="toolbar_table">
				<tr>
					<td>
						<!-- <input name="cancleButton" type="button" class="button button_cancel" title="取消" onClick="javascript:window.close();">
						&nbsp;
						 -->
						<input name="saveButton" type="button" class="button button_save" value="保存" title="保存" onClick="addOrModify()">
					</td>
				</tr>
			</table>
		</form>  
 
 <script type="text/javascript">
		//  新增或修改 
		function addOrModify() 
		{
			submit(); 
		} 
		 
		// 提交保存或修改 
		function submit() 
		{ 
			$("#addOrModifyForm").submit(); 
		} 
		
		if("true"=="<%=request.getAttribute("result")+""%>")
		{
			alert("修改成功");
		}
		else if("false"=="<%=request.getAttribute("result")+""%>")
		{
			alert("修改失败");
		}
		
		</script> 
	</body> 
</html> 
