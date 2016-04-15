package com.wuyg.auth.obj;
import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;
import java.util.LinkedHashMap;
import com.alibaba.fastjson.JSON;
public class AuthRoleObj extends BaseDbObj
{
private Long roleid;
private String rolename;
private String rolediscription;
@Override
public String findKeyColumnName()
{
	return "roleid";
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
	return "auth_role";
}
@Override 
public String findDefaultOrderBy()
{
	return super.findDefaultOrderBy();
}
@Override
public String getBasePath()
{
	return "AuthRole";
}
@Override
public String getCnName()
{
	return "角色";
}
public LinkedHashMap<String, String> getProperties()
{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		pros.put("roleid", "角色编号");
		pros.put("rolename", "角色名称");
		pros.put("rolediscription", "角色描述");
		return pros;
}
public Long getRoleid()
{
	return roleid;
}
public void setRoleid(Long roleid)
{
	this.roleid = roleid;
}
public String getRolename()
{
	return rolename;
}
public void setRolename(String rolename)
{
	this.rolename = rolename;
}
public String getRolediscription()
{
	return rolediscription;
}
public void setRolediscription(String rolediscription)
{
	this.rolediscription = rolediscription;
}
@Override
public String toString()
{
	return JSON.toJSONString(this);
}
}

