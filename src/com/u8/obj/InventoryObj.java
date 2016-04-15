package com.u8.obj;
import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;
import java.util.LinkedHashMap;
import com.alibaba.fastjson.JSON;
public class InventoryObj extends BaseDbObj
{
private String cinvcode;
private String cinvaddcode;
private String cinvname;
private String cinvstd;
private String cinvccode;
private String cvencode;
private String creplaceitem;
private String cposition;
private Boolean bsale;
private Boolean bpurchase;
private Boolean bself;
private Boolean bcomsume;
private Boolean bproducing;
private Boolean bservice;
private Boolean baccessary;
private Double itaxrate;
private Double iinvweight;
private Double ivolume;
private Double iinvrcost;
private Double iinvsprice;
private Double iinvscost;
private Double iinvlscost;
private Double iinvncost;
private Double iinvadvance;
private Double iinvbatch;
private Double isafenum;
private Double itopsum;
private Double ilowsum;
private Double ioverstock;
private String cinvabc;
private Boolean binvquality;
private Boolean binvbatch;
private Boolean binventrust;
private Boolean binvoverstock;
private Timestamp dsdate;
private Timestamp dedate;
private Boolean bfree1;
private Boolean bfree2;
private String cinvdefine1;
private String cinvdefine2;
private String cinvdefine3;
private Long i_id;
private Boolean binvtype;
private Double iinvmpcost;
private String cquality;
private Double iinvsalecost;
private Double iinvscost1;
private Double iinvscost2;
private Double iinvscost3;
private Boolean bfree3;
private Boolean bfree4;
private Boolean bfree5;
private Boolean bfree6;
private Boolean bfree7;
private Boolean bfree8;
private Boolean bfree9;
private Boolean bfree10;
private String ccreateperson;
private String cmodifyperson;
private Timestamp dmodifydate;
private Double fsubscribepoint;
private Double fvagquantity;
private String cvaluetype;
private Boolean bfixexch;
private Double foutexcess;
private Double finexcess;
private Long imassdate;
private Long iwarndays;
private Double fexpensesexch;
private Boolean btrack;
private Boolean bserial;
private Boolean bbarcode;
private Long iid;
private String cbarcode;
private String cinvdefine4;
private String cinvdefine5;
private String cinvdefine6;
private String cinvdefine7;
private String cinvdefine8;
private String cinvdefine9;
private String cinvdefine10;
private Long cinvdefine11;
private Long cinvdefine12;
private Double cinvdefine13;
private Double cinvdefine14;
private Timestamp cinvdefine15;
private Timestamp cinvdefine16;
private String igrouptype;
private String cgroupcode;
private String ccomunitcode;
private String casscomunitcode;
private String csacomunitcode;
private String cpucomunitcode;
private String cstcomunitcode;
private String ccacomunitcode;
private String cfrequency;
private Long ifrequency;
private Long idays;
private Timestamp dlastdate;
private Double iwastage;
private Boolean bsolitude;
private String centerprise;
private String caddress;
private String cfile;
private String clabel;
private String ccheckout;
private String clicence;
private Boolean bspecialties;
private String cdefwarehouse;
private Double ihighprice;
private Double iexpsalerate;
private String cpricegroup;
private String coffergrade;
private Double iofferrate;
private String cmonth;
private Long iadvancedate;
private String ccurrencyname;
private String cproduceaddress;
private String cproducenation;
private String cregisterno;
private String centerno;
private String cpackingtype;
private String cenglishname;
private Boolean bpropertycheck;
private String cpreparationtype;
private String ccommodity;
private String irecipebatch;
private String cnotpatentname;
private String pubufts;
private Boolean bpromotsales;
private Long iplanpolicy;
private Long iropmethod;
private Long ibatchrule;
private Double fbatchincrement;
private Long iassureprovidedays;
private Long iteststyle;
private Long idtmethod;
private Double fdtrate;
private Double fdtnum;
private String cdtunit;
private Long idtstyle;
private Long iqtmethod;
private String pictureguid;
private Boolean bplaninv;
private Boolean bproxyforeign;
private Boolean batomodel;
private Boolean bcheckitem;
private Boolean bptomodel;
private Boolean bequipment;
private String cproductunit;
private Double forderuplimit;
private Long cmassunit;
private Double fretailprice;
private String cinvdepcode;
private Long ialteradvance;
private Double falterbasenum;
private String cplanmethod;
private Boolean bmps;
private Boolean brop;
private Boolean breplan;
private String csrpolicy;
private Boolean bbillunite;
private Long isupplyday;
private Double fsupplymulti;
private Double fminsupply;
private Boolean bcutmantissa;
private String cinvpersoncode;
private Long iinvtfid;
private String cengineerfigno;
private Boolean bintotalcost;
private Long isupplytype;
private Boolean bconfigfree1;
private Boolean bconfigfree2;
private Boolean bconfigfree3;
private Boolean bconfigfree4;
private Boolean bconfigfree5;
private Boolean bconfigfree6;
private Boolean bconfigfree7;
private Boolean bconfigfree8;
private Boolean bconfigfree9;
private Boolean bconfigfree10;
private Long idtlevel;
private String cdtaql;
private Boolean bperioddt;
private String cdtperiod;
private Long ibigmonth;
private Long ibigday;
private Long ismallmonth;
private Long ismallday;
private Boolean boutinvdt;
private Boolean bbackinvdt;
private Long ienddtstyle;
private Boolean bdtwarninv;
private Double fbacktaxrate;
private String cciqcode;
private String cwgroupcode;
private String cwunit;
private Double fgrossw;
private String cvgroupcode;
private String cvunit;
private Double flength;
private Double fwidth;
private Double fheight;
private Long idtucounter;
private Long idtdcounter;
private Long ibatchcounter;
private String cshopunit;
private String cpurpersoncode;
private Boolean bimportmedicine;
private Boolean bfirstbusimedicine;
private Boolean bforeexpland;
private String cinvplancode;
private Double fconvertrate;
private Timestamp dreplacedate;
private Boolean binvmodel;
private Boolean bkccutmantissa;
private Boolean breceiptbydt;
private Double iimptaxrate;
private Double iexptaxrate;
private Boolean bexpsale;
private Double idrawbatch;
private Boolean bcheckbsatp;
private String cinvprojectcode;
private Long itestrule;
private String crulecode;
private Boolean bcheckfree1;
private Boolean bcheckfree2;
private Boolean bcheckfree3;
private Boolean bcheckfree4;
private Boolean bcheckfree5;
private Boolean bcheckfree6;
private Boolean bcheckfree7;
private Boolean bcheckfree8;
private Boolean bcheckfree9;
private Boolean bcheckfree10;
private Boolean bbommain;
private Boolean bbomsub;
private Boolean bproductbill;
private Long icheckatp;
private Long iinvatpid;
private Long iplantfday;
private Long ioverlapday;
private Boolean bpiece;
private Boolean bsrvitem;
private Boolean bsrvfittings;
private Double fmaxsupply;
private Double fminsplit;
private Boolean bspecialorder;
private Boolean btracksalebill;
@Override
public String findKeyColumnName()
{
	return "cinvcode";
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
	return "inventory";
}
@Override 
public String findDefaultOrderBy()
{
	return super.findDefaultOrderBy();
}
@Override
public String getBasePath()
{
	return "Inventory";
}
@Override
public String getCnName()
{
	return "存货档案";
}
public LinkedHashMap<String, String> getProperties()
{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		pros.put("cinvcode", "cinvcode");
		pros.put("cinvaddcode", "cinvaddcode");
		pros.put("cinvname", "cinvname");
		pros.put("cinvstd", "cinvstd");
		pros.put("cinvccode", "cinvccode");
		pros.put("cvencode", "cvencode");
		pros.put("creplaceitem", "creplaceitem");
		pros.put("cposition", "cposition");
		pros.put("bsale", "bsale");
		pros.put("bpurchase", "bpurchase");
		pros.put("bself", "bself");
		pros.put("bcomsume", "bcomsume");
		pros.put("bproducing", "bproducing");
		pros.put("bservice", "bservice");
		pros.put("baccessary", "baccessary");
		pros.put("itaxrate", "itaxrate");
		pros.put("iinvweight", "iinvweight");
		pros.put("ivolume", "ivolume");
		pros.put("iinvrcost", "iinvrcost");
		pros.put("iinvsprice", "iinvsprice");
		pros.put("iinvscost", "iinvscost");
		pros.put("iinvlscost", "iinvlscost");
		pros.put("iinvncost", "iinvncost");
		pros.put("iinvadvance", "iinvadvance");
		pros.put("iinvbatch", "iinvbatch");
		pros.put("isafenum", "isafenum");
		pros.put("itopsum", "itopsum");
		pros.put("ilowsum", "ilowsum");
		pros.put("ioverstock", "ioverstock");
		pros.put("cinvabc", "cinvabc");
		pros.put("binvquality", "binvquality");
		pros.put("binvbatch", "binvbatch");
		pros.put("binventrust", "binventrust");
		pros.put("binvoverstock", "binvoverstock");
		pros.put("dsdate", "dsdate");
		pros.put("dedate", "dedate");
		pros.put("bfree1", "bfree1");
		pros.put("bfree2", "bfree2");
		pros.put("cinvdefine1", "cinvdefine1");
		pros.put("cinvdefine2", "cinvdefine2");
		pros.put("cinvdefine3", "cinvdefine3");
		pros.put("i_id", "i_id");
		pros.put("binvtype", "binvtype");
		pros.put("iinvmpcost", "iinvmpcost");
		pros.put("cquality", "cquality");
		pros.put("iinvsalecost", "iinvsalecost");
		pros.put("iinvscost1", "iinvscost1");
		pros.put("iinvscost2", "iinvscost2");
		pros.put("iinvscost3", "iinvscost3");
		pros.put("bfree3", "bfree3");
		pros.put("bfree4", "bfree4");
		pros.put("bfree5", "bfree5");
		pros.put("bfree6", "bfree6");
		pros.put("bfree7", "bfree7");
		pros.put("bfree8", "bfree8");
		pros.put("bfree9", "bfree9");
		pros.put("bfree10", "bfree10");
		pros.put("ccreateperson", "ccreateperson");
		pros.put("cmodifyperson", "cmodifyperson");
		pros.put("dmodifydate", "dmodifydate");
		pros.put("fsubscribepoint", "fsubscribepoint");
		pros.put("fvagquantity", "fvagquantity");
		pros.put("cvaluetype", "cvaluetype");
		pros.put("bfixexch", "bfixexch");
		pros.put("foutexcess", "foutexcess");
		pros.put("finexcess", "finexcess");
		pros.put("imassdate", "imassdate");
		pros.put("iwarndays", "iwarndays");
		pros.put("fexpensesexch", "fexpensesexch");
		pros.put("btrack", "btrack");
		pros.put("bserial", "bserial");
		pros.put("bbarcode", "bbarcode");
		pros.put("iid", "iid");
		pros.put("cbarcode", "cbarcode");
		pros.put("cinvdefine4", "cinvdefine4");
		pros.put("cinvdefine5", "cinvdefine5");
		pros.put("cinvdefine6", "cinvdefine6");
		pros.put("cinvdefine7", "cinvdefine7");
		pros.put("cinvdefine8", "cinvdefine8");
		pros.put("cinvdefine9", "cinvdefine9");
		pros.put("cinvdefine10", "cinvdefine10");
		pros.put("cinvdefine11", "cinvdefine11");
		pros.put("cinvdefine12", "cinvdefine12");
		pros.put("cinvdefine13", "cinvdefine13");
		pros.put("cinvdefine14", "cinvdefine14");
		pros.put("cinvdefine15", "cinvdefine15");
		pros.put("cinvdefine16", "cinvdefine16");
		pros.put("igrouptype", "igrouptype");
		pros.put("cgroupcode", "cgroupcode");
		pros.put("ccomunitcode", "ccomunitcode");
		pros.put("casscomunitcode", "casscomunitcode");
		pros.put("csacomunitcode", "csacomunitcode");
		pros.put("cpucomunitcode", "cpucomunitcode");
		pros.put("cstcomunitcode", "cstcomunitcode");
		pros.put("ccacomunitcode", "ccacomunitcode");
		pros.put("cfrequency", "cfrequency");
		pros.put("ifrequency", "ifrequency");
		pros.put("idays", "idays");
		pros.put("dlastdate", "dlastdate");
		pros.put("iwastage", "iwastage");
		pros.put("bsolitude", "bsolitude");
		pros.put("centerprise", "centerprise");
		pros.put("caddress", "caddress");
		pros.put("cfile", "cfile");
		pros.put("clabel", "clabel");
		pros.put("ccheckout", "ccheckout");
		pros.put("clicence", "clicence");
		pros.put("bspecialties", "bspecialties");
		pros.put("cdefwarehouse", "cdefwarehouse");
		pros.put("ihighprice", "ihighprice");
		pros.put("iexpsalerate", "iexpsalerate");
		pros.put("cpricegroup", "cpricegroup");
		pros.put("coffergrade", "coffergrade");
		pros.put("iofferrate", "iofferrate");
		pros.put("cmonth", "cmonth");
		pros.put("iadvancedate", "iadvancedate");
		pros.put("ccurrencyname", "ccurrencyname");
		pros.put("cproduceaddress", "cproduceaddress");
		pros.put("cproducenation", "cproducenation");
		pros.put("cregisterno", "cregisterno");
		pros.put("centerno", "centerno");
		pros.put("cpackingtype", "cpackingtype");
		pros.put("cenglishname", "cenglishname");
		pros.put("bpropertycheck", "bpropertycheck");
		pros.put("cpreparationtype", "cpreparationtype");
		pros.put("ccommodity", "ccommodity");
		pros.put("irecipebatch", "irecipebatch");
		pros.put("cnotpatentname", "cnotpatentname");
		pros.put("pubufts", "pubufts");
		pros.put("bpromotsales", "bpromotsales");
		pros.put("iplanpolicy", "iplanpolicy");
		pros.put("iropmethod", "iropmethod");
		pros.put("ibatchrule", "ibatchrule");
		pros.put("fbatchincrement", "fbatchincrement");
		pros.put("iassureprovidedays", "iassureprovidedays");
		pros.put("iteststyle", "iteststyle");
		pros.put("idtmethod", "idtmethod");
		pros.put("fdtrate", "fdtrate");
		pros.put("fdtnum", "fdtnum");
		pros.put("cdtunit", "cdtunit");
		pros.put("idtstyle", "idtstyle");
		pros.put("iqtmethod", "iqtmethod");
		pros.put("pictureguid", "pictureguid");
		pros.put("bplaninv", "bplaninv");
		pros.put("bproxyforeign", "bproxyforeign");
		pros.put("batomodel", "batomodel");
		pros.put("bcheckitem", "bcheckitem");
		pros.put("bptomodel", "bptomodel");
		pros.put("bequipment", "bequipment");
		pros.put("cproductunit", "cproductunit");
		pros.put("forderuplimit", "forderuplimit");
		pros.put("cmassunit", "cmassunit");
		pros.put("fretailprice", "fretailprice");
		pros.put("cinvdepcode", "cinvdepcode");
		pros.put("ialteradvance", "ialteradvance");
		pros.put("falterbasenum", "falterbasenum");
		pros.put("cplanmethod", "cplanmethod");
		pros.put("bmps", "bmps");
		pros.put("brop", "brop");
		pros.put("breplan", "breplan");
		pros.put("csrpolicy", "csrpolicy");
		pros.put("bbillunite", "bbillunite");
		pros.put("isupplyday", "isupplyday");
		pros.put("fsupplymulti", "fsupplymulti");
		pros.put("fminsupply", "fminsupply");
		pros.put("bcutmantissa", "bcutmantissa");
		pros.put("cinvpersoncode", "cinvpersoncode");
		pros.put("iinvtfid", "iinvtfid");
		pros.put("cengineerfigno", "cengineerfigno");
		pros.put("bintotalcost", "bintotalcost");
		pros.put("isupplytype", "isupplytype");
		pros.put("bconfigfree1", "bconfigfree1");
		pros.put("bconfigfree2", "bconfigfree2");
		pros.put("bconfigfree3", "bconfigfree3");
		pros.put("bconfigfree4", "bconfigfree4");
		pros.put("bconfigfree5", "bconfigfree5");
		pros.put("bconfigfree6", "bconfigfree6");
		pros.put("bconfigfree7", "bconfigfree7");
		pros.put("bconfigfree8", "bconfigfree8");
		pros.put("bconfigfree9", "bconfigfree9");
		pros.put("bconfigfree10", "bconfigfree10");
		pros.put("idtlevel", "idtlevel");
		pros.put("cdtaql", "cdtaql");
		pros.put("bperioddt", "bperioddt");
		pros.put("cdtperiod", "cdtperiod");
		pros.put("ibigmonth", "ibigmonth");
		pros.put("ibigday", "ibigday");
		pros.put("ismallmonth", "ismallmonth");
		pros.put("ismallday", "ismallday");
		pros.put("boutinvdt", "boutinvdt");
		pros.put("bbackinvdt", "bbackinvdt");
		pros.put("ienddtstyle", "ienddtstyle");
		pros.put("bdtwarninv", "bdtwarninv");
		pros.put("fbacktaxrate", "fbacktaxrate");
		pros.put("cciqcode", "cciqcode");
		pros.put("cwgroupcode", "cwgroupcode");
		pros.put("cwunit", "cwunit");
		pros.put("fgrossw", "fgrossw");
		pros.put("cvgroupcode", "cvgroupcode");
		pros.put("cvunit", "cvunit");
		pros.put("flength", "flength");
		pros.put("fwidth", "fwidth");
		pros.put("fheight", "fheight");
		pros.put("idtucounter", "idtucounter");
		pros.put("idtdcounter", "idtdcounter");
		pros.put("ibatchcounter", "ibatchcounter");
		pros.put("cshopunit", "cshopunit");
		pros.put("cpurpersoncode", "cpurpersoncode");
		pros.put("bimportmedicine", "bimportmedicine");
		pros.put("bfirstbusimedicine", "bfirstbusimedicine");
		pros.put("bforeexpland", "bforeexpland");
		pros.put("cinvplancode", "cinvplancode");
		pros.put("fconvertrate", "fconvertrate");
		pros.put("dreplacedate", "dreplacedate");
		pros.put("binvmodel", "binvmodel");
		pros.put("bkccutmantissa", "bkccutmantissa");
		pros.put("breceiptbydt", "breceiptbydt");
		pros.put("iimptaxrate", "iimptaxrate");
		pros.put("iexptaxrate", "iexptaxrate");
		pros.put("bexpsale", "bexpsale");
		pros.put("idrawbatch", "idrawbatch");
		pros.put("bcheckbsatp", "bcheckbsatp");
		pros.put("cinvprojectcode", "cinvprojectcode");
		pros.put("itestrule", "itestrule");
		pros.put("crulecode", "crulecode");
		pros.put("bcheckfree1", "bcheckfree1");
		pros.put("bcheckfree2", "bcheckfree2");
		pros.put("bcheckfree3", "bcheckfree3");
		pros.put("bcheckfree4", "bcheckfree4");
		pros.put("bcheckfree5", "bcheckfree5");
		pros.put("bcheckfree6", "bcheckfree6");
		pros.put("bcheckfree7", "bcheckfree7");
		pros.put("bcheckfree8", "bcheckfree8");
		pros.put("bcheckfree9", "bcheckfree9");
		pros.put("bcheckfree10", "bcheckfree10");
		pros.put("bbommain", "bbommain");
		pros.put("bbomsub", "bbomsub");
		pros.put("bproductbill", "bproductbill");
		pros.put("icheckatp", "icheckatp");
		pros.put("iinvatpid", "iinvatpid");
		pros.put("iplantfday", "iplantfday");
		pros.put("ioverlapday", "ioverlapday");
		pros.put("bpiece", "bpiece");
		pros.put("bsrvitem", "bsrvitem");
		pros.put("bsrvfittings", "bsrvfittings");
		pros.put("fmaxsupply", "fmaxsupply");
		pros.put("fminsplit", "fminsplit");
		pros.put("bspecialorder", "bspecialorder");
		pros.put("btracksalebill", "btracksalebill");
		return pros;
}
public String getCinvcode()
{
	return cinvcode;
}
public void setCinvcode(String cinvcode)
{
	this.cinvcode = cinvcode;
}
public String getCinvaddcode()
{
	return cinvaddcode;
}
public void setCinvaddcode(String cinvaddcode)
{
	this.cinvaddcode = cinvaddcode;
}
public String getCinvname()
{
	return cinvname;
}
public void setCinvname(String cinvname)
{
	this.cinvname = cinvname;
}
public String getCinvstd()
{
	return cinvstd;
}
public void setCinvstd(String cinvstd)
{
	this.cinvstd = cinvstd;
}
public String getCinvccode()
{
	return cinvccode;
}
public void setCinvccode(String cinvccode)
{
	this.cinvccode = cinvccode;
}
public String getCvencode()
{
	return cvencode;
}
public void setCvencode(String cvencode)
{
	this.cvencode = cvencode;
}
public String getCreplaceitem()
{
	return creplaceitem;
}
public void setCreplaceitem(String creplaceitem)
{
	this.creplaceitem = creplaceitem;
}
public String getCposition()
{
	return cposition;
}
public void setCposition(String cposition)
{
	this.cposition = cposition;
}
public Boolean getBsale()
{
	return bsale;
}
public void setBsale(Boolean bsale)
{
	this.bsale = bsale;
}
public Boolean getBpurchase()
{
	return bpurchase;
}
public void setBpurchase(Boolean bpurchase)
{
	this.bpurchase = bpurchase;
}
public Boolean getBself()
{
	return bself;
}
public void setBself(Boolean bself)
{
	this.bself = bself;
}
public Boolean getBcomsume()
{
	return bcomsume;
}
public void setBcomsume(Boolean bcomsume)
{
	this.bcomsume = bcomsume;
}
public Boolean getBproducing()
{
	return bproducing;
}
public void setBproducing(Boolean bproducing)
{
	this.bproducing = bproducing;
}
public Boolean getBservice()
{
	return bservice;
}
public void setBservice(Boolean bservice)
{
	this.bservice = bservice;
}
public Boolean getBaccessary()
{
	return baccessary;
}
public void setBaccessary(Boolean baccessary)
{
	this.baccessary = baccessary;
}
public Double getItaxrate()
{
	return itaxrate;
}
public void setItaxrate(Double itaxrate)
{
	this.itaxrate = itaxrate;
}
public Double getIinvweight()
{
	return iinvweight;
}
public void setIinvweight(Double iinvweight)
{
	this.iinvweight = iinvweight;
}
public Double getIvolume()
{
	return ivolume;
}
public void setIvolume(Double ivolume)
{
	this.ivolume = ivolume;
}
public Double getIinvrcost()
{
	return iinvrcost;
}
public void setIinvrcost(Double iinvrcost)
{
	this.iinvrcost = iinvrcost;
}
public Double getIinvsprice()
{
	return iinvsprice;
}
public void setIinvsprice(Double iinvsprice)
{
	this.iinvsprice = iinvsprice;
}
public Double getIinvscost()
{
	return iinvscost;
}
public void setIinvscost(Double iinvscost)
{
	this.iinvscost = iinvscost;
}
public Double getIinvlscost()
{
	return iinvlscost;
}
public void setIinvlscost(Double iinvlscost)
{
	this.iinvlscost = iinvlscost;
}
public Double getIinvncost()
{
	return iinvncost;
}
public void setIinvncost(Double iinvncost)
{
	this.iinvncost = iinvncost;
}
public Double getIinvadvance()
{
	return iinvadvance;
}
public void setIinvadvance(Double iinvadvance)
{
	this.iinvadvance = iinvadvance;
}
public Double getIinvbatch()
{
	return iinvbatch;
}
public void setIinvbatch(Double iinvbatch)
{
	this.iinvbatch = iinvbatch;
}
public Double getIsafenum()
{
	return isafenum;
}
public void setIsafenum(Double isafenum)
{
	this.isafenum = isafenum;
}
public Double getItopsum()
{
	return itopsum;
}
public void setItopsum(Double itopsum)
{
	this.itopsum = itopsum;
}
public Double getIlowsum()
{
	return ilowsum;
}
public void setIlowsum(Double ilowsum)
{
	this.ilowsum = ilowsum;
}
public Double getIoverstock()
{
	return ioverstock;
}
public void setIoverstock(Double ioverstock)
{
	this.ioverstock = ioverstock;
}
public String getCinvabc()
{
	return cinvabc;
}
public void setCinvabc(String cinvabc)
{
	this.cinvabc = cinvabc;
}
public Boolean getBinvquality()
{
	return binvquality;
}
public void setBinvquality(Boolean binvquality)
{
	this.binvquality = binvquality;
}
public Boolean getBinvbatch()
{
	return binvbatch;
}
public void setBinvbatch(Boolean binvbatch)
{
	this.binvbatch = binvbatch;
}
public Boolean getBinventrust()
{
	return binventrust;
}
public void setBinventrust(Boolean binventrust)
{
	this.binventrust = binventrust;
}
public Boolean getBinvoverstock()
{
	return binvoverstock;
}
public void setBinvoverstock(Boolean binvoverstock)
{
	this.binvoverstock = binvoverstock;
}
public Timestamp getDsdate()
{
	return dsdate;
}
public void setDsdate(Timestamp dsdate)
{
	this.dsdate = dsdate;
}
public Timestamp getDedate()
{
	return dedate;
}
public void setDedate(Timestamp dedate)
{
	this.dedate = dedate;
}
public Boolean getBfree1()
{
	return bfree1;
}
public void setBfree1(Boolean bfree1)
{
	this.bfree1 = bfree1;
}
public Boolean getBfree2()
{
	return bfree2;
}
public void setBfree2(Boolean bfree2)
{
	this.bfree2 = bfree2;
}
public String getCinvdefine1()
{
	return cinvdefine1;
}
public void setCinvdefine1(String cinvdefine1)
{
	this.cinvdefine1 = cinvdefine1;
}
public String getCinvdefine2()
{
	return cinvdefine2;
}
public void setCinvdefine2(String cinvdefine2)
{
	this.cinvdefine2 = cinvdefine2;
}
public String getCinvdefine3()
{
	return cinvdefine3;
}
public void setCinvdefine3(String cinvdefine3)
{
	this.cinvdefine3 = cinvdefine3;
}
public Long getI_id()
{
	return i_id;
}
public void setI_id(Long i_id)
{
	this.i_id = i_id;
}
public Boolean getBinvtype()
{
	return binvtype;
}
public void setBinvtype(Boolean binvtype)
{
	this.binvtype = binvtype;
}
public Double getIinvmpcost()
{
	return iinvmpcost;
}
public void setIinvmpcost(Double iinvmpcost)
{
	this.iinvmpcost = iinvmpcost;
}
public String getCquality()
{
	return cquality;
}
public void setCquality(String cquality)
{
	this.cquality = cquality;
}
public Double getIinvsalecost()
{
	return iinvsalecost;
}
public void setIinvsalecost(Double iinvsalecost)
{
	this.iinvsalecost = iinvsalecost;
}
public Double getIinvscost1()
{
	return iinvscost1;
}
public void setIinvscost1(Double iinvscost1)
{
	this.iinvscost1 = iinvscost1;
}
public Double getIinvscost2()
{
	return iinvscost2;
}
public void setIinvscost2(Double iinvscost2)
{
	this.iinvscost2 = iinvscost2;
}
public Double getIinvscost3()
{
	return iinvscost3;
}
public void setIinvscost3(Double iinvscost3)
{
	this.iinvscost3 = iinvscost3;
}
public Boolean getBfree3()
{
	return bfree3;
}
public void setBfree3(Boolean bfree3)
{
	this.bfree3 = bfree3;
}
public Boolean getBfree4()
{
	return bfree4;
}
public void setBfree4(Boolean bfree4)
{
	this.bfree4 = bfree4;
}
public Boolean getBfree5()
{
	return bfree5;
}
public void setBfree5(Boolean bfree5)
{
	this.bfree5 = bfree5;
}
public Boolean getBfree6()
{
	return bfree6;
}
public void setBfree6(Boolean bfree6)
{
	this.bfree6 = bfree6;
}
public Boolean getBfree7()
{
	return bfree7;
}
public void setBfree7(Boolean bfree7)
{
	this.bfree7 = bfree7;
}
public Boolean getBfree8()
{
	return bfree8;
}
public void setBfree8(Boolean bfree8)
{
	this.bfree8 = bfree8;
}
public Boolean getBfree9()
{
	return bfree9;
}
public void setBfree9(Boolean bfree9)
{
	this.bfree9 = bfree9;
}
public Boolean getBfree10()
{
	return bfree10;
}
public void setBfree10(Boolean bfree10)
{
	this.bfree10 = bfree10;
}
public String getCcreateperson()
{
	return ccreateperson;
}
public void setCcreateperson(String ccreateperson)
{
	this.ccreateperson = ccreateperson;
}
public String getCmodifyperson()
{
	return cmodifyperson;
}
public void setCmodifyperson(String cmodifyperson)
{
	this.cmodifyperson = cmodifyperson;
}
public Timestamp getDmodifydate()
{
	return dmodifydate;
}
public void setDmodifydate(Timestamp dmodifydate)
{
	this.dmodifydate = dmodifydate;
}
public Double getFsubscribepoint()
{
	return fsubscribepoint;
}
public void setFsubscribepoint(Double fsubscribepoint)
{
	this.fsubscribepoint = fsubscribepoint;
}
public Double getFvagquantity()
{
	return fvagquantity;
}
public void setFvagquantity(Double fvagquantity)
{
	this.fvagquantity = fvagquantity;
}
public String getCvaluetype()
{
	return cvaluetype;
}
public void setCvaluetype(String cvaluetype)
{
	this.cvaluetype = cvaluetype;
}
public Boolean getBfixexch()
{
	return bfixexch;
}
public void setBfixexch(Boolean bfixexch)
{
	this.bfixexch = bfixexch;
}
public Double getFoutexcess()
{
	return foutexcess;
}
public void setFoutexcess(Double foutexcess)
{
	this.foutexcess = foutexcess;
}
public Double getFinexcess()
{
	return finexcess;
}
public void setFinexcess(Double finexcess)
{
	this.finexcess = finexcess;
}
public Long getImassdate()
{
	return imassdate;
}
public void setImassdate(Long imassdate)
{
	this.imassdate = imassdate;
}
public Long getIwarndays()
{
	return iwarndays;
}
public void setIwarndays(Long iwarndays)
{
	this.iwarndays = iwarndays;
}
public Double getFexpensesexch()
{
	return fexpensesexch;
}
public void setFexpensesexch(Double fexpensesexch)
{
	this.fexpensesexch = fexpensesexch;
}
public Boolean getBtrack()
{
	return btrack;
}
public void setBtrack(Boolean btrack)
{
	this.btrack = btrack;
}
public Boolean getBserial()
{
	return bserial;
}
public void setBserial(Boolean bserial)
{
	this.bserial = bserial;
}
public Boolean getBbarcode()
{
	return bbarcode;
}
public void setBbarcode(Boolean bbarcode)
{
	this.bbarcode = bbarcode;
}
public Long getIid()
{
	return iid;
}
public void setIid(Long iid)
{
	this.iid = iid;
}
public String getCbarcode()
{
	return cbarcode;
}
public void setCbarcode(String cbarcode)
{
	this.cbarcode = cbarcode;
}
public String getCinvdefine4()
{
	return cinvdefine4;
}
public void setCinvdefine4(String cinvdefine4)
{
	this.cinvdefine4 = cinvdefine4;
}
public String getCinvdefine5()
{
	return cinvdefine5;
}
public void setCinvdefine5(String cinvdefine5)
{
	this.cinvdefine5 = cinvdefine5;
}
public String getCinvdefine6()
{
	return cinvdefine6;
}
public void setCinvdefine6(String cinvdefine6)
{
	this.cinvdefine6 = cinvdefine6;
}
public String getCinvdefine7()
{
	return cinvdefine7;
}
public void setCinvdefine7(String cinvdefine7)
{
	this.cinvdefine7 = cinvdefine7;
}
public String getCinvdefine8()
{
	return cinvdefine8;
}
public void setCinvdefine8(String cinvdefine8)
{
	this.cinvdefine8 = cinvdefine8;
}
public String getCinvdefine9()
{
	return cinvdefine9;
}
public void setCinvdefine9(String cinvdefine9)
{
	this.cinvdefine9 = cinvdefine9;
}
public String getCinvdefine10()
{
	return cinvdefine10;
}
public void setCinvdefine10(String cinvdefine10)
{
	this.cinvdefine10 = cinvdefine10;
}
public Long getCinvdefine11()
{
	return cinvdefine11;
}
public void setCinvdefine11(Long cinvdefine11)
{
	this.cinvdefine11 = cinvdefine11;
}
public Long getCinvdefine12()
{
	return cinvdefine12;
}
public void setCinvdefine12(Long cinvdefine12)
{
	this.cinvdefine12 = cinvdefine12;
}
public Double getCinvdefine13()
{
	return cinvdefine13;
}
public void setCinvdefine13(Double cinvdefine13)
{
	this.cinvdefine13 = cinvdefine13;
}
public Double getCinvdefine14()
{
	return cinvdefine14;
}
public void setCinvdefine14(Double cinvdefine14)
{
	this.cinvdefine14 = cinvdefine14;
}
public Timestamp getCinvdefine15()
{
	return cinvdefine15;
}
public void setCinvdefine15(Timestamp cinvdefine15)
{
	this.cinvdefine15 = cinvdefine15;
}
public Timestamp getCinvdefine16()
{
	return cinvdefine16;
}
public void setCinvdefine16(Timestamp cinvdefine16)
{
	this.cinvdefine16 = cinvdefine16;
}
public String getIgrouptype()
{
	return igrouptype;
}
public void setIgrouptype(String igrouptype)
{
	this.igrouptype = igrouptype;
}
public String getCgroupcode()
{
	return cgroupcode;
}
public void setCgroupcode(String cgroupcode)
{
	this.cgroupcode = cgroupcode;
}
public String getCcomunitcode()
{
	return ccomunitcode;
}
public void setCcomunitcode(String ccomunitcode)
{
	this.ccomunitcode = ccomunitcode;
}
public String getCasscomunitcode()
{
	return casscomunitcode;
}
public void setCasscomunitcode(String casscomunitcode)
{
	this.casscomunitcode = casscomunitcode;
}
public String getCsacomunitcode()
{
	return csacomunitcode;
}
public void setCsacomunitcode(String csacomunitcode)
{
	this.csacomunitcode = csacomunitcode;
}
public String getCpucomunitcode()
{
	return cpucomunitcode;
}
public void setCpucomunitcode(String cpucomunitcode)
{
	this.cpucomunitcode = cpucomunitcode;
}
public String getCstcomunitcode()
{
	return cstcomunitcode;
}
public void setCstcomunitcode(String cstcomunitcode)
{
	this.cstcomunitcode = cstcomunitcode;
}
public String getCcacomunitcode()
{
	return ccacomunitcode;
}
public void setCcacomunitcode(String ccacomunitcode)
{
	this.ccacomunitcode = ccacomunitcode;
}
public String getCfrequency()
{
	return cfrequency;
}
public void setCfrequency(String cfrequency)
{
	this.cfrequency = cfrequency;
}
public Long getIfrequency()
{
	return ifrequency;
}
public void setIfrequency(Long ifrequency)
{
	this.ifrequency = ifrequency;
}
public Long getIdays()
{
	return idays;
}
public void setIdays(Long idays)
{
	this.idays = idays;
}
public Timestamp getDlastdate()
{
	return dlastdate;
}
public void setDlastdate(Timestamp dlastdate)
{
	this.dlastdate = dlastdate;
}
public Double getIwastage()
{
	return iwastage;
}
public void setIwastage(Double iwastage)
{
	this.iwastage = iwastage;
}
public Boolean getBsolitude()
{
	return bsolitude;
}
public void setBsolitude(Boolean bsolitude)
{
	this.bsolitude = bsolitude;
}
public String getCenterprise()
{
	return centerprise;
}
public void setCenterprise(String centerprise)
{
	this.centerprise = centerprise;
}
public String getCaddress()
{
	return caddress;
}
public void setCaddress(String caddress)
{
	this.caddress = caddress;
}
public String getCfile()
{
	return cfile;
}
public void setCfile(String cfile)
{
	this.cfile = cfile;
}
public String getClabel()
{
	return clabel;
}
public void setClabel(String clabel)
{
	this.clabel = clabel;
}
public String getCcheckout()
{
	return ccheckout;
}
public void setCcheckout(String ccheckout)
{
	this.ccheckout = ccheckout;
}
public String getClicence()
{
	return clicence;
}
public void setClicence(String clicence)
{
	this.clicence = clicence;
}
public Boolean getBspecialties()
{
	return bspecialties;
}
public void setBspecialties(Boolean bspecialties)
{
	this.bspecialties = bspecialties;
}
public String getCdefwarehouse()
{
	return cdefwarehouse;
}
public void setCdefwarehouse(String cdefwarehouse)
{
	this.cdefwarehouse = cdefwarehouse;
}
public Double getIhighprice()
{
	return ihighprice;
}
public void setIhighprice(Double ihighprice)
{
	this.ihighprice = ihighprice;
}
public Double getIexpsalerate()
{
	return iexpsalerate;
}
public void setIexpsalerate(Double iexpsalerate)
{
	this.iexpsalerate = iexpsalerate;
}
public String getCpricegroup()
{
	return cpricegroup;
}
public void setCpricegroup(String cpricegroup)
{
	this.cpricegroup = cpricegroup;
}
public String getCoffergrade()
{
	return coffergrade;
}
public void setCoffergrade(String coffergrade)
{
	this.coffergrade = coffergrade;
}
public Double getIofferrate()
{
	return iofferrate;
}
public void setIofferrate(Double iofferrate)
{
	this.iofferrate = iofferrate;
}
public String getCmonth()
{
	return cmonth;
}
public void setCmonth(String cmonth)
{
	this.cmonth = cmonth;
}
public Long getIadvancedate()
{
	return iadvancedate;
}
public void setIadvancedate(Long iadvancedate)
{
	this.iadvancedate = iadvancedate;
}
public String getCcurrencyname()
{
	return ccurrencyname;
}
public void setCcurrencyname(String ccurrencyname)
{
	this.ccurrencyname = ccurrencyname;
}
public String getCproduceaddress()
{
	return cproduceaddress;
}
public void setCproduceaddress(String cproduceaddress)
{
	this.cproduceaddress = cproduceaddress;
}
public String getCproducenation()
{
	return cproducenation;
}
public void setCproducenation(String cproducenation)
{
	this.cproducenation = cproducenation;
}
public String getCregisterno()
{
	return cregisterno;
}
public void setCregisterno(String cregisterno)
{
	this.cregisterno = cregisterno;
}
public String getCenterno()
{
	return centerno;
}
public void setCenterno(String centerno)
{
	this.centerno = centerno;
}
public String getCpackingtype()
{
	return cpackingtype;
}
public void setCpackingtype(String cpackingtype)
{
	this.cpackingtype = cpackingtype;
}
public String getCenglishname()
{
	return cenglishname;
}
public void setCenglishname(String cenglishname)
{
	this.cenglishname = cenglishname;
}
public Boolean getBpropertycheck()
{
	return bpropertycheck;
}
public void setBpropertycheck(Boolean bpropertycheck)
{
	this.bpropertycheck = bpropertycheck;
}
public String getCpreparationtype()
{
	return cpreparationtype;
}
public void setCpreparationtype(String cpreparationtype)
{
	this.cpreparationtype = cpreparationtype;
}
public String getCcommodity()
{
	return ccommodity;
}
public void setCcommodity(String ccommodity)
{
	this.ccommodity = ccommodity;
}
public String getIrecipebatch()
{
	return irecipebatch;
}
public void setIrecipebatch(String irecipebatch)
{
	this.irecipebatch = irecipebatch;
}
public String getCnotpatentname()
{
	return cnotpatentname;
}
public void setCnotpatentname(String cnotpatentname)
{
	this.cnotpatentname = cnotpatentname;
}
public String getPubufts()
{
	return pubufts;
}
public void setPubufts(String pubufts)
{
	this.pubufts = pubufts;
}
public Boolean getBpromotsales()
{
	return bpromotsales;
}
public void setBpromotsales(Boolean bpromotsales)
{
	this.bpromotsales = bpromotsales;
}
public Long getIplanpolicy()
{
	return iplanpolicy;
}
public void setIplanpolicy(Long iplanpolicy)
{
	this.iplanpolicy = iplanpolicy;
}
public Long getIropmethod()
{
	return iropmethod;
}
public void setIropmethod(Long iropmethod)
{
	this.iropmethod = iropmethod;
}
public Long getIbatchrule()
{
	return ibatchrule;
}
public void setIbatchrule(Long ibatchrule)
{
	this.ibatchrule = ibatchrule;
}
public Double getFbatchincrement()
{
	return fbatchincrement;
}
public void setFbatchincrement(Double fbatchincrement)
{
	this.fbatchincrement = fbatchincrement;
}
public Long getIassureprovidedays()
{
	return iassureprovidedays;
}
public void setIassureprovidedays(Long iassureprovidedays)
{
	this.iassureprovidedays = iassureprovidedays;
}
public Long getIteststyle()
{
	return iteststyle;
}
public void setIteststyle(Long iteststyle)
{
	this.iteststyle = iteststyle;
}
public Long getIdtmethod()
{
	return idtmethod;
}
public void setIdtmethod(Long idtmethod)
{
	this.idtmethod = idtmethod;
}
public Double getFdtrate()
{
	return fdtrate;
}
public void setFdtrate(Double fdtrate)
{
	this.fdtrate = fdtrate;
}
public Double getFdtnum()
{
	return fdtnum;
}
public void setFdtnum(Double fdtnum)
{
	this.fdtnum = fdtnum;
}
public String getCdtunit()
{
	return cdtunit;
}
public void setCdtunit(String cdtunit)
{
	this.cdtunit = cdtunit;
}
public Long getIdtstyle()
{
	return idtstyle;
}
public void setIdtstyle(Long idtstyle)
{
	this.idtstyle = idtstyle;
}
public Long getIqtmethod()
{
	return iqtmethod;
}
public void setIqtmethod(Long iqtmethod)
{
	this.iqtmethod = iqtmethod;
}
public String getPictureguid()
{
	return pictureguid;
}
public void setPictureguid(String pictureguid)
{
	this.pictureguid = pictureguid;
}
public Boolean getBplaninv()
{
	return bplaninv;
}
public void setBplaninv(Boolean bplaninv)
{
	this.bplaninv = bplaninv;
}
public Boolean getBproxyforeign()
{
	return bproxyforeign;
}
public void setBproxyforeign(Boolean bproxyforeign)
{
	this.bproxyforeign = bproxyforeign;
}
public Boolean getBatomodel()
{
	return batomodel;
}
public void setBatomodel(Boolean batomodel)
{
	this.batomodel = batomodel;
}
public Boolean getBcheckitem()
{
	return bcheckitem;
}
public void setBcheckitem(Boolean bcheckitem)
{
	this.bcheckitem = bcheckitem;
}
public Boolean getBptomodel()
{
	return bptomodel;
}
public void setBptomodel(Boolean bptomodel)
{
	this.bptomodel = bptomodel;
}
public Boolean getBequipment()
{
	return bequipment;
}
public void setBequipment(Boolean bequipment)
{
	this.bequipment = bequipment;
}
public String getCproductunit()
{
	return cproductunit;
}
public void setCproductunit(String cproductunit)
{
	this.cproductunit = cproductunit;
}
public Double getForderuplimit()
{
	return forderuplimit;
}
public void setForderuplimit(Double forderuplimit)
{
	this.forderuplimit = forderuplimit;
}
public Long getCmassunit()
{
	return cmassunit;
}
public void setCmassunit(Long cmassunit)
{
	this.cmassunit = cmassunit;
}
public Double getFretailprice()
{
	return fretailprice;
}
public void setFretailprice(Double fretailprice)
{
	this.fretailprice = fretailprice;
}
public String getCinvdepcode()
{
	return cinvdepcode;
}
public void setCinvdepcode(String cinvdepcode)
{
	this.cinvdepcode = cinvdepcode;
}
public Long getIalteradvance()
{
	return ialteradvance;
}
public void setIalteradvance(Long ialteradvance)
{
	this.ialteradvance = ialteradvance;
}
public Double getFalterbasenum()
{
	return falterbasenum;
}
public void setFalterbasenum(Double falterbasenum)
{
	this.falterbasenum = falterbasenum;
}
public String getCplanmethod()
{
	return cplanmethod;
}
public void setCplanmethod(String cplanmethod)
{
	this.cplanmethod = cplanmethod;
}
public Boolean getBmps()
{
	return bmps;
}
public void setBmps(Boolean bmps)
{
	this.bmps = bmps;
}
public Boolean getBrop()
{
	return brop;
}
public void setBrop(Boolean brop)
{
	this.brop = brop;
}
public Boolean getBreplan()
{
	return breplan;
}
public void setBreplan(Boolean breplan)
{
	this.breplan = breplan;
}
public String getCsrpolicy()
{
	return csrpolicy;
}
public void setCsrpolicy(String csrpolicy)
{
	this.csrpolicy = csrpolicy;
}
public Boolean getBbillunite()
{
	return bbillunite;
}
public void setBbillunite(Boolean bbillunite)
{
	this.bbillunite = bbillunite;
}
public Long getIsupplyday()
{
	return isupplyday;
}
public void setIsupplyday(Long isupplyday)
{
	this.isupplyday = isupplyday;
}
public Double getFsupplymulti()
{
	return fsupplymulti;
}
public void setFsupplymulti(Double fsupplymulti)
{
	this.fsupplymulti = fsupplymulti;
}
public Double getFminsupply()
{
	return fminsupply;
}
public void setFminsupply(Double fminsupply)
{
	this.fminsupply = fminsupply;
}
public Boolean getBcutmantissa()
{
	return bcutmantissa;
}
public void setBcutmantissa(Boolean bcutmantissa)
{
	this.bcutmantissa = bcutmantissa;
}
public String getCinvpersoncode()
{
	return cinvpersoncode;
}
public void setCinvpersoncode(String cinvpersoncode)
{
	this.cinvpersoncode = cinvpersoncode;
}
public Long getIinvtfid()
{
	return iinvtfid;
}
public void setIinvtfid(Long iinvtfid)
{
	this.iinvtfid = iinvtfid;
}
public String getCengineerfigno()
{
	return cengineerfigno;
}
public void setCengineerfigno(String cengineerfigno)
{
	this.cengineerfigno = cengineerfigno;
}
public Boolean getBintotalcost()
{
	return bintotalcost;
}
public void setBintotalcost(Boolean bintotalcost)
{
	this.bintotalcost = bintotalcost;
}
public Long getIsupplytype()
{
	return isupplytype;
}
public void setIsupplytype(Long isupplytype)
{
	this.isupplytype = isupplytype;
}
public Boolean getBconfigfree1()
{
	return bconfigfree1;
}
public void setBconfigfree1(Boolean bconfigfree1)
{
	this.bconfigfree1 = bconfigfree1;
}
public Boolean getBconfigfree2()
{
	return bconfigfree2;
}
public void setBconfigfree2(Boolean bconfigfree2)
{
	this.bconfigfree2 = bconfigfree2;
}
public Boolean getBconfigfree3()
{
	return bconfigfree3;
}
public void setBconfigfree3(Boolean bconfigfree3)
{
	this.bconfigfree3 = bconfigfree3;
}
public Boolean getBconfigfree4()
{
	return bconfigfree4;
}
public void setBconfigfree4(Boolean bconfigfree4)
{
	this.bconfigfree4 = bconfigfree4;
}
public Boolean getBconfigfree5()
{
	return bconfigfree5;
}
public void setBconfigfree5(Boolean bconfigfree5)
{
	this.bconfigfree5 = bconfigfree5;
}
public Boolean getBconfigfree6()
{
	return bconfigfree6;
}
public void setBconfigfree6(Boolean bconfigfree6)
{
	this.bconfigfree6 = bconfigfree6;
}
public Boolean getBconfigfree7()
{
	return bconfigfree7;
}
public void setBconfigfree7(Boolean bconfigfree7)
{
	this.bconfigfree7 = bconfigfree7;
}
public Boolean getBconfigfree8()
{
	return bconfigfree8;
}
public void setBconfigfree8(Boolean bconfigfree8)
{
	this.bconfigfree8 = bconfigfree8;
}
public Boolean getBconfigfree9()
{
	return bconfigfree9;
}
public void setBconfigfree9(Boolean bconfigfree9)
{
	this.bconfigfree9 = bconfigfree9;
}
public Boolean getBconfigfree10()
{
	return bconfigfree10;
}
public void setBconfigfree10(Boolean bconfigfree10)
{
	this.bconfigfree10 = bconfigfree10;
}
public Long getIdtlevel()
{
	return idtlevel;
}
public void setIdtlevel(Long idtlevel)
{
	this.idtlevel = idtlevel;
}
public String getCdtaql()
{
	return cdtaql;
}
public void setCdtaql(String cdtaql)
{
	this.cdtaql = cdtaql;
}
public Boolean getBperioddt()
{
	return bperioddt;
}
public void setBperioddt(Boolean bperioddt)
{
	this.bperioddt = bperioddt;
}
public String getCdtperiod()
{
	return cdtperiod;
}
public void setCdtperiod(String cdtperiod)
{
	this.cdtperiod = cdtperiod;
}
public Long getIbigmonth()
{
	return ibigmonth;
}
public void setIbigmonth(Long ibigmonth)
{
	this.ibigmonth = ibigmonth;
}
public Long getIbigday()
{
	return ibigday;
}
public void setIbigday(Long ibigday)
{
	this.ibigday = ibigday;
}
public Long getIsmallmonth()
{
	return ismallmonth;
}
public void setIsmallmonth(Long ismallmonth)
{
	this.ismallmonth = ismallmonth;
}
public Long getIsmallday()
{
	return ismallday;
}
public void setIsmallday(Long ismallday)
{
	this.ismallday = ismallday;
}
public Boolean getBoutinvdt()
{
	return boutinvdt;
}
public void setBoutinvdt(Boolean boutinvdt)
{
	this.boutinvdt = boutinvdt;
}
public Boolean getBbackinvdt()
{
	return bbackinvdt;
}
public void setBbackinvdt(Boolean bbackinvdt)
{
	this.bbackinvdt = bbackinvdt;
}
public Long getIenddtstyle()
{
	return ienddtstyle;
}
public void setIenddtstyle(Long ienddtstyle)
{
	this.ienddtstyle = ienddtstyle;
}
public Boolean getBdtwarninv()
{
	return bdtwarninv;
}
public void setBdtwarninv(Boolean bdtwarninv)
{
	this.bdtwarninv = bdtwarninv;
}
public Double getFbacktaxrate()
{
	return fbacktaxrate;
}
public void setFbacktaxrate(Double fbacktaxrate)
{
	this.fbacktaxrate = fbacktaxrate;
}
public String getCciqcode()
{
	return cciqcode;
}
public void setCciqcode(String cciqcode)
{
	this.cciqcode = cciqcode;
}
public String getCwgroupcode()
{
	return cwgroupcode;
}
public void setCwgroupcode(String cwgroupcode)
{
	this.cwgroupcode = cwgroupcode;
}
public String getCwunit()
{
	return cwunit;
}
public void setCwunit(String cwunit)
{
	this.cwunit = cwunit;
}
public Double getFgrossw()
{
	return fgrossw;
}
public void setFgrossw(Double fgrossw)
{
	this.fgrossw = fgrossw;
}
public String getCvgroupcode()
{
	return cvgroupcode;
}
public void setCvgroupcode(String cvgroupcode)
{
	this.cvgroupcode = cvgroupcode;
}
public String getCvunit()
{
	return cvunit;
}
public void setCvunit(String cvunit)
{
	this.cvunit = cvunit;
}
public Double getFlength()
{
	return flength;
}
public void setFlength(Double flength)
{
	this.flength = flength;
}
public Double getFwidth()
{
	return fwidth;
}
public void setFwidth(Double fwidth)
{
	this.fwidth = fwidth;
}
public Double getFheight()
{
	return fheight;
}
public void setFheight(Double fheight)
{
	this.fheight = fheight;
}
public Long getIdtucounter()
{
	return idtucounter;
}
public void setIdtucounter(Long idtucounter)
{
	this.idtucounter = idtucounter;
}
public Long getIdtdcounter()
{
	return idtdcounter;
}
public void setIdtdcounter(Long idtdcounter)
{
	this.idtdcounter = idtdcounter;
}
public Long getIbatchcounter()
{
	return ibatchcounter;
}
public void setIbatchcounter(Long ibatchcounter)
{
	this.ibatchcounter = ibatchcounter;
}
public String getCshopunit()
{
	return cshopunit;
}
public void setCshopunit(String cshopunit)
{
	this.cshopunit = cshopunit;
}
public String getCpurpersoncode()
{
	return cpurpersoncode;
}
public void setCpurpersoncode(String cpurpersoncode)
{
	this.cpurpersoncode = cpurpersoncode;
}
public Boolean getBimportmedicine()
{
	return bimportmedicine;
}
public void setBimportmedicine(Boolean bimportmedicine)
{
	this.bimportmedicine = bimportmedicine;
}
public Boolean getBfirstbusimedicine()
{
	return bfirstbusimedicine;
}
public void setBfirstbusimedicine(Boolean bfirstbusimedicine)
{
	this.bfirstbusimedicine = bfirstbusimedicine;
}
public Boolean getBforeexpland()
{
	return bforeexpland;
}
public void setBforeexpland(Boolean bforeexpland)
{
	this.bforeexpland = bforeexpland;
}
public String getCinvplancode()
{
	return cinvplancode;
}
public void setCinvplancode(String cinvplancode)
{
	this.cinvplancode = cinvplancode;
}
public Double getFconvertrate()
{
	return fconvertrate;
}
public void setFconvertrate(Double fconvertrate)
{
	this.fconvertrate = fconvertrate;
}
public Timestamp getDreplacedate()
{
	return dreplacedate;
}
public void setDreplacedate(Timestamp dreplacedate)
{
	this.dreplacedate = dreplacedate;
}
public Boolean getBinvmodel()
{
	return binvmodel;
}
public void setBinvmodel(Boolean binvmodel)
{
	this.binvmodel = binvmodel;
}
public Boolean getBkccutmantissa()
{
	return bkccutmantissa;
}
public void setBkccutmantissa(Boolean bkccutmantissa)
{
	this.bkccutmantissa = bkccutmantissa;
}
public Boolean getBreceiptbydt()
{
	return breceiptbydt;
}
public void setBreceiptbydt(Boolean breceiptbydt)
{
	this.breceiptbydt = breceiptbydt;
}
public Double getIimptaxrate()
{
	return iimptaxrate;
}
public void setIimptaxrate(Double iimptaxrate)
{
	this.iimptaxrate = iimptaxrate;
}
public Double getIexptaxrate()
{
	return iexptaxrate;
}
public void setIexptaxrate(Double iexptaxrate)
{
	this.iexptaxrate = iexptaxrate;
}
public Boolean getBexpsale()
{
	return bexpsale;
}
public void setBexpsale(Boolean bexpsale)
{
	this.bexpsale = bexpsale;
}
public Double getIdrawbatch()
{
	return idrawbatch;
}
public void setIdrawbatch(Double idrawbatch)
{
	this.idrawbatch = idrawbatch;
}
public Boolean getBcheckbsatp()
{
	return bcheckbsatp;
}
public void setBcheckbsatp(Boolean bcheckbsatp)
{
	this.bcheckbsatp = bcheckbsatp;
}
public String getCinvprojectcode()
{
	return cinvprojectcode;
}
public void setCinvprojectcode(String cinvprojectcode)
{
	this.cinvprojectcode = cinvprojectcode;
}
public Long getItestrule()
{
	return itestrule;
}
public void setItestrule(Long itestrule)
{
	this.itestrule = itestrule;
}
public String getCrulecode()
{
	return crulecode;
}
public void setCrulecode(String crulecode)
{
	this.crulecode = crulecode;
}
public Boolean getBcheckfree1()
{
	return bcheckfree1;
}
public void setBcheckfree1(Boolean bcheckfree1)
{
	this.bcheckfree1 = bcheckfree1;
}
public Boolean getBcheckfree2()
{
	return bcheckfree2;
}
public void setBcheckfree2(Boolean bcheckfree2)
{
	this.bcheckfree2 = bcheckfree2;
}
public Boolean getBcheckfree3()
{
	return bcheckfree3;
}
public void setBcheckfree3(Boolean bcheckfree3)
{
	this.bcheckfree3 = bcheckfree3;
}
public Boolean getBcheckfree4()
{
	return bcheckfree4;
}
public void setBcheckfree4(Boolean bcheckfree4)
{
	this.bcheckfree4 = bcheckfree4;
}
public Boolean getBcheckfree5()
{
	return bcheckfree5;
}
public void setBcheckfree5(Boolean bcheckfree5)
{
	this.bcheckfree5 = bcheckfree5;
}
public Boolean getBcheckfree6()
{
	return bcheckfree6;
}
public void setBcheckfree6(Boolean bcheckfree6)
{
	this.bcheckfree6 = bcheckfree6;
}
public Boolean getBcheckfree7()
{
	return bcheckfree7;
}
public void setBcheckfree7(Boolean bcheckfree7)
{
	this.bcheckfree7 = bcheckfree7;
}
public Boolean getBcheckfree8()
{
	return bcheckfree8;
}
public void setBcheckfree8(Boolean bcheckfree8)
{
	this.bcheckfree8 = bcheckfree8;
}
public Boolean getBcheckfree9()
{
	return bcheckfree9;
}
public void setBcheckfree9(Boolean bcheckfree9)
{
	this.bcheckfree9 = bcheckfree9;
}
public Boolean getBcheckfree10()
{
	return bcheckfree10;
}
public void setBcheckfree10(Boolean bcheckfree10)
{
	this.bcheckfree10 = bcheckfree10;
}
public Boolean getBbommain()
{
	return bbommain;
}
public void setBbommain(Boolean bbommain)
{
	this.bbommain = bbommain;
}
public Boolean getBbomsub()
{
	return bbomsub;
}
public void setBbomsub(Boolean bbomsub)
{
	this.bbomsub = bbomsub;
}
public Boolean getBproductbill()
{
	return bproductbill;
}
public void setBproductbill(Boolean bproductbill)
{
	this.bproductbill = bproductbill;
}
public Long getIcheckatp()
{
	return icheckatp;
}
public void setIcheckatp(Long icheckatp)
{
	this.icheckatp = icheckatp;
}
public Long getIinvatpid()
{
	return iinvatpid;
}
public void setIinvatpid(Long iinvatpid)
{
	this.iinvatpid = iinvatpid;
}
public Long getIplantfday()
{
	return iplantfday;
}
public void setIplantfday(Long iplantfday)
{
	this.iplantfday = iplantfday;
}
public Long getIoverlapday()
{
	return ioverlapday;
}
public void setIoverlapday(Long ioverlapday)
{
	this.ioverlapday = ioverlapday;
}
public Boolean getBpiece()
{
	return bpiece;
}
public void setBpiece(Boolean bpiece)
{
	this.bpiece = bpiece;
}
public Boolean getBsrvitem()
{
	return bsrvitem;
}
public void setBsrvitem(Boolean bsrvitem)
{
	this.bsrvitem = bsrvitem;
}
public Boolean getBsrvfittings()
{
	return bsrvfittings;
}
public void setBsrvfittings(Boolean bsrvfittings)
{
	this.bsrvfittings = bsrvfittings;
}
public Double getFmaxsupply()
{
	return fmaxsupply;
}
public void setFmaxsupply(Double fmaxsupply)
{
	this.fmaxsupply = fmaxsupply;
}
public Double getFminsplit()
{
	return fminsplit;
}
public void setFminsplit(Double fminsplit)
{
	this.fminsplit = fminsplit;
}
public Boolean getBspecialorder()
{
	return bspecialorder;
}
public void setBspecialorder(Boolean bspecialorder)
{
	this.bspecialorder = bspecialorder;
}
public Boolean getBtracksalebill()
{
	return btracksalebill;
}
public void setBtracksalebill(Boolean btracksalebill)
{
	this.btracksalebill = btracksalebill;
}
@Override
public String toString()
{
	return JSON.toJSONString(this);
}
}

