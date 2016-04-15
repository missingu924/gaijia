package com.ruihua.obj;

import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;
import com.wuyg.common.util.StringUtil;

import java.util.LinkedHashMap;
import com.alibaba.fastjson.JSON;

public class OrderListDetailObj extends BaseDbObj
{
	private Long id;
	private String dingdan_bianhao;
	private String biaoti;
	private Double jiage;
	private Double goumai_shuliang;
	private String waibuxitong_bianhao;
	private String shangpin_shuxing;
	private String taocan_xinxi;
	private String beizhu;
	private String dingdan_zhuangtai;
	private String shangjia_bianma;
	private String csocode;
	private String cinvcode;

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
		return "order_list_detail";
	}

	@Override
	public String findDefaultOrderBy()
	{
		return super.findDefaultOrderBy();
	}

	@Override
	public String getBasePath()
	{
		return "OrderListDetail";
	}

	@Override
	public String getCnName()
	{
		return "订单详情";
	}

	public LinkedHashMap<String, String> getProperties()
	{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		pros.put("id", "编号");
		pros.put("dingdan_bianhao", "订单编号");
		pros.put("biaoti", "标题");
		pros.put("jiage", "价格");
		pros.put("goumai_shuliang", "购买数量");
		pros.put("waibuxitong_bianhao", "外部系统编号");
		pros.put("shangpin_shuxing", "商品属性");
		pros.put("taocan_xinxi", "套餐信息");
		pros.put("beizhu", "备注");
		pros.put("dingdan_zhuangtai", "订单状态");
		pros.put("shangjia_bianma", "商家编码");
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

	public String getBiaoti()
	{
		return biaoti;
	}

	public void setBiaoti(String biaoti)
	{
		this.biaoti = biaoti;
	}

	public Double getJiage()
	{
		return jiage;
	}

	public void setJiage(Double jiage)
	{
		this.jiage = jiage;
	}

	public Double getGoumai_shuliang()
	{
		return goumai_shuliang;
	}

	public void setGoumai_shuliang(Double goumai_shuliang)
	{
		this.goumai_shuliang = goumai_shuliang;
	}

	public String getWaibuxitong_bianhao()
	{
		return waibuxitong_bianhao;
	}

	public void setWaibuxitong_bianhao(String waibuxitong_bianhao)
	{
		this.waibuxitong_bianhao = waibuxitong_bianhao;
	}

	public String getShangpin_shuxing()
	{
		return shangpin_shuxing;
	}

	public void setShangpin_shuxing(String shangpin_shuxing)
	{
		this.shangpin_shuxing = shangpin_shuxing;
	}

	public String getTaocan_xinxi()
	{
		return taocan_xinxi;
	}

	public void setTaocan_xinxi(String taocan_xinxi)
	{
		this.taocan_xinxi = taocan_xinxi;
	}

	public String getBeizhu()
	{
		return beizhu;
	}

	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
	}

	public String getDingdan_zhuangtai()
	{
		return dingdan_zhuangtai;
	}

	public void setDingdan_zhuangtai(String dingdan_zhuangtai)
	{
		this.dingdan_zhuangtai = dingdan_zhuangtai;
	}

	public String getShangjia_bianma()
	{
		return shangjia_bianma;
	}

	public void setShangjia_bianma(String shangjia_bianma)
	{
		this.shangjia_bianma = shangjia_bianma;
	}

	public String getCsocode()
	{
		return csocode;
	}

	public void setCsocode(String csocode)
	{
		this.csocode = csocode;
	}

	public String getCinvcode()
	{
		return cinvcode;
	}

	public void setCinvcode(String cinvcode)
	{
		this.cinvcode = cinvcode;
	}

	@Override
	public String toString()
	{
		return JSON.toJSONString(this);
	}
}
