package com.u8.obj;
import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import com.alibaba.fastjson.JSON;
public class SoSomainObj extends BaseDbObj
{
private String cstcode;
private Timestamp ddate;
private String csocode;
private String ccuscode;
private String cdepcode;
private String cpersoncode;
private String csccode;
private String ccusoaddress;
private String cpaycode;
private String cexch_name;
private Double iexchrate;
private Double itaxrate;
private String imoney;
private String cmemo;
private String istatus;
private String cmaker;
private String cverifier;
private String ccloser;
private Boolean bdisflag;
private String cdefine1;
private String cdefine2;
private String cdefine3;
private Timestamp cdefine4;
private Long cdefine5;
private Timestamp cdefine6;
private Double cdefine7;
private String cdefine8;
private String cdefine9;
private String cdefine10;
private Boolean breturnflag;
private String ccusname;
private Boolean border;
private Long id;
private Long ivtid;
//private String ufts;
private String cchanger;
private String cbustype;
private String ccrechpname;
private String cdefine11;
private String cdefine12;
private String cdefine13;
private String cdefine14;
private Long cdefine15;
private Double cdefine16;
private String coppcode;
private String clocker;
private Timestamp dpremodatebt;
private Timestamp dpredatebt;
private String cgatheringplan;
private String caddcode;
private Long iverifystate;
private String ireturncount;
private String iswfcontrolled;
private String icreditstate;
private String cmodifier;
private Timestamp dmoddate;
private Timestamp dverifydate;
private String ccusperson;
private Timestamp dcreatesystime;
private Timestamp dverifysystime;
private Timestamp dmodifysystime;
private Long iflowid;
private Boolean bcashsale;
private String cgathingcode;
private String cchangeverifier;
private Timestamp dchangeverifydate;
private Timestamp dchangeverifytime;
private String outid;
@Override
public String findKeyColumnName()
{
	return "cdefine5";
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
	return "so_somain";
}
@Override 
public String findDefaultOrderBy()
{
	return super.findDefaultOrderBy();
}
@Override
public String getBasePath()
{
	return "SoSomain";
}
@Override
public String getCnName()
{
	return "销售单主表";
}
@Override
public List<String> findUniqueIndexProperties()
{
	List<String> l=new ArrayList<String>();
	l.add("cdefine1");
	return l;
}
public LinkedHashMap<String, String> findProperties()
{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		pros.put("cstcode", "cstcode");
		pros.put("ddate", "ddate");
		pros.put("csocode", "csocode");
		pros.put("ccuscode", "ccuscode");
		pros.put("cdepcode", "cdepcode");
		pros.put("cpersoncode", "cpersoncode");
		pros.put("csccode", "csccode");
		pros.put("ccusoaddress", "ccusoaddress");
		pros.put("cpaycode", "cpaycode");
		pros.put("cexch_name", "cexch_name");
		pros.put("iexchrate", "iexchrate");
		pros.put("itaxrate", "itaxrate");
		pros.put("imoney", "imoney");
		pros.put("cmemo", "cmemo");
		pros.put("istatus", "istatus");
		pros.put("cmaker", "cmaker");
		pros.put("cverifier", "cverifier");
		pros.put("ccloser", "ccloser");
		pros.put("bdisflag", "bdisflag");
		pros.put("cdefine1", "cdefine1");
		pros.put("cdefine2", "cdefine2");
		pros.put("cdefine3", "cdefine3");
		pros.put("cdefine4", "cdefine4");
		pros.put("cdefine5", "cdefine5");
		pros.put("cdefine6", "cdefine6");
		pros.put("cdefine7", "cdefine7");
		pros.put("cdefine8", "cdefine8");
		pros.put("cdefine9", "cdefine9");
		pros.put("cdefine10", "cdefine10");
		pros.put("breturnflag", "breturnflag");
		pros.put("ccusname", "ccusname");
		pros.put("border", "border");
		pros.put("id", "id");
		pros.put("ivtid", "ivtid");
//		pros.put("ufts", "ufts");
		pros.put("cchanger", "cchanger");
		pros.put("cbustype", "cbustype");
		pros.put("ccrechpname", "ccrechpname");
		pros.put("cdefine11", "cdefine11");
		pros.put("cdefine12", "cdefine12");
		pros.put("cdefine13", "cdefine13");
		pros.put("cdefine14", "cdefine14");
		pros.put("cdefine15", "cdefine15");
		pros.put("cdefine16", "cdefine16");
		pros.put("coppcode", "coppcode");
		pros.put("clocker", "clocker");
		pros.put("dpremodatebt", "dpremodatebt");
		pros.put("dpredatebt", "dpredatebt");
		pros.put("cgatheringplan", "cgatheringplan");
		pros.put("caddcode", "caddcode");
		pros.put("iverifystate", "iverifystate");
		pros.put("ireturncount", "ireturncount");
		pros.put("iswfcontrolled", "iswfcontrolled");
		pros.put("icreditstate", "icreditstate");
		pros.put("cmodifier", "cmodifier");
		pros.put("dmoddate", "dmoddate");
		pros.put("dverifydate", "dverifydate");
		pros.put("ccusperson", "ccusperson");
		pros.put("dcreatesystime", "dcreatesystime");
		pros.put("dverifysystime", "dverifysystime");
		pros.put("dmodifysystime", "dmodifysystime");
		pros.put("iflowid", "iflowid");
		pros.put("bcashsale", "bcashsale");
		pros.put("cgathingcode", "cgathingcode");
		pros.put("cchangeverifier", "cchangeverifier");
		pros.put("dchangeverifydate", "dchangeverifydate");
		pros.put("dchangeverifytime", "dchangeverifytime");
		pros.put("outid", "outid");
		return pros;
}
public String getCstcode()
{
	return cstcode;
}
public void setCstcode(String cstcode)
{
	this.cstcode = cstcode;
}
public Timestamp getDdate()
{
	return ddate;
}
public void setDdate(Timestamp ddate)
{
	this.ddate = ddate;
}
public String getCsocode()
{
	return csocode;
}
public void setCsocode(String csocode)
{
	this.csocode = csocode;
}
public String getCcuscode()
{
	return ccuscode;
}
public void setCcuscode(String ccuscode)
{
	this.ccuscode = ccuscode;
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
public String getCsccode()
{
	return csccode;
}
public void setCsccode(String csccode)
{
	this.csccode = csccode;
}
public String getCcusoaddress()
{
	return ccusoaddress;
}
public void setCcusoaddress(String ccusoaddress)
{
	this.ccusoaddress = ccusoaddress;
}
public String getCpaycode()
{
	return cpaycode;
}
public void setCpaycode(String cpaycode)
{
	this.cpaycode = cpaycode;
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
public String getImoney()
{
	return imoney;
}
public void setImoney(String imoney)
{
	this.imoney = imoney;
}
public String getCmemo()
{
	return cmemo;
}
public void setCmemo(String cmemo)
{
	this.cmemo = cmemo;
}
public String getIstatus()
{
	return istatus;
}
public void setIstatus(String istatus)
{
	this.istatus = istatus;
}
public String getCmaker()
{
	return cmaker;
}
public void setCmaker(String cmaker)
{
	this.cmaker = cmaker;
}
public String getCverifier()
{
	return cverifier;
}
public void setCverifier(String cverifier)
{
	this.cverifier = cverifier;
}
public String getCcloser()
{
	return ccloser;
}
public void setCcloser(String ccloser)
{
	this.ccloser = ccloser;
}
public Boolean getBdisflag()
{
	return bdisflag;
}
public void setBdisflag(Boolean bdisflag)
{
	this.bdisflag = bdisflag;
}
public String getCdefine1()
{
	return cdefine1;
}
public void setCdefine1(String cdefine1)
{
	this.cdefine1 = cdefine1;
}
public String getCdefine2()
{
	return cdefine2;
}
public void setCdefine2(String cdefine2)
{
	this.cdefine2 = cdefine2;
}
public String getCdefine3()
{
	return cdefine3;
}
public void setCdefine3(String cdefine3)
{
	this.cdefine3 = cdefine3;
}
public Timestamp getCdefine4()
{
	return cdefine4;
}
public void setCdefine4(Timestamp cdefine4)
{
	this.cdefine4 = cdefine4;
}
public Long getCdefine5()
{
	return cdefine5;
}
public void setCdefine5(Long cdefine5)
{
	this.cdefine5 = cdefine5;
}
public Timestamp getCdefine6()
{
	return cdefine6;
}
public void setCdefine6(Timestamp cdefine6)
{
	this.cdefine6 = cdefine6;
}
public Double getCdefine7()
{
	return cdefine7;
}
public void setCdefine7(Double cdefine7)
{
	this.cdefine7 = cdefine7;
}
public String getCdefine8()
{
	return cdefine8;
}
public void setCdefine8(String cdefine8)
{
	this.cdefine8 = cdefine8;
}
public String getCdefine9()
{
	return cdefine9;
}
public void setCdefine9(String cdefine9)
{
	this.cdefine9 = cdefine9;
}
public String getCdefine10()
{
	return cdefine10;
}
public void setCdefine10(String cdefine10)
{
	this.cdefine10 = cdefine10;
}
public Boolean getBreturnflag()
{
	return breturnflag;
}
public void setBreturnflag(Boolean breturnflag)
{
	this.breturnflag = breturnflag;
}
public String getCcusname()
{
	return ccusname;
}
public void setCcusname(String ccusname)
{
	this.ccusname = ccusname;
}
public Boolean getBorder()
{
	return border;
}
public void setBorder(Boolean border)
{
	this.border = border;
}
public Long getId()
{
	return id;
}
public void setId(Long id)
{
	this.id = id;
}
public Long getIvtid()
{
	return ivtid;
}
public void setIvtid(Long ivtid)
{
	this.ivtid = ivtid;
}
//public String getUfts()
//{
//	return ufts;
//}
//public void setUfts(String ufts)
//{
//	this.ufts = ufts;
//}
public String getCchanger()
{
	return cchanger;
}
public void setCchanger(String cchanger)
{
	this.cchanger = cchanger;
}
public String getCbustype()
{
	return cbustype;
}
public void setCbustype(String cbustype)
{
	this.cbustype = cbustype;
}
public String getCcrechpname()
{
	return ccrechpname;
}
public void setCcrechpname(String ccrechpname)
{
	this.ccrechpname = ccrechpname;
}
public String getCdefine11()
{
	return cdefine11;
}
public void setCdefine11(String cdefine11)
{
	this.cdefine11 = cdefine11;
}
public String getCdefine12()
{
	return cdefine12;
}
public void setCdefine12(String cdefine12)
{
	this.cdefine12 = cdefine12;
}
public String getCdefine13()
{
	return cdefine13;
}
public void setCdefine13(String cdefine13)
{
	this.cdefine13 = cdefine13;
}
public String getCdefine14()
{
	return cdefine14;
}
public void setCdefine14(String cdefine14)
{
	this.cdefine14 = cdefine14;
}
public Long getCdefine15()
{
	return cdefine15;
}
public void setCdefine15(Long cdefine15)
{
	this.cdefine15 = cdefine15;
}
public Double getCdefine16()
{
	return cdefine16;
}
public void setCdefine16(Double cdefine16)
{
	this.cdefine16 = cdefine16;
}
public String getCoppcode()
{
	return coppcode;
}
public void setCoppcode(String coppcode)
{
	this.coppcode = coppcode;
}
public String getClocker()
{
	return clocker;
}
public void setClocker(String clocker)
{
	this.clocker = clocker;
}
public Timestamp getDpremodatebt()
{
	return dpremodatebt;
}
public void setDpremodatebt(Timestamp dpremodatebt)
{
	this.dpremodatebt = dpremodatebt;
}
public Timestamp getDpredatebt()
{
	return dpredatebt;
}
public void setDpredatebt(Timestamp dpredatebt)
{
	this.dpredatebt = dpredatebt;
}
public String getCgatheringplan()
{
	return cgatheringplan;
}
public void setCgatheringplan(String cgatheringplan)
{
	this.cgatheringplan = cgatheringplan;
}
public String getCaddcode()
{
	return caddcode;
}
public void setCaddcode(String caddcode)
{
	this.caddcode = caddcode;
}
public Long getIverifystate()
{
	return iverifystate;
}
public void setIverifystate(Long iverifystate)
{
	this.iverifystate = iverifystate;
}
public String getIreturncount()
{
	return ireturncount;
}
public void setIreturncount(String ireturncount)
{
	this.ireturncount = ireturncount;
}
public String getIswfcontrolled()
{
	return iswfcontrolled;
}
public void setIswfcontrolled(String iswfcontrolled)
{
	this.iswfcontrolled = iswfcontrolled;
}
public String getIcreditstate()
{
	return icreditstate;
}
public void setIcreditstate(String icreditstate)
{
	this.icreditstate = icreditstate;
}
public String getCmodifier()
{
	return cmodifier;
}
public void setCmodifier(String cmodifier)
{
	this.cmodifier = cmodifier;
}
public Timestamp getDmoddate()
{
	return dmoddate;
}
public void setDmoddate(Timestamp dmoddate)
{
	this.dmoddate = dmoddate;
}
public Timestamp getDverifydate()
{
	return dverifydate;
}
public void setDverifydate(Timestamp dverifydate)
{
	this.dverifydate = dverifydate;
}
public String getCcusperson()
{
	return ccusperson;
}
public void setCcusperson(String ccusperson)
{
	this.ccusperson = ccusperson;
}
public Timestamp getDcreatesystime()
{
	return dcreatesystime;
}
public void setDcreatesystime(Timestamp dcreatesystime)
{
	this.dcreatesystime = dcreatesystime;
}
public Timestamp getDverifysystime()
{
	return dverifysystime;
}
public void setDverifysystime(Timestamp dverifysystime)
{
	this.dverifysystime = dverifysystime;
}
public Timestamp getDmodifysystime()
{
	return dmodifysystime;
}
public void setDmodifysystime(Timestamp dmodifysystime)
{
	this.dmodifysystime = dmodifysystime;
}
public Long getIflowid()
{
	return iflowid;
}
public void setIflowid(Long iflowid)
{
	this.iflowid = iflowid;
}
public Boolean getBcashsale()
{
	return bcashsale;
}
public void setBcashsale(Boolean bcashsale)
{
	this.bcashsale = bcashsale;
}
public String getCgathingcode()
{
	return cgathingcode;
}
public void setCgathingcode(String cgathingcode)
{
	this.cgathingcode = cgathingcode;
}
public String getCchangeverifier()
{
	return cchangeverifier;
}
public void setCchangeverifier(String cchangeverifier)
{
	this.cchangeverifier = cchangeverifier;
}
public Timestamp getDchangeverifydate()
{
	return dchangeverifydate;
}
public void setDchangeverifydate(Timestamp dchangeverifydate)
{
	this.dchangeverifydate = dchangeverifydate;
}
public Timestamp getDchangeverifytime()
{
	return dchangeverifytime;
}
public void setDchangeverifytime(Timestamp dchangeverifytime)
{
	this.dchangeverifytime = dchangeverifytime;
}
public String getOutid()
{
	return outid;
}
public void setOutid(String outid)
{
	this.outid = outid;
}

public void setDingdan_bianhao(String value)
{
	this.setCdefine1(value);// 用 cdefine1 存储 订单编号
}

public String getDingdan_bianhao()
{
	return this.getCdefine1();// 用 cdefine1 存储 订单编号
}
@Override
public String toString()
{
	return JSON.toJSONString(this);
}
}

