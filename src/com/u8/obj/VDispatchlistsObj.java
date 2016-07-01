package com.u8.obj;

import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;
import com.wuyg.common.dao.DefaultBaseDAO;
import com.wuyg.common.util.TimeUtil;

import java.util.LinkedHashMap;
import com.alibaba.fastjson.JSON;
import com.dispatch.obj.DispatchPriceChangeLogObj;

public class VDispatchlistsObj extends BaseDbObj
{
	private Long autoid;
	private Long dlid;
	private String cdlcode;
	private Timestamp ddate;
	private String cdepcode;
	private String cpersoncode;
	private String ccuscode;
	private String cexch_name;
	private Double iexchrate;
	private Double itaxrate;
	private String cwhcode;
	private String cinvcode;
	private Double iquantity;
	private Double isettlequantity;
	private Double itaxunitprice;
	private Double isum;
	private Double inatunitprice;
	private Double inatsum;
	private String allsettled;// 是否完全开具发票，如果iquantity=isettlequantity则是完全开具了发票

	@Override
	public String findKeyColumnName()
	{
		return "autoid";
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
//		return "v_dispatchlists";
		
		return "(select  t1.AutoID, t1.DLID, t2.cdlcode, t2.dDate, t2.cDepCode, t2.cPersonCode, t2.cCusCode, t2.cexch_name, t2.iExchRate, t2.iTaxRate, t1.cWhCode, t1.cInvCode, t1.iQuantity, t1.iSettleQuantity, t1.iTaxUnitPrice, t1.iSum, t1.iNatUnitPrice, t1.iNatSum from  dispatchlists t1 left join dispatchlist t2 on t1.DLID=t2.DLID) t";
	}

	@Override
	public String findDefaultOrderBy()
	{
		return super.findDefaultOrderBy();
	}

	@Override
	public String getBasePath()
	{
		return "VDispatchlists";
	}

	@Override
	public String getCnName()
	{
		return "发货单";
	}

	public LinkedHashMap<String, String> findProperties()
	{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		// pros.put("autoid", "autoid");
		// pros.put("dlid", "dlid");
		pros.put("cdlcode", "单据编号");
		pros.put("ddate", "单据日期");
		pros.put("cdepcode", "部门");
		pros.put("cpersoncode", "业务员");
		pros.put("ccuscode", "客户");
		pros.put("cexch_name", "币种");
		pros.put("iexchrate", "汇率");
		pros.put("itaxrate", "税率");
		pros.put("cwhcode", "仓库");
		pros.put("cinvcode", "存货");
		pros.put("iquantity", "数量");
		pros.put("isettlequantity", "开票数量");
		pros.put("itaxunitprice", "原币含税单价");
		pros.put("isum", "原币价税合计");
		pros.put("inatunitprice", "本币含税单价");
		pros.put("inatsum", "本币价税合计");
		pros.put("allsettled", "是否已完全开具发票");
		return pros;
	}

	public Long getAutoid()
	{
		return autoid;
	}

	public void setAutoid(Long autoid)
	{
		this.autoid = autoid;
	}

	public String getAllsettled()
	{
		return allsettled;
	}

	public void setAllsettled(String allsettled)
	{
		this.allsettled = allsettled;
	}

	public Long getDlid()
	{
		return dlid;
	}

	public void setDlid(Long dlid)
	{
		this.dlid = dlid;
	}

	public String getCdlcode()
	{
		return cdlcode;
	}

	public void setCdlcode(String cdlcode)
	{
		this.cdlcode = cdlcode;
	}

	public Timestamp getDdate()
	{
		return ddate;
	}

	public void setDdate(Timestamp ddate)
	{
		this.ddate = ddate;
	}

	public String getCdepcode()
	{
		return cdepcode;
	}

	public void setCdepcode(String cdepcode)
	{
		this.cdepcode = cdepcode;
	}

	public String getCpersoncode()
	{
		return cpersoncode;
	}

	public void setCpersoncode(String cpersoncode)
	{
		this.cpersoncode = cpersoncode;
	}

	public String getCcuscode()
	{
		return ccuscode;
	}

	public void setCcuscode(String ccuscode)
	{
		this.ccuscode = ccuscode;
	}

	public String getCexch_name()
	{
		return cexch_name;
	}

	public void setCexch_name(String cexch_name)
	{
		this.cexch_name = cexch_name;
	}

	public Double getIexchrate()
	{
		return iexchrate;
	}

	public void setIexchrate(Double iexchrate)
	{
		this.iexchrate = iexchrate;
	}

	public Double getItaxrate()
	{
		return itaxrate;
	}

	public void setItaxrate(Double itaxrate)
	{
		this.itaxrate = itaxrate;
	}

	public String getCwhcode()
	{
		return cwhcode;
	}

	public void setCwhcode(String cwhcode)
	{
		this.cwhcode = cwhcode;
	}

	public String getCinvcode()
	{
		return cinvcode;
	}

	public void setCinvcode(String cinvcode)
	{
		this.cinvcode = cinvcode;
	}

	private Boolean priceChanged = false ;// 是否改过价格

	public boolean isPriceChanged()
	{
		return priceChanged;
	}

	private String ddate_start;
	private String ddate_end;

	public String getDdate_start()
	{
		return ddate_start;
	}

	public void setDdate_start(String ddate_start)
	{
		this.ddate_start = ddate_start;
	}

	public String getDdate_end()
	{
		return ddate_end;
	}

	public void setDdate_end(String ddate_end)
	{
		this.ddate_end = ddate_end;
	}

	public String getDdateShow()
	{
		return TimeUtil.date2str(getDdate(), "yyyy-MM-dd");
	}

	@Override
	public String toString()
	{
		return JSON.toJSONString(this);
	}

	public Double getIquantity()
	{
		return iquantity;
	}

	public void setIquantity(Double iquantity)
	{
		this.iquantity = iquantity;
	}

	public Double getIsettlequantity()
	{
		return isettlequantity;
	}

	public void setIsettlequantity(Double isettlequantity)
	{
		this.isettlequantity = isettlequantity;
	}

	public Double getItaxunitprice()
	{
		return itaxunitprice;
	}

	public void setItaxunitprice(Double itaxunitprice)
	{
		this.itaxunitprice = itaxunitprice;
	}

	public Double getIsum()
	{
		return isum;
	}

	public void setIsum(Double isum)
	{
		this.isum = isum;
	}

	public Double getInatunitprice()
	{
		return inatunitprice;
	}

	public void setInatunitprice(Double inatunitprice)
	{
		this.inatunitprice = inatunitprice;
	}

	public Double getInatsum()
	{
		return inatsum;
	}

	public void setInatsum(Double inatsum)
	{
		this.inatsum = inatsum;
	}

	public Boolean getPriceChanged()
	{
		return priceChanged;
	}

	public void setPriceChanged(Boolean priceChanged)
	{
		this.priceChanged = priceChanged;
	}
}
