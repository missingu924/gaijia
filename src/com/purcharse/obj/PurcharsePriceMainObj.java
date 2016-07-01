package com.purcharse.obj;

import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;
import com.wuyg.common.util.StringUtil;
import com.wuyg.common.util.TimeUtil;

import java.util.LinkedHashMap;
import java.util.Arrays;
import java.util.List;
import com.alibaba.fastjson.JSON;

public class PurcharsePriceMainObj extends BaseDbObj
{
	private Long id;
	private String name;
	private String zuocheng_user;
	private Timestamp zuocheng_time;
	private String zuocheng_status;
	private String queren_user;
	private Timestamp queren_time;
	private String queren_status;
	private String shenhe_user;
	private Timestamp shenhe_time;
	private Timestamp pizhun_time;
	private String shenhe_status;
	private String pizhun_user;
	private String pizhun_status;
	private Boolean bohui = false;

	public final String YI_TI_JIAO = "已提交";
	public final String DAI_XIU_GAI = "待修改";
	public final String DAI_TI_JIAO = "待提交";
	public final String YI_QUE_REN = "已确认";
	public final String DAI_QUE_REN = "待确认";
	public final String YI_SHEN_HE = "已审核";
	public final String DAI_SHEN_HE = "待审核";
	public final String YI_PI_ZHUN = "已批准";
	public final String DAI_PI_ZHUN = "待批准";
	public final String YI_BO_HUI = "已驳回";
	public final String DAI_BO_HUI = "待驳回";

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
		return "purcharse_price_main";
	}

	@Override
	public String findDefaultOrderBy()
	{
		return "id desc";
	}

	@Override
	public String getBasePath()
	{
		return "PurcharsePriceMain";
	}

	@Override
	public String getCnName()
	{
		return "采购限价";
	}

	@Override
	public List<String> findUniqueIndexProperties()
	{
		return Arrays.asList(new String[]
		{ "name" });
	}

	public LinkedHashMap<String, String> findProperties()
	{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		pros.put("id", "编号");
		pros.put("name", "名称");
		// pros.put("zuocheng_user", "作成人");
		pros.put("zuocheng_time", "作成时间");
		pros.put("zuocheng_status", "采购员提交");
		// pros.put("queren_user", "确认人");
		pros.put("queren_time", "确认时间");
		pros.put("queren_status", "部长确认");
		// pros.put("shenhe_user", "审核人");
		pros.put("shenhe_time", "审核时间");
		pros.put("pizhun_time", "批准时间");
		pros.put("shenhe_status", "主管经理审核");
		// pros.put("pizhun_user", "批准人");
		pros.put("pizhun_status", "总经理批准");
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

	public Boolean getBohui()
	{
		return bohui;
	}

	public void setBohui(Boolean bohui)
	{
		this.bohui = bohui;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getZuocheng_user()
	{
		return zuocheng_user;
	}

	public void setZuocheng_user(String zuocheng_user)
	{
		this.zuocheng_user = zuocheng_user;
	}

	public Timestamp getZuocheng_time()
	{
		return zuocheng_time;
	}

	public void setZuocheng_time(Timestamp zuocheng_time)
	{
		this.zuocheng_time = zuocheng_time;
	}

	public String getZuocheng_status()
	{
		return zuocheng_status;
	}

	public void setZuocheng_status(String zuocheng_status)
	{
		this.zuocheng_status = zuocheng_status;
	}

	public String getQueren_user()
	{
		return queren_user;
	}

	public void setQueren_user(String queren_user)
	{
		this.queren_user = queren_user;
	}

	public Timestamp getQueren_time()
	{
		return queren_time;
	}

	public void setQueren_time(Timestamp queren_time)
	{
		this.queren_time = queren_time;
	}

	public String getQueren_status()
	{
		return queren_status;
	}

	public void setQueren_status(String queren_status)
	{
		this.queren_status = queren_status;
	}

	public String getShenhe_user()
	{
		return shenhe_user;
	}

	public void setShenhe_user(String shenhe_user)
	{
		this.shenhe_user = shenhe_user;
	}

	public Timestamp getShenhe_time()
	{
		return shenhe_time;
	}

	public void setShenhe_time(Timestamp shenhe_time)
	{
		this.shenhe_time = shenhe_time;
	}

	public Timestamp getPizhun_time()
	{
		return pizhun_time;
	}

	public void setPizhun_time(Timestamp pizhun_time)
	{
		this.pizhun_time = pizhun_time;
	}

	public String getShenhe_status()
	{
		return shenhe_status;
	}

	public void setShenhe_status(String shenhe_status)
	{
		this.shenhe_status = shenhe_status;
	}

	public String getPizhun_user()
	{
		return pizhun_user;
	}

	public void setPizhun_user(String pizhun_user)
	{
		this.pizhun_user = pizhun_user;
	}

	public String getPizhun_status()
	{
		return pizhun_status;
	}

	public void setPizhun_status(String pizhun_status)
	{
		this.pizhun_status = pizhun_status;
	}

	public String getZuocheng_status4show()
	{
		if (YI_TI_JIAO.equalsIgnoreCase(zuocheng_status))
		{
			return zuocheng_status + "/" + TimeUtil.date2str(zuocheng_time, "yyyy.MM.dd");
		} else
		{
			return zuocheng_status;
		}
	}

	public String getQueren_status4show()
	{
		if (DAI_QUE_REN.equalsIgnoreCase(queren_status))
		{
			return queren_status;
		} else
		{
			return queren_status + "/" + TimeUtil.date2str(queren_time, "yyyy.MM.dd");
		}
	}

	public String getShenhe_status4show()
	{
		if (DAI_SHEN_HE.equalsIgnoreCase(shenhe_status))
		{
			return shenhe_status;
		} else
		{
			return shenhe_status + "/" + TimeUtil.date2str(shenhe_time, "yyyy.MM.dd");
		}
	}

	public String getPizhun_status4show()
	{
		if (DAI_PI_ZHUN.equalsIgnoreCase(pizhun_status))
		{
			return pizhun_status;
		} else
		{
			return pizhun_status + "/" + TimeUtil.date2str(pizhun_time, "yyyy.MM.dd");
		}
	}

	@Override
	public String toString()
	{
		return JSON.toJSONString(this);
	}
}
