package com.purcharse.obj;
import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;
import java.util.LinkedHashMap;
import java.util.Arrays;
import java.util.List;
import com.alibaba.fastjson.JSON;
public class PurcharsePriceDetailObj extends BaseDbObj
{
private Long id;
private String cinvcode;
private String cinvname;
private String cinvcname;
private String cinvstd;
private String ccomunitname;
private String cvenname;
private Double price;
private Long parentid;
private String comment;
@Override
public String findKeyColumnName()
{
	return "id";
}
@Override
public String findParentKeyColumnName()
{
	return "parentid";
}
@Override
public String findTableName()
{
	return "purcharse_price_detail";
}
@Override 
public String findDefaultOrderBy()
{
	return super.findDefaultOrderBy();
}
@Override
public String getBasePath()
{
	return "PurcharsePriceDetail";
}
@Override
public String getCnName()
{
	return "采购限价明细";
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

		pros.put("id", "编号");
		pros.put("cinvcode", "存货编号");
		pros.put("cinvname", "存货名称");
		pros.put("cinvccode", "分类编号");
		pros.put("cinvstd", "规格型号");
		pros.put("ccomunitcode", "单位");
		pros.put("cvencode", "供应商");
		pros.put("price", "价格");
		pros.put("parentid", "采购降价表编号");
		pros.put("comment", "备注");
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
public String getCinvcname()
{
	return cinvcname;
}
public void setCinvcname(String cinvcname)
{
	this.cinvcname = cinvcname;
}
public String getCcomunitname()
{
	return ccomunitname;
}
public String getComment()
{
	return comment;
}
public void setComment(String comment)
{
	this.comment = comment;
}
public void setCcomunitname(String ccomunitname)
{
	this.ccomunitname = ccomunitname;
}
public String getCvenname()
{
	return cvenname;
}
public void setCvenname(String cvenname)
{
	this.cvenname = cvenname;
}
public String getCinvstd()
{
	return cinvstd;
}
public void setCinvstd(String cinvstd)
{
	this.cinvstd = cinvstd;
}
public Double getPrice()
{
	return price;
}
public void setPrice(Double price)
{
	this.price = price;
}
public Long getParentid()
{
	return parentid;
}
public void setParentid(Long parentid)
{
	this.parentid = parentid;
}
@Override
public String toString()
{
	return JSON.toJSONString(this);
}
}

