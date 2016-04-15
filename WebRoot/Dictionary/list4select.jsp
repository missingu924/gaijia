<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%>
<!-- 引入类 -->
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wuyg.common.util.StringUtil"%>
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%>
<%@page import="com.hz.dict.service.DictionaryService"%>
<%@page import="com.wuyg.dictionary.obj.DictionaryObj"%>
<%@page import="com.inspur.common.dictionary.pojo.DictItem"%>
<!-- 基本信息 -->
<%
	// 当前上下文路径 
	String contextPath = request.getContextPath();
	// 该功能对象实例 
	DictionaryObj domainInstance = (DictionaryObj) request.getAttribute("domainInstance");
	// 该功能路径 
	String basePath = domainInstance.getBasePath();
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>数据项选择</title>
		<link href="../css/global.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../js/jquery-2.0.3.min.js"></script>
		<script type="text/javascript" src="../js/utils.js"></script>
	</head>
	<body>
	
		<!-- 查询条件 --> 
		<table class="search_table" align="center" width="90%"> 
			<tr> 
				<td align="center">
					<input type="text" name="dict_search_input" id="dict_search_input" value="" size="40"> 
				</td> 
				<!--
				<td align="right"> 
					<input name="addButton" type="button" class="button button_confirm" value="确认" onClick="confirmSelect()"> 
				</td> 
				-->
			</tr> 
		</table> 
		
		<!-- 字典信息表 -->
		<table id="dict_table_list" width="90%" class="table table-bordered" align="center">
			<thead>
				<tr>
				<!-- 
					<th>
						选择
					</th>
				 -->
					<th>
						编号
					</th>
					<th>
						名称
					</th>
				</tr>
			</thead>
			<%
				List<DictItem> items = (ArrayList<DictItem>) request.getAttribute("dictItems");

				if (items == null)
				{
					items = new ArrayList<DictItem>();
				}

				for (int i = 1; i < items.size(); i++)
				{
					DictItem item = items.get(i);
			%>
			<tr onclick="rowClick('<%=item.getK()%>','<%=item.getV()%>')">
				<!-- 
				<td>
					<input type="radio" name="dest_radiao" value="<%=item.getK()%>" label="<%=item.getV()%>" onclick="confirmSelect()">
				</td>
				 -->
				<td><%=item.getK()%></td>
				<td><%=item.getV()%></td>
			</tr>
			<%
				}
			%>

		</table>
		<script>
		var defaultValue = "输入编号或名称自动检索";
		// 设置检索框值
		function setDictSearchInpuValue(inputValue)
		{
			$("#dict_search_input").val(inputValue).css("color","#000000");
		}
		// 设置检索框默认值
		function initDictSearchInput()
		{
			$("#dict_search_input").val(defaultValue).css("color","#999999");
			
			// 光标聚焦到输入框起始位置
			var range = document.getElementById("dict_search_input").createTextRange();  
			range.collapse(true);
			range.moveStart('character',0);
			range.select();  
		}
		
		// 检索框初始化
		initDictSearchInput();	
		
		// 字典检索
		$('#dict_search_input').bind('input propertychange',function(){dictSearch();});
		
		function dictSearch(){
			var search_value = $.trim($('#dict_search_input').val().replace(defaultValue,""));
			
			if(search_value!=""){
			
				// 替换默认以后的内容
				setDictSearchInpuValue(search_value);
				
				$('#dict_table_list tr').each(function(){
				
					var tr = $(this);
					if($(tr).text().toUpperCase().indexOf(search_value.toUpperCase())>=0){
						$(tr).show();
					}
					else
					{
						$(tr).hide();
					}
					
				});
			}
			else
			{
				// 初始化输入框
				initDictSearchInput();
				
				$('#dict_table_list tr').each(function(){
				
					$(this).show();
					
				});
			}
		}
		
		
		
		// 确认选择
		function confirmSelect()
		{		
			var selectValue = $("input:radio:checked").val();
			
			if(selectValue)
			{
				window.returnValue = selectValue;
				window.close();
			}
			else
			{
				//if(confirm("您没有选择任何项，确认关闭吗?"))
				window.close();
			}
		}
		
		
		function rowClick(key,value)
		{
			//alert(key+'='+value);
			
			window.returnValue = key+';'+value;
			window.close();
		}
	</script>
	</body>
</html>
