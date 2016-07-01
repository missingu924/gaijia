package com.u8.obj;

import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;
import java.util.LinkedHashMap;
import java.util.Arrays;
import java.util.List;
import com.alibaba.fastjson.JSON;

public class VPurbillvouchsObj extends BaseDbObj
{
	private Long pbvid;
	private String cpbvcode;
	private Long id;
	private String cinvcode;
	private String cinvname;
	private Double icost;
	private Double ipbvquantity;
	private Double isum;

	private String purcharsePriceMainId;
	private Double priceLimit;
	private String checkResult;

	public final String CHECK_RESULT_OVER = "高于采购限价";// >采购限价
	public final String CHECK_RESULT_NOT_OVER = "正常";// <=采购限价
	public final String CHECK_RESULT_NO_RULE = "没有限价规则";// 该存货没有采购限价规则

	@Override
	public String findKeyColumnName()
	{
		return "pbvid";
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
		return " (select t1.PBVID,t2.cPBVCode,t1.ID,t1.cInvCode,t3.cInvName,t1.iCost,t1.iPBVQuantity,iSum " + " from  " + " PurBillVouchs t1 " + " left join " + " PurBillVouch t2 " + " on t1.PBVID=t2.PBVID " + " left join " + " inventory t3 " + " on t1.cInvCode=t3.cInvCode ) t";
	}

	@Override
	public String findDefaultOrderBy()
	{
		return super.findDefaultOrderBy();
	}

	@Override
	public String getBasePath()
	{
		return "VPurbillvouchs";
	}

	@Override
	public String getCnName()
	{
		return "采够发票";
	}

	@Override
	public List<String> findUniqueIndexProperties()
	{
		return Arrays.asList(new String[]
		{ "null" });
	}

	public LinkedHashMap<String, String> findProperties()
	{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		pros.put("pbvid", "采购发票主表标识");
		pros.put("cpbvcode", "采购发票号");
		pros.put("id", "采购发票子表标识");
		pros.put("cinvcode", "存货编码");
		pros.put("cinvname", "存货名称");
		pros.put("icost", "本币单价");
		pros.put("ipbvquantity", "数量");
		pros.put("isum", "本币价税合计");
		pros.put("priceLimit", "采购限价");
		pros.put("checkResult", "核查结果");
		pros.put("purcharsePriceMainId", "采购限价表");
		
		return pros;
	}

	public Long getPbvid()
	{
		return pbvid;
	}

	public void setPbvid(Long pbvid)
	{
		this.pbvid = pbvid;
	}

	public Double getPriceLimit()
	{
		return priceLimit;
	}

	public void setPriceLimit(Double priceLimit)
	{
		this.priceLimit = priceLimit;
	}

	public String getCpbvcode()
	{
		return cpbvcode;
	}

	public String getCheckResult()
	{
		return checkResult;
	}

	public void setCheckResult(String checkResult)
	{
		this.checkResult = checkResult;
	}

	public String getPurcharsePriceMainId()
	{
		return purcharsePriceMainId;
	}

	public void setPurcharsePriceMainId(String purcharsePriceMainId)
	{
		this.purcharsePriceMainId = purcharsePriceMainId;
	}

	public void setCpbvcode(String cpbvcode)
	{
		this.cpbvcode = cpbvcode;
	}

	public Long getId()
	{
		return id;
	}

	public void setId(Long id)
	{
		this.id = id;
	}

	public String getCinvcode()
	{
		return cinvcode;
	}

	public void setCinvcode(String cinvcode)
	{
		this.cinvcode = cinvcode;
	}

	public String getCinvname()
	{
		return cinvname;
	}

	public void setCinvname(String cinvname)
	{
		this.cinvname = cinvname;
	}

	public Double getIcost()
	{
		return icost;
	}

	public void setIcost(Double icost)
	{
		this.icost = icost;
	}

	public Double getIpbvquantity()
	{
		return ipbvquantity;
	}

	public void setIpbvquantity(Double ipbvquantity)
	{
		this.ipbvquantity = ipbvquantity;
	}

	public Double getIsum()
	{
		return isum;
	}

	public void setIsum(Double isum)
	{
		this.isum = isum;
	}

	@Override
	public String toString()
	{
		return JSON.toJSONString(this);
	}
}
