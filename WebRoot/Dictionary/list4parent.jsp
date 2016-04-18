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
<!-- 基本信息 -->
<%
	// 该类全名
	String clzFullName = request.getParameter("clzFullName");
	//String keyColName = request.getParameter("keyColName");
	//String valueColName = request.getParameter("valueColName");
	String dictName = request.getParameter("dictName");
	
	Dictionary dictionary = new Dictionary();
	Dict dict = dictionary.getDictByName(dictName);
	String keyColName = dict.getDictKeyCol();
	String valueColName = dict.getDictValueCol();
	
	// 当前上下文路径 
	String contextPath = request.getContextPath();
	// 该功能对象实例 
	BaseDbObj domainInstance = (BaseDbObj)Class.forName(clzFullName).newInstance();
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
	</head>
	<body>
		<!-- 表格标题 -->
		<table width="700" align="center" class="sub_title_table">
			<tr>
				<td>
					<img src="../images/svg/heavy/green/list.png" width="16" height="16" align="absmiddle">
					&nbsp;&nbsp;<%=isAddOrModify?"修改":"" %>拥有的<%=domainInstance.getCnName()%>
				</td>
				<%if(isAddOrModify){ %>
				<td width="40px" style="text-align: left">
					<input name="addButton" type="button" class="button button_add_square" value="增加" onClick="createRowFromDictionary('<%=dictName %>','sub_list_table','<%=keyColName %>')">
				</td>
				<%} %>
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
		<table id="sub_list_table" class="table table-bordered table-striped" align="center" width="700">
			<thead>
				<tr>
					<th><%=domainInstance.getPropertyCnName(keyColName)%></th>
					<th><%=domainInstance.getPropertyCnName(valueColName)%></th>
					<%if(isAddOrModify){ %>
					<th width="40px" style="text-align: left">
						<input name="delAllButton" type="button" class="button button_delete_square" value="全删" onClick="$('#sub_list_table tr:not(:first)').remove()">
					</th>
					<%} %>
				</tr>
			</thead>
			<%
				for (int i = 0; i < list.size(); i++)
				{
					BaseDbObj o = (BaseDbObj) list.get(i);
			%>
			<tr>
				<td><%=StringUtil.getNotEmptyStr(o.getPropertyValue(keyColName))%></td>
				<td><%=StringUtil.getNotEmptyStr(o.getPropertyValue(valueColName))%></td>
				<%if(isAddOrModify){ %>
				<td>
					<input type="hidden" name="<%=keyColName %>" value="<%=o.getPropertyValue(keyColName)%>">
					<input type="button" class="button button_delete" title="删除" onClick="$(this).parents('tr').remove();" />
				</td>
				<%} %>
			</tr>
			<%
				}
			%>
		</table>
	</body>
</html>
