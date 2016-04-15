package com.wuyg.auth.obj;
import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;
import java.util.LinkedHashMap;
import com.alibaba.fastjson.JSON;
public class AuthUserObj extends BaseDbObj
{
private Long id;
private String account;
private String password;
private String name;
private String telephone;
private String sex;
private String province;
private String city;
private String district;
private String departmentid;
private String departmentname;
private String office;
private String rolelevel;
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
	return "auth_user";
}
@Override 
public String findDefaultOrderBy()
{
	return super.findDefaultOrderBy();
}
@Override
public String getBasePath()
{
	return "AuthUser";
}
@Override
public String getCnName()
{
	return "账号管理";
}
public LinkedHashMap<String, String> getProperties()
{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		pros.put("id", "编号");
		pros.put("account", "账号");
		pros.put("password", "密码");
		pros.put("name", "姓名");
		pros.put("telephone", "电话");
		pros.put("sex", "性别");
		pros.put("province", "省份");
		pros.put("city", "地市");
		pros.put("district", "区县");
		pros.put("departmentid", "部门");
		pros.put("departmentname", "部门名称");
		pros.put("office", "职务");
		pros.put("rolelevel", "角色");
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
public String getAccount()
{
	return account;
}
public void setAccount(String account)
{
	this.account = account;
}
public String getPassword()
{
	return password;
}
public void setPassword(String password)
{
	this.password = password;
}
public String getName()
{
	return name;
}
public void setName(String name)
{
	this.name = name;
}
public String getTelephone()
{
	return telephone;
}
public void setTelephone(String telephone)
{
	this.telephone = telephone;
}
public String getSex()
{
	return sex;
}
public void setSex(String sex)
{
	this.sex = sex;
}
public String getProvince()
{
	return province;
}
public void setProvince(String province)
{
	this.province = province;
}
public String getCity()
{
	return city;
}
public void setCity(String city)
{
	this.city = city;
}
public String getDistrict()
{
	return district;
}
public void setDistrict(String district)
{
	this.district = district;
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
public String getOffice()
{
	return office;
}
public void setOffice(String office)
{
	this.office = office;
}
public String getRolelevel()
{
	return rolelevel;
}
public void setRolelevel(String rolelevel)
{
	this.rolelevel = rolelevel;
}
@Override
public String toString()
{
	return JSON.toJSONString(this);
}
}

