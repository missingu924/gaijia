package com.wuyg.auth.obj;
import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;
import java.util.LinkedHashMap;
import com.alibaba.fastjson.JSON;
public class AuthDepartmentObj extends BaseDbObj
{
private Long id;
private String departmentid;
private String departmentname;
private String city;
private String districtname;
private String commentinfo;
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
	return "auth_department";
}
@Override 
public String findDefaultOrderBy()
{
	return super.findDefaultOrderBy();
}
@Override
public String getBasePath()
{
	return "AuthDepartment";
}
@Override
public String getCnName()
{
	return "部门";
}
public LinkedHashMap<String, String> getProperties()
{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		pros.put("id", "编号");
		pros.put("departmentid", "部门编号");
		pros.put("departmentname", "部门名称");
		pros.put("city", "地市");
		pros.put("districtname", "区县");
		pros.put("commentinfo", "备注");
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
public String getDepartmentid()
{
	return departmentid;
}
public void setDepartmentid(String departmentid)
{
	this.departmentid = departmentid;
}
public String getDepartmentname()
{
	return departmentname;
}
public void setDepartmentname(String departmentname)
{
	this.departmentname = departmentname;
}
public String getCity()
{
	return city;
}
public void setCity(String city)
{
	this.city = city;
}
public String getDistrictname()
{
	return districtname;
}
public void setDistrictname(String districtname)
{
	this.districtname = districtname;
}
public String getCommentinfo()
{
	return commentinfo;
}
public void setCommentinfo(String commentinfo)
{
	this.commentinfo = commentinfo;
}
@Override
public String toString()
{
	return JSON.toJSONString(this);
}
}

