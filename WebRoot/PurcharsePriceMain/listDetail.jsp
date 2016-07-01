<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%>
<!-- 引入类 -->
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wuyg.common.util.StringUtil"%>
<%@page import="com.wuyg.common.obj.PaginationObj"%>
<%@page import="com.wuyg.dictionary.DictionaryUtil"%>
<%@page import="com.wuyg.auth.obj.AuthRoleObj"%>
<%@page import="com.wuyg.common.dao.BaseDbObj"%>
<%@page import="com.inspur.common.dictionary.Dictionary"%>
<%@page import="com.inspur.common.dictionary.pojo.Dict"%>
<%@page import="com.purcharse.obj.PurcharsePriceDetailObj"%>
<!-- 基本信息 -->
<%
	// 当前上下文路径 
	String contextPath = request.getContextPath();
	// 该功能对象实例 
	BaseDbObj domainInstance = new PurcharsePriceDetailObj();
	// 该功能路径 
	String basePath = domainInstance.getBasePath();
	// 是否增加或修改
	boolean isAddOrModify = "true".equalsIgnoreCase(request.getParameter("isAddOrModify"));
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />
		<link href="../css/global.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../js/jquery-2.0.3.min.js"></script>
		<script type="text/javascript" src="../js/utils.js"></script>
		<script type="text/javascript">
			// 选择存货
		 	function selectInventory()
		 	{	
		 		var returnValue = window.showModalDialog(
					'../Inventory/Servlet?method=list4select&pageCount=15',
					this,
					'dialogHeight:660px;dialogWidth:820px;resizable:yes;maximize:yes'
					);
					
					if (returnValue != null) {
					
						var valueArray = returnValue.split(';');
				
						for(i=0;i<valueArray.length;i++)
						{
							var oneLine = valueArray[i];
							
							var tempHtml = $("#tempHtml").val();
							
							var trHtml = tempHtml.useJson(JSON.parse(oneLine));
							
							$("#sub_list_table").append(trHtml);
						}
					}
		 	}
		</script>
	</head>
	<body>
		<!-- 表格标题 -->
		<table width="98%" align="center" class="sub_title_table">
			<tr>
				<td>
					<img src="../images/svg/heavy/green/list.png" width="16" height="16" align="absmiddle">
					&nbsp;&nbsp;<%=isAddOrModify ? "修改" : ""%><%=domainInstance.getCnName()%>
				</td>
				<%
					if (isAddOrModify)
					{
				%>
				<td width="40px" style="text-align: left">
					<input name="addButton" type="button" class="button button_add_square" value="增加" onClick="selectInventory()">
				</td>
				<%
					}
				%>
			</tr>
		</table>

		<!-- 查询结果 -->
		<%
			List list = new ArrayList();

			Object tempObj = request.getAttribute("dataList");
			if (tempObj != null)
			{
				list = (List) tempObj;
			}
		%>
		<table width="98%" id="sub_list_table" class="table table-bordered table-striped" align="center">
			<thead>
				<tr>

					<th><%=domainInstance.getPropertyCnName("cinvccode")%></th>
					<th><%=domainInstance.getPropertyCnName("cinvname")%></th>
					<th><%=domainInstance.getPropertyCnName("cinvstd")%></th>
					<th><%=domainInstance.getPropertyCnName("cvencode")%></th>
					<th><%=domainInstance.getPropertyCnName("ccomunitcode")%></th>
					<th><%=domainInstance.getPropertyCnName("price")%></th>
					<th><%=domainInstance.getPropertyCnName("comment")%></th>
					<%
						if (isAddOrModify)
						{
					%>
					<th width="40px" style="text-align: left">
						<input name="delAllButton" type="button" class="button button_delete_square" value="全删" onClick="$('#sub_list_table tr:not(:first)').remove()">
					</th>
					<%
						}
					%>
				</tr>
			</thead>
			<%
				for (int i = 0; i < list.size(); i++)
				{
					PurcharsePriceDetailObj o = (PurcharsePriceDetailObj) list.get(i);
			%>
			<tr>

				<td><%=StringUtil.getNotEmptyStr(o.getCinvcname())%></td>
				<td><%=StringUtil.getNotEmptyStr(o.getCinvname())%></td>
				<td><%=StringUtil.getNotEmptyStr(o.getCinvstd())%></td>
				<td><%=StringUtil.getNotEmptyStr(o.getCvenname())%></td>
				<td><%=StringUtil.getNotEmptyStr(o.getCcomunitname())%></td>

				<%
					if (isAddOrModify)
						{
				%>
				<td>
					<input type="text" name="price" value="<%=StringUtil.formatDouble(o.getPrice(),2)%>">
				</td>
				<td>
					<input type="text" name="comment" value="<%=StringUtil.getNotEmptyStr(o.getComment())%>">
				</td>
				<td>
					<input type="hidden" name="cinvcode" value="<%=StringUtil.getNotEmptyStr(o.getCinvcode())%>">
					<input type="hidden" name="cinvcname" value="<%=StringUtil.getNotEmptyStr(o.getCinvcname())%>">
					<input type="hidden" name="cinvname" value="<%=StringUtil.getNotEmptyStr(o.getCinvname())%>">
					<input type="hidden" name="cinvstd" value="<%=StringUtil.getNotEmptyStr(o.getCinvstd())%>">
					<input type="hidden" name="cvenname" value="<%=StringUtil.getNotEmptyStr(o.getCvenname())%>">
					<input type="hidden" name="ccomunitname" value="<%=StringUtil.getNotEmptyStr(o.getCcomunitname())%>">
					<input type="button" class="button button_delete" title="删除" onClick="$(this).parents('tr').remove();" />
				</td>
				<%
					} else
						{
				%>
				<td><%=StringUtil.formatDouble(o.getPrice(),2)%></td>
				<td><%=StringUtil.getNotEmptyStr(o.getComment())%></td>
				<%
					}
				%>
			</tr>
			<%
				}
			%>

			<!-- 每行的模板 -->
			<textarea id="tempHtml" style="display: none;">
				
			<tr>

				<td>
					$cinvcname$
				</td>
				<td>
					$cinvname$
				</td>
				<td>
					$cinvstd$
				</td>
				<td>
					$cvenname$
				</td>
				<td>
					$ccomunitname$
				</td>
				<td>
					<input type="text" name="price" value="">
				</td>
				<td>
					<input type="text" name="comment" value="">
				</td>
				<%
					if (isAddOrModify)
					{
				%>
				<td>
					<input type="hidden" name="cinvcode" value="$cinvcode$">
					<input type="hidden" name="cinvcname" value="$cinvcname$">
					<input type="hidden" name="cinvname" value="$cinvname$">
					<input type="hidden" name="cinvstd" value="$cinvstd$">
					<input type="hidden" name="cvenname" value="$cvenname$">
					<input type="hidden" name="ccomunitname" value="$ccomuniname$">
					<input type="button" class="button button_delete" title="删除" onClick="$(this).parents('tr').remove();" />
				</td>
				<%
					}
				%>
			</tr>
			</textarea>

		</table>
	</body>
</html>
