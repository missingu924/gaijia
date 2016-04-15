<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.ruihua.obj.OrderListObj"%> 
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
		<meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no" />		<title><%=domainInstance.getCnName()%>详情</title> 
		<link href="../css/global.css" rel="stylesheet" type="text/css" /> 
		<link href="../css/table.css" rel="stylesheet" type="text/css" /> 
		<script src="../js/jquery-2.0.3.min.js"></script> 
		<script src="../js/utils.js"></script> 
	</head> 
	<body> 
		<!-- 表格标题 --> 
		<table width="600" align="center" class="title_table"> 
			<tr> 
				<td> 
					<img src="../images/svg/heavy/green/list.png" width="18" height="18" align="absmiddle"> 
					&nbsp;&nbsp;<%=domainInstance.getCnName()%>信息 
				</td> 
			</tr> 
		</table> 
		<!-- 详细信息 --> 
		<table width="600" align="center" class="detail_table detail_table-bordered detail_table-striped"> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("id") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getId())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dingdan_bianhao") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_bianhao())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("maijia_huiyuanming") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_huiyuanming())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("maijia_zhifubao_zhanghao") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_zhifubao_zhanghao())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("maijia_yingfu_huokuan") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_yingfu_huokuan())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("maijia_yingfu_youfei") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_yingfu_youfei())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("maijia_zhifu_jifen") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_zhifu_jifen())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("zong_jin_er") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getZong_jin_er())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fandian_jifen") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFandian_jifen())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("maijia_shiji_zhifu_jin_er") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_shiji_zhifu_jin_er())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("maijia_shiji_zhifu_jifen") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_shiji_zhifu_jifen())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dingdan_zhuangtai") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_zhuangtai())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("maijia_liuyan") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_liuyan())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("shouhouren_xingming") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getShouhouren_xingming())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("shouhuo_dizhi") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getShouhuo_dizhi())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("yunsong_fangshi") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getYunsong_fangshi())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("lianxi_dianhua") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getLianxi_dianhua())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("lianxi_shouji") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getLianxi_shouji())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dingdan_chuangjian_shijian") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_chuangjian_shijian())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dingdan_fukuan_shijian") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_fukuan_shijian())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("baobei_biaoti") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBaobei_biaoti())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("baobei_zhonglei") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBaobei_zhonglei())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("wuliu_danhao") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getWuliu_danhao())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("wuliu_gongsi") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getWuliu_gongsi())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dingdan_beizhu") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_beizhu())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("baobei_zongshuliang") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBaobei_zongshuliang())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dianpu_id") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDianpu_id())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dianpu_mingcheng") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDianpu_mingcheng())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dingdan_guanbi_yuanyin") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_guanbi_yuanyin())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("sale_fuwufei") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getSale_fuwufei())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("buy_fuwufei") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getBuy_fuwufei())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fapiao_taitou") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFapiao_taitou())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("shifou_shouji_dingdan") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getShifou_shouji_dingdan())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("fenjieduan_dingdan_xinxi") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getFenjieduan_dingdan_xinxi())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("dingjin_paiming") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getDingjin_paiming())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("xiugaihou_sku") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getXiugaihou_sku())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("xiugaihou_shouhuo_dizhi") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getXiugaihou_shouhuo_dizhi())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("yichang_xinxi") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getYichang_xinxi())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("tianmao_kaquan_dikou") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getTianmao_kaquan_dikou())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("jifenbao_dikou") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getJifenbao_dikou())%></td> 
			</tr> 
			<tr> 
				<td> 
					<%=domainInstance.getPropertyCnName("shifou_020_jiaoyi") %>: 
				</td> 
				<td><%=StringUtil.getNotEmptyStr(domainInstance.getShifou_020_jiaoyi())%></td> 
			</tr> 
		</table> 
		 
		<!-- 工具栏 --> 
		<jsp:include page="../ToolBar/detail_toolbar.jsp"/> 
	</body> 
</html> 
