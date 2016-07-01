package com.ruihua.obj;

import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;
import com.wuyg.common.util.StringUtil;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import com.alibaba.fastjson.JSON;

public class OrderListObj extends BaseDbObj
{
	private Long id;
	private String dingdan_bianhao;
	private String maijia_huiyuanming;
	private String maijia_zhifubao_zhanghao;
	private String maijia_yingfu_huokuan;
	private String maijia_yingfu_youfei;
	private String maijia_zhifu_jifen;
	private Double zong_jin_er;
	private Double fandian_jifen;
	private Double maijia_shiji_zhifu_jin_er;
	private Double maijia_shiji_zhifu_jifen;
	private String dingdan_zhuangtai;
	private String maijia_liuyan;
	private String shouhouren_xingming;
	private String shouhuo_dizhi;
	private String yunsong_fangshi;
	private String lianxi_dianhua;
	private String lianxi_shouji;
	private Timestamp dingdan_chuangjian_shijian;
	private Timestamp dingdan_fukuan_shijian;
	private String baobei_biaoti;
	private String baobei_zhonglei;
	private String wuliu_danhao;
	private String wuliu_gongsi;
	private String dingdan_beizhu;
	private String baobei_zongshuliang;
	private String dianpu_id;
	private String dianpu_mingcheng;
	private String dingdan_guanbi_yuanyin;
	private String sale_fuwufei;
	private String buy_fuwufei;
	private String fapiao_taitou;
	private String shifou_shouji_dingdan;
	private String fenjieduan_dingdan_xinxi;
	private String dingjin_paiming;
	private String xiugaihou_sku;
	private String xiugaihou_shouhuo_dizhi;
	private String yichang_xinxi;
	private String tianmao_kaquan_dikou;
	private String jifenbao_dikou;
	private String shifou_020_jiaoyi;

	@Override
	public String findKeyColumnName()
	{
		return "id";
	}

	@Override
	public String findParentKeyColumnName()
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findTableName()
	{
		return "order_list";
	}

	@Override
	public String findDefaultOrderBy()
	{
		return super.findDefaultOrderBy();
	}

	@Override
	public List<String> findUniqueIndexProperties()
	{
		List<String> l = new ArrayList<String>();
		l.add("dingdan_bianhao");
		return l;
	}

	@Override
	public String getBasePath()
	{
		return "OrderList";
	}

	@Override
	public String getCnName()
	{
		return "订单主表";
	}

	public LinkedHashMap<String, String> findProperties()
	{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		pros.put("id", "编号");
		pros.put("dingdan_bianhao", "订单编号");
		pros.put("maijia_huiyuanming", "买家会员名");
		pros.put("maijia_zhifubao_zhanghao", "买家支付宝账号");
		pros.put("maijia_yingfu_huokuan", "买家应付货款");
		pros.put("maijia_yingfu_youfei", "买家应付邮费");
		pros.put("maijia_zhifu_jifen", "买家支付积分");
		pros.put("zong_jin_er", "总金额");
		pros.put("fandian_jifen", "返点积分");
		pros.put("maijia_shiji_zhifu_jin_er", "买家实际支付金额");
		pros.put("maijia_shiji_zhifu_jifen", "买家实际支付积分");
		pros.put("dingdan_zhuangtai", "订单状态");
		pros.put("maijia_liuyan", "买家留言");
		pros.put("shouhouren_xingming", "收货人姓名");
		pros.put("shouhuo_dizhi", "收货地址 ");
		pros.put("yunsong_fangshi", "运送方式");
		pros.put("lianxi_dianhua", "联系电话 ");
		pros.put("lianxi_shouji", "联系手机");
		pros.put("dingdan_chuangjian_shijian", "订单创建时间");
		pros.put("dingdan_fukuan_shijian", "订单付款时间 ");
		pros.put("baobei_biaoti", "宝贝标题 ");
		pros.put("baobei_zhonglei", "宝贝种类 ");
		pros.put("wuliu_danhao", "物流单号 ");
		pros.put("wuliu_gongsi", "物流公司");
		pros.put("dingdan_beizhu", "订单备注");
		pros.put("baobei_zongshuliang", "宝贝总数量");
		pros.put("dianpu_id", "店铺Id");
		pros.put("dianpu_mingcheng", "店铺名称");
		pros.put("dingdan_guanbi_yuanyin", "订单关闭原因");
		pros.put("sale_fuwufei", "卖家服务费");
		pros.put("buy_fuwufei", "买家服务费");
		pros.put("fapiao_taitou", "发票抬头");
		pros.put("shifou_shouji_dingdan", "是否手机订单");
		pros.put("fenjieduan_dingdan_xinxi", "分阶段订单信息");
		pros.put("dingjin_paiming", "定金排名");
		pros.put("xiugaihou_sku", "修改后的sku");
		pros.put("xiugaihou_shouhuo_dizhi", "修改后的收货地址");
		pros.put("yichang_xinxi", "异常信息");
		pros.put("tianmao_kaquan_dikou", "天猫卡券抵扣");
		pros.put("jifenbao_dikou", "集分宝抵扣");
		pros.put("shifou_020_jiaoyi", "是否是O2O交易");

		return pros;
	}

	public Long getId()
	{
		return id;
	}

	public void setId(Long id)
	{
		this.id = id;
	}

	public String getDingdan_bianhao()
	{
		return dingdan_bianhao;
	}

	public void setDingdan_bianhao(String dingdan_bianhao)
	{
		if (!StringUtil.isEmpty(dingdan_bianhao))
		{
			this.dingdan_bianhao = dingdan_bianhao.replaceAll("\"", "");
		}
	}

	public String getMaijia_huiyuanming()
	{
		return maijia_huiyuanming;
	}

	public void setMaijia_huiyuanming(String maijia_huiyuanming)
	{
		this.maijia_huiyuanming = maijia_huiyuanming;
	}

	public String getMaijia_zhifubao_zhanghao()
	{
		return maijia_zhifubao_zhanghao;
	}

	public void setMaijia_zhifubao_zhanghao(String maijia_zhifubao_zhanghao)
	{
		this.maijia_zhifubao_zhanghao = maijia_zhifubao_zhanghao;
	}

	public String getMaijia_yingfu_huokuan()
	{
		return maijia_yingfu_huokuan;
	}

	public void setMaijia_yingfu_huokuan(String maijia_yingfu_huokuan)
	{
		this.maijia_yingfu_huokuan = maijia_yingfu_huokuan;
	}

	public String getMaijia_yingfu_youfei()
	{
		return maijia_yingfu_youfei;
	}

	public void setMaijia_yingfu_youfei(String maijia_yingfu_youfei)
	{
		this.maijia_yingfu_youfei = maijia_yingfu_youfei;
	}

	public String getMaijia_zhifu_jifen()
	{
		return maijia_zhifu_jifen;
	}

	public void setMaijia_zhifu_jifen(String maijia_zhifu_jifen)
	{
		this.maijia_zhifu_jifen = maijia_zhifu_jifen;
	}

	public Double getZong_jin_er()
	{
		return zong_jin_er;
	}

	public void setZong_jin_er(Double zong_jin_er)
	{
		this.zong_jin_er = zong_jin_er;
	}

	public Double getFandian_jifen()
	{
		return fandian_jifen;
	}

	public void setFandian_jifen(Double fandian_jifen)
	{
		this.fandian_jifen = fandian_jifen;
	}

	public Double getMaijia_shiji_zhifu_jin_er()
	{
		return maijia_shiji_zhifu_jin_er;
	}

	public void setMaijia_shiji_zhifu_jin_er(Double maijia_shiji_zhifu_jin_er)
	{
		this.maijia_shiji_zhifu_jin_er = maijia_shiji_zhifu_jin_er;
	}

	public Double getMaijia_shiji_zhifu_jifen()
	{
		return maijia_shiji_zhifu_jifen;
	}

	public void setMaijia_shiji_zhifu_jifen(Double maijia_shiji_zhifu_jifen)
	{
		this.maijia_shiji_zhifu_jifen = maijia_shiji_zhifu_jifen;
	}

	public String getDingdan_zhuangtai()
	{
		return dingdan_zhuangtai;
	}

	public void setDingdan_zhuangtai(String dingdan_zhuangtai)
	{
		this.dingdan_zhuangtai = dingdan_zhuangtai;
	}

	public String getMaijia_liuyan()
	{
		return maijia_liuyan;
	}

	public void setMaijia_liuyan(String maijia_liuyan)
	{
		this.maijia_liuyan = maijia_liuyan;
	}

	public String getShouhouren_xingming()
	{
		return shouhouren_xingming;
	}

	public void setShouhouren_xingming(String shouhouren_xingming)
	{
		this.shouhouren_xingming = shouhouren_xingming;
	}

	public String getShouhuo_dizhi()
	{
		return shouhuo_dizhi;
	}

	public void setShouhuo_dizhi(String shouhuo_dizhi)
	{
		this.shouhuo_dizhi = shouhuo_dizhi;
	}

	public String getYunsong_fangshi()
	{
		return yunsong_fangshi;
	}

	public void setYunsong_fangshi(String yunsong_fangshi)
	{
		this.yunsong_fangshi = yunsong_fangshi;
	}

	public String getLianxi_dianhua()
	{
		return lianxi_dianhua;
	}

	public void setLianxi_dianhua(String lianxi_dianhua)
	{
		this.lianxi_dianhua = lianxi_dianhua;
	}

	public String getLianxi_shouji()
	{
		return lianxi_shouji;
	}

	public void setLianxi_shouji(String lianxi_shouji)
	{
		if (!StringUtil.isEmpty(lianxi_shouji))
		{
			this.lianxi_shouji = lianxi_shouji.replaceAll("'", "");
		}

	}

	public Timestamp getDingdan_chuangjian_shijian()
	{
		return dingdan_chuangjian_shijian;
	}

	public void setDingdan_chuangjian_shijian(Timestamp dingdan_chuangjian_shijian)
	{
		this.dingdan_chuangjian_shijian = dingdan_chuangjian_shijian;
	}

	public Timestamp getDingdan_fukuan_shijian()
	{
		return dingdan_fukuan_shijian;
	}

	public void setDingdan_fukuan_shijian(Timestamp dingdan_fukuan_shijian)
	{
		this.dingdan_fukuan_shijian = dingdan_fukuan_shijian;
	}

	public String getBaobei_biaoti()
	{
		return baobei_biaoti;
	}

	public void setBaobei_biaoti(String baobei_biaoti)
	{
		this.baobei_biaoti = baobei_biaoti;
	}

	public String getBaobei_zhonglei()
	{
		return baobei_zhonglei;
	}

	public void setBaobei_zhonglei(String baobei_zhonglei)
	{
		this.baobei_zhonglei = baobei_zhonglei;
	}

	public String getWuliu_danhao()
	{
		return wuliu_danhao;
	}

	public void setWuliu_danhao(String wuliu_danhao)
	{
		this.wuliu_danhao = wuliu_danhao;
	}

	public String getWuliu_gongsi()
	{
		return wuliu_gongsi;
	}

	public void setWuliu_gongsi(String wuliu_gongsi)
	{
		this.wuliu_gongsi = wuliu_gongsi;
	}

	public String getDingdan_beizhu()
	{
		return dingdan_beizhu;
	}

	public void setDingdan_beizhu(String dingdan_beizhu)
	{
		if (!StringUtil.isEmpty(dingdan_beizhu))
		{
			this.dingdan_beizhu = dingdan_beizhu.replaceAll("'", "");
		}
	}

	public String getBaobei_zongshuliang()
	{
		return baobei_zongshuliang;
	}

	public void setBaobei_zongshuliang(String baobei_zongshuliang)
	{
		this.baobei_zongshuliang = baobei_zongshuliang;
	}

	public String getDianpu_id()
	{
		return dianpu_id;
	}

	public void setDianpu_id(String dianpu_id)
	{
		this.dianpu_id = dianpu_id;
	}

	public String getDianpu_mingcheng()
	{
		return dianpu_mingcheng;
	}

	public void setDianpu_mingcheng(String dianpu_mingcheng)
	{
		this.dianpu_mingcheng = dianpu_mingcheng;
	}

	public String getDingdan_guanbi_yuanyin()
	{
		return dingdan_guanbi_yuanyin;
	}

	public void setDingdan_guanbi_yuanyin(String dingdan_guanbi_yuanyin)
	{
		this.dingdan_guanbi_yuanyin = dingdan_guanbi_yuanyin;
	}

	public String getSale_fuwufei()
	{
		return sale_fuwufei;
	}

	public void setSale_fuwufei(String sale_fuwufei)
	{
		this.sale_fuwufei = sale_fuwufei;
	}

	public String getBuy_fuwufei()
	{
		return buy_fuwufei;
	}

	public void setBuy_fuwufei(String buy_fuwufei)
	{
		this.buy_fuwufei = buy_fuwufei;
	}

	public String getFapiao_taitou()
	{
		return fapiao_taitou;
	}

	public void setFapiao_taitou(String fapiao_taitou)
	{
		this.fapiao_taitou = fapiao_taitou;
	}

	public String getShifou_shouji_dingdan()
	{
		return shifou_shouji_dingdan;
	}

	public void setShifou_shouji_dingdan(String shifou_shouji_dingdan)
	{
		this.shifou_shouji_dingdan = shifou_shouji_dingdan;
	}

	public String getFenjieduan_dingdan_xinxi()
	{
		return fenjieduan_dingdan_xinxi;
	}

	public void setFenjieduan_dingdan_xinxi(String fenjieduan_dingdan_xinxi)
	{
		this.fenjieduan_dingdan_xinxi = fenjieduan_dingdan_xinxi;
	}

	public String getDingjin_paiming()
	{
		return dingjin_paiming;
	}

	public void setDingjin_paiming(String dingjin_paiming)
	{
		this.dingjin_paiming = dingjin_paiming;
	}

	public String getXiugaihou_sku()
	{
		return xiugaihou_sku;
	}

	public void setXiugaihou_sku(String xiugaihou_sku)
	{
		this.xiugaihou_sku = xiugaihou_sku;
	}

	public String getXiugaihou_shouhuo_dizhi()
	{
		return xiugaihou_shouhuo_dizhi;
	}

	public void setXiugaihou_shouhuo_dizhi(String xiugaihou_shouhuo_dizhi)
	{
		this.xiugaihou_shouhuo_dizhi = xiugaihou_shouhuo_dizhi;
	}

	public String getYichang_xinxi()
	{
		return yichang_xinxi;
	}

	public void setYichang_xinxi(String yichang_xinxi)
	{
		this.yichang_xinxi = yichang_xinxi;
	}

	public String getTianmao_kaquan_dikou()
	{
		return tianmao_kaquan_dikou;
	}

	public void setTianmao_kaquan_dikou(String tianmao_kaquan_dikou)
	{
		this.tianmao_kaquan_dikou = tianmao_kaquan_dikou;
	}

	public String getJifenbao_dikou()
	{
		return jifenbao_dikou;
	}

	public void setJifenbao_dikou(String jifenbao_dikou)
	{
		this.jifenbao_dikou = jifenbao_dikou;
	}

	public String getShifou_020_jiaoyi()
	{
		return shifou_020_jiaoyi;
	}

	public void setShifou_020_jiaoyi(String shifou_020_jiaoyi)
	{
		this.shifou_020_jiaoyi = shifou_020_jiaoyi;
	}

	@Override
	public String toString()
	{
		return JSON.toJSONString(this);
	}
}
