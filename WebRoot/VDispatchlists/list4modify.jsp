<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 --> 
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.common.obj.PaginationObj"%> 
<%@page import="com.wuyg.dictionary.DictionaryUtil"%> 
<%@page import="com.u8.obj.VDispatchlistsObj"%>
<%@page import="com.wuyg.auth.obj.AuthUserObj"%>
<%@page import="com.wuyg.common.util.SystemConstant"%>
<!-- 基本信息 --> 
<% 
	// 当前上下文路径 
	String contextPath = request.getContextPath(); 
	// 该功能对象实例 
	VDispatchlistsObj domainInstance = (VDispatchlistsObj) request.getAttribute("domainInstance"); 
	// 该功能路径 
	String basePath = domainInstance.getBasePath(); 
	// 是否管理员
	AuthUserObj user = (AuthUserObj) request.getSession().getAttribute(SystemConstant.AUTH_USER_INFO);
	boolean isAdmin = user.hasRole(SystemConstant.ROLE_ADMIN);
%> 
<html> 
	<head> 
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />		
		<title><%=domainInstance.getCnName() %>列表</title> 
		<link href="../css/global.css" rel="stylesheet" type="text/css"> 
		<link href="../css/table.css" rel="stylesheet" type="text/css"> 
		<script type="text/javascript" src="../js/jquery-2.0.3.min.js"></script> 
		<script type="text/javascript" src="../js/utils.js"></script> 
		<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script> 
	</head> 
	<body> 
		<form name="addOrModifyForm" id="addOrModifyForm" method="post" action="<%=request.getContextPath()%>/<%=basePath%>/Servlet?method=list4modify"> 
			<!-- 查询条件 --> 
			<table class="search_table" align="center" width="98%"> 
				<tr> 
				  <td align="left">
					<%=domainInstance.getPropertyCnName("ddate") %>&nbsp;
					<input name="ddate_start" type="text" id="ddate_start" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDdate_start())%>" size="10" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})">
					至
					<input name="ddate_end" type="text" id="ddate_end" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDdate_end())%>" size="10" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<%=domainInstance.getPropertyCnName("cinvcode") %>&nbsp;
					<%=DictionaryUtil.getInputHtml("U8存货字典", "cinvcode", StringUtil.getNotEmptyStr(domainInstance.getCinvcode(), ""))%>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<%=domainInstance.getPropertyCnName("allsettled") %>&nbsp;
					<%=DictionaryUtil.getSelectHtml("是否字典", "allsettled", StringUtil.getNotEmptyStr(domainInstance.getAllsettled(), ""))%>
				</td> 
					<td rowspan="2" align="right"><input name="searchButton" type="submit" class="button button_search" value="查询"></td>
				</tr>
				<tr>
				  <td align="left">
				  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				   <%if(isAdmin){ %>
				  <%=domainInstance.getPropertyCnName("cdepcode") %>&nbsp;
				  <%=DictionaryUtil.getInputHtml("U8部门字典", "cdepcode", StringUtil.getNotEmptyStr(domainInstance.getCdepcode(), ""))%>
				  <%=domainInstance.getPropertyCnName("cpersoncode") %>&nbsp;
				  <%=DictionaryUtil.getInputHtml("U8人员字典", "cpersoncode", StringUtil.getNotEmptyStr(domainInstance.getCpersoncode(), ""),"U8部门字典","cdepcode")%>
				  <%} else { %>
				  <input type="hidden" name="cpersoncode" value="<%=StringUtil.getNotEmptyStr(domainInstance.getCpersoncode(), "")%>">
				  <%} %>
				  <%=domainInstance.getPropertyCnName("ccuscode") %>&nbsp;
				  <%=DictionaryUtil.getInputHtml("U8客户字典", "ccuscode", StringUtil.getNotEmptyStr(domainInstance.getCcuscode(), ""),"U8人员字典","cpersoncode")%></td>
			  </tr> 
			</table>
			
 		<!-- 查询结果 --> 
			<% 
				
				List list = new ArrayList(); 
 
				Object temp = request.getAttribute("list"); 
				if (temp != null) 
				{  
					list = (List) temp; 
				} 
				
				VDispatchlistsObj o = new VDispatchlistsObj();
			%> 
			<table class="table table-bordered table-striped" align="center" width="98%"> 
				<thead> 
					<tr>
						<th>序号</th> 
						<th><%=domainInstance.getPropertyCnName("cdlcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ddate") %></th> 
						<th><%=domainInstance.getPropertyCnName("cdepcode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cpersoncode") %></th> 
						<th><%=domainInstance.getPropertyCnName("ccuscode") %></th> 
						<th><%=domainInstance.getPropertyCnName("cexch_name") %></th> 
						<th><%=domainInstance.getPropertyCnName("iexchrate") %></th> 
						<th><%=domainInstance.getPropertyCnName("itaxrate") %></th> 
						<th><%=o.getPropertyCnName("cinvcode") %></th> 
						<th><%=o.getPropertyCnName("iquantity") %></th> 
						<th><%=o.getPropertyCnName("isettlequantity") %></th> 
						<th><%=o.getPropertyCnName("itaxunitprice") %></th> 
						<th><%=o.getPropertyCnName("isum") %></th> 
						<th><%=o.getPropertyCnName("inatsum") %></th> 
						<th><font color="#006633">修改含税单价</font></th>
						<th>查看修改记录</th>  
					</tr> 
				</thead> 
				
				<tr id="multiSetTr" style="display:none">
					<td colspan="15"></td>
					<td style="text-align:center;color:#006633">
						批量修改<br>
						<input type="text" id="multiSetInput" size="10">
					</td>
					<td></td>
				</tr>
				<% 
					double isumTotal = 0;
					double inatsumTotal = 0;
					boolean onlyOneInv = true;
					// 判断是否只有一个存货
					if(list.size()>1)
					{
						String cinvcode = ((VDispatchlistsObj)list.get(0)).getCinvcode();
						for (int i = 0; i < list.size(); i++) 
						{ 
							o = (VDispatchlistsObj) list.get(i); 
							if(!cinvcode.equals(o.getCinvcode()))
							{
								onlyOneInv = false;
								break;
							}
						}
					}
					
					for (int i = 0; i < list.size(); i++) 
					{ 
							o = (VDispatchlistsObj) list.get(i); 
							
							boolean priceChanged = o.isPriceChanged();
							
							String fontColor = priceChanged?"#ff6600":"";
							
							isumTotal+=o.getIsum();
							inatsumTotal+=o.getInatsum();
							
							
				%> 
				<tr>
					<td><%=i+1%></td>
					<td><%=StringUtil.getNotEmptyStr(o.getCdlcode())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDdateShow())%></td> 
					<td><%=DictionaryUtil.getDictValueByDictKey("U8部门字典",o.getCdepcode())%></td>  
					<td><%=DictionaryUtil.getDictValueByDictKey("U8人员字典",o.getCpersoncode())%></td>  
					<td><%=DictionaryUtil.getDictValueByDictKey("U8客户字典",o.getCcuscode())%></td>  
					<td><%=StringUtil.getNotEmptyStr(o.getCexch_name())%></td> 
					<td><%=StringUtil.getNotEmptyStr(StringUtil.formatDouble(o.getIexchrate(),2))%></td> 
					<td><%=StringUtil.getNotEmptyStr(StringUtil.formatDouble(o.getItaxrate(),2))%></td> 
					<td><%=DictionaryUtil.getDictValueByDictKey("U8存货字典",o.getCinvcode())%></td>  
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
						<input type="hidden" name="autoid_" value="<%=o.getAutoid()%>">
						<input type="hidden" name="dlid_" value="<%=o.getDlid()%>">
						<input type="hidden" name="iquantity_" value="<%=o.getIquantity()%>">
						<input type="hidden" name="cwhcode_" value="<%=o.getCwhcode()%>">
						<input type="hidden" name="cinvcode_" value="<%=o.getCinvcode()%>">
						<input type="hidden" name="cdepcode_" value="<%=o.getCdepcode()%>">
						<input type="hidden" name="cpersoncode_" value="<%=o.getCpersoncode()%>">
						<input type="hidden" name="ccuscode_" value="<%=o.getCcuscode()%>">
						<input type="hidden" name="itaxunitprice_" value="<%=StringUtil.formatDouble(o.getItaxunitprice(),2) %>">
						<input type="hidden" name="itaxrate_" value="<%=StringUtil.formatDouble(o.getItaxrate(),2) %>">
						<input type="hidden" name="iexchrate_" value="<%=StringUtil.formatDouble(o.getIexchrate(),2) %>">
						<input type="text" id="itaxunitprice_after_change" name="itaxunitprice_after_change" size="10" style="color:#ff6600">
			
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
					<td colspan="13" style="text-align:right;color:blue">合计</td>
					<td style="text-align:right;color:blue"><%=StringUtil.formatDouble(isumTotal,2) %></td>
					<td style="text-align:right;color:blue"><%=StringUtil.formatDouble(inatsumTotal,2) %></td>
					<td></td>
					<td></td>
				</tr>
			</table> 
			
 			
			<!-- 工具栏 --> 
			<%if(list.size()>0){ %>
			<table align="center" width="100%" class="toolbar_table">
				<tr>
					<td>
						<!-- <input name="cancleButton" type="button" class="button button_cancel" title="取消" onClick="javascript:window.close();">
						&nbsp;
						 -->
						<input name="saveButton" type="button" class="button button_save" value="确认修改" onClick="addOrModify()">
					</td>
				</tr>
			</table>
			<%} %>
			</form>
		 
 
 		<script type="text/javascript">
		//  新增或修改 
		function addOrModify() 
		{
			$("#addOrModifyForm").attr('action','<%=request.getContextPath()%>/<%=basePath%>/Servlet?method=modifyPrice').submit(); 
		}
		
		// 批量设置
		function multiSet(price)
		{
			$("input[name='itaxunitprice_after_change']").val(price);
		}
		
		// 监听批量设置
		$('#multiSetInput').bind('input propertychange',function(){
			multiSet($(this).val());
		});
		
		<%
			// 当只有一个存货时，可以进行批量修改
			if(list.size()>0&&onlyOneInv){ %>
			
			$('#multiSetTr').show();
		<%}%>
		
		// 提示修改结果
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
