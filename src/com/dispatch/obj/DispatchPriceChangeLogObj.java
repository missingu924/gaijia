package com.dispatch.obj;

import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import com.alibaba.fastjson.JSON;

public class DispatchPriceChangeLogObj extends BaseDbObj
{
	private Long id;
	private Long autoid;
	private Long dlid;
	private String cwhcode;
	private String cinvcode;
	private String cdepcode;
	private String cpersoncode;
	private String ccuscode;
	private Double itaxprice_before_change;
	private Double itaxprice_after_change;
	private Double itaxrate;
	private Double iquantity;
	private Double iexchrate;
	private String operate_user_account;
	private String operate_user_name;
	private Timestamp operate_time;
	private Double isum_before_change;
	private Double inatsum_before_change;
	private Double isum_after_change;
	private Double inatsum_after_change;

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
		return "dispatch_price_change_log";
	}

	@Override
	public String findDefaultOrderBy()
	{
		return "id desc";
	}

	@Override
	public String getBasePath()
	{
		return "DispatchPriceChangeLog";
	}

	@Override
	public String getCnName()
	{
		return "价格修改记录";
	}
	
	@Override
	public List<String> getUniqueIndexProperties()
	{
		List<String> list=new ArrayList<String>();
		list.add("autoid");
		return list;
	}

	public LinkedHashMap<String, String> getProperties()
	{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		pros.put("id", "编号");
		pros.put("autoid", "发货单子表ID");
		pros.put("dlid", "发货单主表ID");
		pros.put("cwhcode", "仓库");
		pros.put("cinvcode", "存货");
		pros.put("cdepcode", "部门");
		pros.put("ccuscode", "客户");
		pros.put("cpersoncode", "业务员");
		pros.put("iquantity", "数量");
		pros.put("itaxrate", "税率");
		pros.put("iexchrate", "汇率");
		pros.put("isum_before_change", "原币价税合计-修改前");
		pros.put("inatsum_before_change", "本币价税合计-修改前");
		pros.put("isum_after_change", "原币价税合计-修改后");
		pros.put("inatsum_after_change", "本币价税合计-修改后");
		pros.put("itaxprice_before_change", "修改前含税单价");
		pros.put("itaxprice_after_change", "修改后含税单价");
		pros.put("operate_user_account", "修改人账号");
		pros.put("operate_user_name", "修改人姓名");
		pros.put("operate_time", "修改时间");
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

	public Double getIquantity()
	{
		return iquantity;
	}

	public void setIquantity(Double iquantity)
	{
		this.iquantity = iquantity;
	}

	public Double getIsum_before_change()
	{
		// return isum_before_change;
		return itaxprice_before_change * iquantity;
	}

	public void setIsum_before_change(Double isum_before_change)
	{
		this.isum_before_change = isum_before_change;
	}

	public Double getInatsum_before_change()
	{
		// return inatsum_before_change;
		return getIsum_before_change() * iexchrate;
	}

	public void setInatsum_before_change(Double inatsum_before_change)
	{
		this.inatsum_before_change = inatsum_before_change;
	}

	public Double getIsum_after_change()
	{
		// return isum_after_change;
		return itaxprice_after_change * iquantity;
	}

	public void setIsum_after_change(Double isum_after_change)
	{
		this.isum_after_change = isum_after_change;
	}

	public Double getInatsum_after_change()
	{
		// return inatsum_after_change;
		return getIsum_after_change() * iexchrate;
	}

	public void setInatsum_after_change(Double inatsum_after_change)
	{
		this.inatsum_after_change = inatsum_after_change;
	}

	public Long getAutoid()
	{
		return autoid;
	}

	public void setAutoid(Long autoid)
	{
		this.autoid = autoid;
	}

	public Long getDlid()
	{
		return dlid;
	}

	public Double getItaxrate()
	{
		return itaxrate;
	}

	public void setItaxrate(Double itaxrate)
	{
		this.itaxrate = itaxrate;
	}

	public Double getIexchrate()
	{
		return iexchrate;
	}

	public void setIexchrate(Double iexchrate)
	{
		this.iexchrate = iexchrate;
	}

	public void setDlid(Long dlid)
	{
		this.dlid = dlid;
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

	public String getCdepcode()
	{
		return cdepcode;
	}

	public void setCdepcode(String cdepcode)
	{
		this.cdepcode = cdepcode;
	}

	public String getCcuscode()
	{
		return ccuscode;
	}

	public void setCcuscode(String ccuscode)
	{
		this.ccuscode = ccuscode;
	}

	public Double getItaxprice_before_change()
	{
		return itaxprice_before_change;
	}

	public void setItaxprice_before_change(Double itaxprice_before_change)
	{
		this.itaxprice_before_change = itaxprice_before_change;
	}

	public Double getItaxprice_after_change()
	{
		return itaxprice_after_change;
	}

	public void setItaxprice_after_change(Double itaxprice_after_change)
	{
		this.itaxprice_after_change = itaxprice_after_change;
	}

	public String getOperate_user_account()
	{
		return operate_user_account;
	}

	public void setOperate_user_account(String operate_user_account)
	{
		this.operate_user_account = operate_user_account;
	}

	public String getOperate_user_name()
	{
		return operate_user_name;
	}

	public void setOperate_user_name(String operate_user_name)
	{
		this.operate_user_name = operate_user_name;
	}

	public Timestamp getOperate_time()
	{
		return operate_time;
	}

	public void setOperate_time(Timestamp operate_time)
	{
		this.operate_time = operate_time;
	}

	public String getCpersoncode()
	{
		return cpersoncode;
	}

	public void setCpersoncode(String cpersoncode)
	{
		this.cpersoncode = cpersoncode;
	}

	@Override
	public String toString()
	{
		return JSON.toJSONString(this);
	}
}
