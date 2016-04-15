package com.ruihua.obj;
import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import com.alibaba.fastjson.JSON;
public class TaobaoProductMapObj extends BaseDbObj
{
private Long id;
private String taobao_product_code;
private String u8_inventory_code;
private String u8_inventory_name;
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
	return "taobao_product_map";
}
@Override 
public String findDefaultOrderBy()
{
	return "taobao_product_code";
}
@Override
public String getBasePath()
{
	return "TaobaoProductMap";
}
@Override
public String getCnName()
{
	return "商品对照关系";
}
@Override
public List<String> getUniqueIndexProperties()
{
	List<String> l = new ArrayList<String>();
	l.add("taobao_product_code");
	return l;
}
public LinkedHashMap<String, String> getProperties()
{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		pros.put("id", "编号");
		pros.put("taobao_product_code", "淘宝商品名");
		pros.put("u8_inventory_code", "U8存货编号");
		pros.put("u8_inventory_name", "U8存货名称");
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
public String getTaobao_product_code()
{
	return taobao_product_code;
}
public void setTaobao_product_code(String taobao_product_code)
{
	this.taobao_product_code = taobao_product_code;
}
public String getU8_inventory_code()
{
	return u8_inventory_code;
}
public void setU8_inventory_code(String u8_inventory_code)
{
	this.u8_inventory_code = u8_inventory_code;
}
public String getU8_inventory_name()
{
	return u8_inventory_name;
}
public void setU8_inventory_name(String u8_inventory_name)
{
	this.u8_inventory_name = u8_inventory_name;
}
@Override
public String toString()
{
	return JSON.toJSONString(this);
}
}

