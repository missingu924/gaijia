<!DOCTYPE html> 
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage=""%> 
<!-- 引入类 -->  
<%@page import="java.util.List"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wuyg.common.util.StringUtil"%> 
<%@page import="com.inspur.common.dictionary.util.DictionaryUtil"%> 
<%@page import="com.hz.dict.service.DictionaryService"%> 
<%@page import="com.hz.dict.service.IDictionaryService"%> 
<%@page import="com.ruihua.obj.OrderListObj"%> 
<!-- 基本信息 -->  
<% 
	// 上下文路径 
	String contextPath = request.getContextPath(); 
	 
	// 对象实例 
	OrderListObj domainInstance = new OrderListObj(); 
	// 该功能基本路径 
	String basePath = domainInstance.getBasePath(); 
 
	// 如果是修改，则获取对象信息 
	Object domainInstanceObj = request.getAttribute("domainInstance"); 
	if (domainInstanceObj != null) 
	{ 
		domainInstance = (OrderListObj) domainInstanceObj; 
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
		if(!checkNull("id","<%=domainInstance.getPropertyCnName("id")%>")) return false; 
		if(!checkNull("dingdan_bianhao","<%=domainInstance.getPropertyCnName("dingdan_bianhao")%>")) return false; 
		if(!checkNull("maijia_huiyuanming","<%=domainInstance.getPropertyCnName("maijia_huiyuanming")%>")) return false; 
		if(!checkNull("maijia_zhifubao_zhanghao","<%=domainInstance.getPropertyCnName("maijia_zhifubao_zhanghao")%>")) return false; 
		if(!checkNull("maijia_yingfu_huokuan","<%=domainInstance.getPropertyCnName("maijia_yingfu_huokuan")%>")) return false; 
		if(!checkNull("maijia_yingfu_youfei","<%=domainInstance.getPropertyCnName("maijia_yingfu_youfei")%>")) return false; 
		if(!checkNull("maijia_zhifu_jifen","<%=domainInstance.getPropertyCnName("maijia_zhifu_jifen")%>")) return false; 
		if(!checkNull("zong_jin_er","<%=domainInstance.getPropertyCnName("zong_jin_er")%>")) return false; 
		if(!checkNull("fandian_jifen","<%=domainInstance.getPropertyCnName("fandian_jifen")%>")) return false; 
		if(!checkNull("maijia_shiji_zhifu_jin_er","<%=domainInstance.getPropertyCnName("maijia_shiji_zhifu_jin_er")%>")) return false; 
		if(!checkNull("maijia_shiji_zhifu_jifen","<%=domainInstance.getPropertyCnName("maijia_shiji_zhifu_jifen")%>")) return false; 
		if(!checkNull("dingdan_zhuangtai","<%=domainInstance.getPropertyCnName("dingdan_zhuangtai")%>")) return false; 
		if(!checkNull("maijia_liuyan","<%=domainInstance.getPropertyCnName("maijia_liuyan")%>")) return false; 
		if(!checkNull("shouhouren_xingming","<%=domainInstance.getPropertyCnName("shouhouren_xingming")%>")) return false; 
		if(!checkNull("shouhuo_dizhi","<%=domainInstance.getPropertyCnName("shouhuo_dizhi")%>")) return false; 
		if(!checkNull("yunsong_fangshi","<%=domainInstance.getPropertyCnName("yunsong_fangshi")%>")) return false; 
		if(!checkNull("lianxi_dianhua","<%=domainInstance.getPropertyCnName("lianxi_dianhua")%>")) return false; 
		if(!checkNull("lianxi_shouji","<%=domainInstance.getPropertyCnName("lianxi_shouji")%>")) return false; 
		if(!checkNull("dingdan_chuangjian_shijian","<%=domainInstance.getPropertyCnName("dingdan_chuangjian_shijian")%>")) return false; 
		if(!checkNull("dingdan_fukuan_shijian","<%=domainInstance.getPropertyCnName("dingdan_fukuan_shijian")%>")) return false; 
		if(!checkNull("baobei_biaoti","<%=domainInstance.getPropertyCnName("baobei_biaoti")%>")) return false; 
		if(!checkNull("baobei_zhonglei","<%=domainInstance.getPropertyCnName("baobei_zhonglei")%>")) return false; 
		if(!checkNull("wuliu_danhao","<%=domainInstance.getPropertyCnName("wuliu_danhao")%>")) return false; 
		if(!checkNull("wuliu_gongsi","<%=domainInstance.getPropertyCnName("wuliu_gongsi")%>")) return false; 
		if(!checkNull("dingdan_beizhu","<%=domainInstance.getPropertyCnName("dingdan_beizhu")%>")) return false; 
		if(!checkNull("baobei_zongshuliang","<%=domainInstance.getPropertyCnName("baobei_zongshuliang")%>")) return false; 
		if(!checkNull("dianpu_id","<%=domainInstance.getPropertyCnName("dianpu_id")%>")) return false; 
		if(!checkNull("dianpu_mingcheng","<%=domainInstance.getPropertyCnName("dianpu_mingcheng")%>")) return false; 
		if(!checkNull("dingdan_guanbi_yuanyin","<%=domainInstance.getPropertyCnName("dingdan_guanbi_yuanyin")%>")) return false; 
		if(!checkNull("sale_fuwufei","<%=domainInstance.getPropertyCnName("sale_fuwufei")%>")) return false; 
		if(!checkNull("buy_fuwufei","<%=domainInstance.getPropertyCnName("buy_fuwufei")%>")) return false; 
		if(!checkNull("fapiao_taitou","<%=domainInstance.getPropertyCnName("fapiao_taitou")%>")) return false; 
		if(!checkNull("shifou_shouji_dingdan","<%=domainInstance.getPropertyCnName("shifou_shouji_dingdan")%>")) return false; 
		if(!checkNull("fenjieduan_dingdan_xinxi","<%=domainInstance.getPropertyCnName("fenjieduan_dingdan_xinxi")%>")) return false; 
		if(!checkNull("dingjin_paiming","<%=domainInstance.getPropertyCnName("dingjin_paiming")%>")) return false; 
		if(!checkNull("xiugaihou_sku","<%=domainInstance.getPropertyCnName("xiugaihou_sku")%>")) return false; 
		if(!checkNull("xiugaihou_shouhuo_dizhi","<%=domainInstance.getPropertyCnName("xiugaihou_shouhuo_dizhi")%>")) return false; 
		if(!checkNull("yichang_xinxi","<%=domainInstance.getPropertyCnName("yichang_xinxi")%>")) return false; 
		if(!checkNull("tianmao_kaquan_dikou","<%=domainInstance.getPropertyCnName("tianmao_kaquan_dikou")%>")) return false; 
		if(!checkNull("jifenbao_dikou","<%=domainInstance.getPropertyCnName("jifenbao_dikou")%>")) return false; 
		if(!checkNull("shifou_020_jiaoyi","<%=domainInstance.getPropertyCnName("shifou_020_jiaoyi")%>")) return false; 
					 
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
						<%=domainInstance.getPropertyCnName("dingdan_bianhao") %>: 
					</td> 
					<td> 
						<input name="dingdan_bianhao" type="text" id="dingdan_bianhao" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_bianhao(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("maijia_huiyuanming") %>: 
					</td> 
					<td> 
						<input name="maijia_huiyuanming" type="text" id="maijia_huiyuanming" value="<%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_huiyuanming(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("maijia_zhifubao_zhanghao") %>: 
					</td> 
					<td> 
						<input name="maijia_zhifubao_zhanghao" type="text" id="maijia_zhifubao_zhanghao" value="<%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_zhifubao_zhanghao(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("maijia_yingfu_huokuan") %>: 
					</td> 
					<td> 
						<input name="maijia_yingfu_huokuan" type="text" id="maijia_yingfu_huokuan" value="<%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_yingfu_huokuan(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("maijia_yingfu_youfei") %>: 
					</td> 
					<td> 
						<input name="maijia_yingfu_youfei" type="text" id="maijia_yingfu_youfei" value="<%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_yingfu_youfei(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("maijia_zhifu_jifen") %>: 
					</td> 
					<td> 
						<input name="maijia_zhifu_jifen" type="text" id="maijia_zhifu_jifen" value="<%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_zhifu_jifen(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("zong_jin_er") %>: 
					</td> 
					<td> 
						<input name="zong_jin_er" type="text" id="zong_jin_er" value="<%=StringUtil.getNotEmptyStr(domainInstance.getZong_jin_er(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fandian_jifen") %>: 
					</td> 
					<td> 
						<input name="fandian_jifen" type="text" id="fandian_jifen" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFandian_jifen(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("maijia_shiji_zhifu_jin_er") %>: 
					</td> 
					<td> 
						<input name="maijia_shiji_zhifu_jin_er" type="text" id="maijia_shiji_zhifu_jin_er" value="<%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_shiji_zhifu_jin_er(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("maijia_shiji_zhifu_jifen") %>: 
					</td> 
					<td> 
						<input name="maijia_shiji_zhifu_jifen" type="text" id="maijia_shiji_zhifu_jifen" value="<%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_shiji_zhifu_jifen(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dingdan_zhuangtai") %>: 
					</td> 
					<td> 
						<input name="dingdan_zhuangtai" type="text" id="dingdan_zhuangtai" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_zhuangtai(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("maijia_liuyan") %>: 
					</td> 
					<td> 
						<input name="maijia_liuyan" type="text" id="maijia_liuyan" value="<%=StringUtil.getNotEmptyStr(domainInstance.getMaijia_liuyan(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("shouhouren_xingming") %>: 
					</td> 
					<td> 
						<input name="shouhouren_xingming" type="text" id="shouhouren_xingming" value="<%=StringUtil.getNotEmptyStr(domainInstance.getShouhouren_xingming(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("shouhuo_dizhi") %>: 
					</td> 
					<td> 
						<input name="shouhuo_dizhi" type="text" id="shouhuo_dizhi" value="<%=StringUtil.getNotEmptyStr(domainInstance.getShouhuo_dizhi(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("yunsong_fangshi") %>: 
					</td> 
					<td> 
						<input name="yunsong_fangshi" type="text" id="yunsong_fangshi" value="<%=StringUtil.getNotEmptyStr(domainInstance.getYunsong_fangshi(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("lianxi_dianhua") %>: 
					</td> 
					<td> 
						<input name="lianxi_dianhua" type="text" id="lianxi_dianhua" value="<%=StringUtil.getNotEmptyStr(domainInstance.getLianxi_dianhua(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("lianxi_shouji") %>: 
					</td> 
					<td> 
						<input name="lianxi_shouji" type="text" id="lianxi_shouji" value="<%=StringUtil.getNotEmptyStr(domainInstance.getLianxi_shouji(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dingdan_chuangjian_shijian") %>: 
					</td> 
					<td> 
						<input name="dingdan_chuangjian_shijian" type="text" id="dingdan_chuangjian_shijian" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_chuangjian_shijian(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dingdan_fukuan_shijian") %>: 
					</td> 
					<td> 
						<input name="dingdan_fukuan_shijian" type="text" id="dingdan_fukuan_shijian" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_fukuan_shijian(),"")%>" size="20" onFocus="WdatePicker({isShowClear:false,readOnly:false,highLineWeekDay:true,dateFmt:'yyyy-MM-dd'})" > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("baobei_biaoti") %>: 
					</td> 
					<td> 
						<input name="baobei_biaoti" type="text" id="baobei_biaoti" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBaobei_biaoti(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("baobei_zhonglei") %>: 
					</td> 
					<td> 
						<input name="baobei_zhonglei" type="text" id="baobei_zhonglei" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBaobei_zhonglei(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("wuliu_danhao") %>: 
					</td> 
					<td> 
						<input name="wuliu_danhao" type="text" id="wuliu_danhao" value="<%=StringUtil.getNotEmptyStr(domainInstance.getWuliu_danhao(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("wuliu_gongsi") %>: 
					</td> 
					<td> 
						<input name="wuliu_gongsi" type="text" id="wuliu_gongsi" value="<%=StringUtil.getNotEmptyStr(domainInstance.getWuliu_gongsi(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dingdan_beizhu") %>: 
					</td> 
					<td> 
						<input name="dingdan_beizhu" type="text" id="dingdan_beizhu" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_beizhu(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("baobei_zongshuliang") %>: 
					</td> 
					<td> 
						<input name="baobei_zongshuliang" type="text" id="baobei_zongshuliang" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBaobei_zongshuliang(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dianpu_id") %>: 
					</td> 
					<td> 
						<input name="dianpu_id" type="text" id="dianpu_id" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDianpu_id(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dianpu_mingcheng") %>: 
					</td> 
					<td> 
						<input name="dianpu_mingcheng" type="text" id="dianpu_mingcheng" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDianpu_mingcheng(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dingdan_guanbi_yuanyin") %>: 
					</td> 
					<td> 
						<input name="dingdan_guanbi_yuanyin" type="text" id="dingdan_guanbi_yuanyin" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDingdan_guanbi_yuanyin(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("sale_fuwufei") %>: 
					</td> 
					<td> 
						<input name="sale_fuwufei" type="text" id="sale_fuwufei" value="<%=StringUtil.getNotEmptyStr(domainInstance.getSale_fuwufei(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("buy_fuwufei") %>: 
					</td> 
					<td> 
						<input name="buy_fuwufei" type="text" id="buy_fuwufei" value="<%=StringUtil.getNotEmptyStr(domainInstance.getBuy_fuwufei(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fapiao_taitou") %>: 
					</td> 
					<td> 
						<input name="fapiao_taitou" type="text" id="fapiao_taitou" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFapiao_taitou(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("shifou_shouji_dingdan") %>: 
					</td> 
					<td> 
						<input name="shifou_shouji_dingdan" type="text" id="shifou_shouji_dingdan" value="<%=StringUtil.getNotEmptyStr(domainInstance.getShifou_shouji_dingdan(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("fenjieduan_dingdan_xinxi") %>: 
					</td> 
					<td> 
						<input name="fenjieduan_dingdan_xinxi" type="text" id="fenjieduan_dingdan_xinxi" value="<%=StringUtil.getNotEmptyStr(domainInstance.getFenjieduan_dingdan_xinxi(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("dingjin_paiming") %>: 
					</td> 
					<td> 
						<input name="dingjin_paiming" type="text" id="dingjin_paiming" value="<%=StringUtil.getNotEmptyStr(domainInstance.getDingjin_paiming(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("xiugaihou_sku") %>: 
					</td> 
					<td> 
						<input name="xiugaihou_sku" type="text" id="xiugaihou_sku" value="<%=StringUtil.getNotEmptyStr(domainInstance.getXiugaihou_sku(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("xiugaihou_shouhuo_dizhi") %>: 
					</td> 
					<td> 
						<input name="xiugaihou_shouhuo_dizhi" type="text" id="xiugaihou_shouhuo_dizhi" value="<%=StringUtil.getNotEmptyStr(domainInstance.getXiugaihou_shouhuo_dizhi(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("yichang_xinxi") %>: 
					</td> 
					<td> 
						<input name="yichang_xinxi" type="text" id="yichang_xinxi" value="<%=StringUtil.getNotEmptyStr(domainInstance.getYichang_xinxi(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("tianmao_kaquan_dikou") %>: 
					</td> 
					<td> 
						<input name="tianmao_kaquan_dikou" type="text" id="tianmao_kaquan_dikou" value="<%=StringUtil.getNotEmptyStr(domainInstance.getTianmao_kaquan_dikou(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("jifenbao_dikou") %>: 
					</td> 
					<td> 
						<input name="jifenbao_dikou" type="text" id="jifenbao_dikou" value="<%=StringUtil.getNotEmptyStr(domainInstance.getJifenbao_dikou(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
				<tr> 
					<td> 
						<%=domainInstance.getPropertyCnName("shifou_020_jiaoyi") %>: 
					</td> 
					<td> 
						<input name="shifou_020_jiaoyi" type="text" id="shifou_020_jiaoyi" value="<%=StringUtil.getNotEmptyStr(domainInstance.getShifou_020_jiaoyi(),"")%>" size="20"  > 
						<font color="red">*</font> 
					</td> 
				</tr> 
			</table> 
			 
			<!-- 工具栏 --> 
			<jsp:include page="../ToolBar/addOrModify_toolbar.jsp" /> 
		</form> 
	</body> 
</html> 
