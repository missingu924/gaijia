<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 --> 
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.wuyg.common.obj.PaginationObj"%> 
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.ruihua.obj.OrderListObj"%> 
<!-- 基本信息 --> 
<% 
	// 当前上下文路径 
	String contextPath = request.getContextPath(); 
 
	// 该功能对象实例 
	OrderListObj domainInstance = (OrderListObj) request.getAttribute("domainInstance"); 
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
		<form name="pageForm" id="pageForm" method="post" action="<%=request.getContextPath()%>/<%=basePath%>/Servlet?method=list4this"> 
			 
			<!-- 查询条件 --> 
			<table class="search_table" align="center" width="98%"> 
				<tr> 
					<td align="left"> 
						<%=domainInstance.getPropertyCnName("dingdan_bianhao") %> 
						<input name="dingdan_bianhao" type="text" id="dingdan_bianhao" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_bianhao())%>" size="20" > 
						&nbsp;  
						<%=domainInstance.getPropertyCnName("maijia_huiyuanming") %> 
						<input name="maijia_huiyuanming" type="text" id="maijia_huiyuanming" value="<%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_huiyuanming())%>" size="20" > 
						&nbsp;  
						<%=domainInstance.getPropertyCnName("maijia_zhifubao_zhanghao") %> 
						<input name="maijia_zhifubao_zhanghao" type="text" id="maijia_zhifubao_zhanghao" value="<%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_zhifubao_zhanghao())%>" size="20" > 
						&nbsp;  
						<input name="searchButton" type="button" class="button button_search" value="查询" onClick="toPage(1)"> 
					</td> 
					<td align="right"> 
						<input name="addButton" type="button" class="button button_add" value="增加" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=preModify4this')"> 
						<input name="uploadButton" type="button" class="button button_upload" value="导入" onClick="winOpen('<%=contextPath%>/<%=basePath%>/Servlet?method=uploadFile')">
					</td> 
				</tr> 
			</table> 
 
			<!-- 查询结果 --> 
			<% 
				PaginationObj pagination = null; 
				List list = new ArrayList(); 
 
				Object paginationObj = request.getAttribute("domainPagination"); 
				if (paginationObj != null) 
				{ 
					pagination = (PaginationObj) paginationObj; 
					list = (List) pagination.getDataList(); 
				} 
				if (paginationObj == null) 
				{ 
					out.print("没有符合条件的数据，请重新设置条件再查询。"); 
				} else 
				{ 
			%> 
			<table class="table table-bordered table-striped" align="center" width="98%"> 
				<thead> 
					<tr> 
						<th><%=domainInstance.getPropertyCnName("id") %></th> 
						<th><%=domainInstance.getPropertyCnName("dingdan_bianhao") %></th> 
						<th><%=domainInstance.getPropertyCnName("maijia_huiyuanming") %></th> 
						<th><%=domainInstance.getPropertyCnName("maijia_zhifubao_zhanghao") %></th> 
						<th><%=domainInstance.getPropertyCnName("maijia_yingfu_huokuan") %></th> 
						<th><%=domainInstance.getPropertyCnName("maijia_yingfu_youfei") %></th> 
						<th><%=domainInstance.getPropertyCnName("maijia_zhifu_jifen") %></th> 
						<th><%=domainInstance.getPropertyCnName("zong_jin_er") %></th> 
						<th><%=domainInstance.getPropertyCnName("fandian_jifen") %></th> 
						<th><%=domainInstance.getPropertyCnName("maijia_shiji_zhifu_jin_er") %></th> 
						<th><%=domainInstance.getPropertyCnName("maijia_shiji_zhifu_jifen") %></th> 
						<th><%=domainInstance.getPropertyCnName("dingdan_zhuangtai") %></th> 
						<th><%=domainInstance.getPropertyCnName("maijia_liuyan") %></th> 
						<th><%=domainInstance.getPropertyCnName("shouhouren_xingming") %></th> 
						<th><%=domainInstance.getPropertyCnName("shouhuo_dizhi") %></th> 
						<th><%=domainInstance.getPropertyCnName("yunsong_fangshi") %></th> 
						<th><%=domainInstance.getPropertyCnName("lianxi_dianhua") %></th> 
						<th><%=domainInstance.getPropertyCnName("lianxi_shouji") %></th> 
						<th><%=domainInstance.getPropertyCnName("dingdan_chuangjian_shijian") %></th> 
						<th><%=domainInstance.getPropertyCnName("dingdan_fukuan_shijian") %></th> 
						<th><%=domainInstance.getPropertyCnName("baobei_biaoti") %></th> 
						<th><%=domainInstance.getPropertyCnName("baobei_zhonglei") %></th> 
						<th><%=domainInstance.getPropertyCnName("wuliu_danhao") %></th> 
						<th><%=domainInstance.getPropertyCnName("wuliu_gongsi") %></th> 
						<th><%=domainInstance.getPropertyCnName("dingdan_beizhu") %></th> 
						<th><%=domainInstance.getPropertyCnName("baobei_zongshuliang") %></th> 
						<th><%=domainInstance.getPropertyCnName("dianpu_id") %></th> 
						<th><%=domainInstance.getPropertyCnName("dianpu_mingcheng") %></th> 
						<th><%=domainInstance.getPropertyCnName("dingdan_guanbi_yuanyin") %></th> 
						<th><%=domainInstance.getPropertyCnName("sale_fuwufei") %></th> 
						<th><%=domainInstance.getPropertyCnName("buy_fuwufei") %></th> 
						<th><%=domainInstance.getPropertyCnName("fapiao_taitou") %></th> 
						<th><%=domainInstance.getPropertyCnName("shifou_shouji_dingdan") %></th> 
						<th><%=domainInstance.getPropertyCnName("fenjieduan_dingdan_xinxi") %></th> 
						<th><%=domainInstance.getPropertyCnName("dingjin_paiming") %></th> 
						<th><%=domainInstance.getPropertyCnName("xiugaihou_sku") %></th> 
						<th><%=domainInstance.getPropertyCnName("xiugaihou_shouhuo_dizhi") %></th> 
						<th><%=domainInstance.getPropertyCnName("yichang_xinxi") %></th> 
						<th><%=domainInstance.getPropertyCnName("tianmao_kaquan_dikou") %></th> 
						<th><%=domainInstance.getPropertyCnName("jifenbao_dikou") %></th> 
						<th><%=domainInstance.getPropertyCnName("shifou_020_jiaoyi") %></th> 
					</tr> 
				</thead> 
				<% 
					for (int i = 0; i < list.size(); i++) 
						{ 
							OrderListObj o = (OrderListObj) list.get(i); 
				%> 
				<tr> 
					<td> 
						<a href="#" onClick="openBigModalDialog('<%=contextPath%>/<%=basePath%>/Servlet?method=detail4this&<%=o.findKeyColumnName()%>=<%=o.getKeyValue()%>')"> <%=StringUtil.getNotEmptyStr(o.getKeyValue())%> </a> 
					</td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDingdan_bianhao())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getMaijia_huiyuanming())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getMaijia_zhifubao_zhanghao())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getMaijia_yingfu_huokuan())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getMaijia_yingfu_youfei())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getMaijia_zhifu_jifen())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getZong_jin_er())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFandian_jifen())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getMaijia_shiji_zhifu_jin_er())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getMaijia_shiji_zhifu_jifen())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDingdan_zhuangtai())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getMaijia_liuyan())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getShouhouren_xingming())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getShouhuo_dizhi())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getYunsong_fangshi())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getLianxi_dianhua())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getLianxi_shouji())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDingdan_chuangjian_shijian())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDingdan_fukuan_shijian())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBaobei_biaoti())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBaobei_zhonglei())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getWuliu_danhao())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getWuliu_gongsi())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDingdan_beizhu())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBaobei_zongshuliang())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDianpu_id())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDianpu_mingcheng())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDingdan_guanbi_yuanyin())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getSale_fuwufei())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getBuy_fuwufei())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFapiao_taitou())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getShifou_shouji_dingdan())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getFenjieduan_dingdan_xinxi())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getDingjin_paiming())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getXiugaihou_sku())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getXiugaihou_shouhuo_dizhi())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getYichang_xinxi())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getTianmao_kaquan_dikou())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getJifenbao_dikou())%></td> 
					<td><%=StringUtil.getNotEmptyStr(o.getShifou_020_jiaoyi())%></td> 
				</tr> 
				<% 
					} 
				%> 
			</table> 
 
			<!-- 翻页操作栏 --> 
			<jsp:include page="../ToolBar/pagination_toolbar.jsp"> 
				<jsp:param name="basePath" value="<%=basePath%>"/> 
			</jsp:include> 
 
			<% 
				} 
			%> 
		</form>  
 
	</body> 
</html> 
