package com.u8.obj;

import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import com.alibaba.fastjson.JSON;

public class SoSodetailsObj extends BaseDbObj
{
	// private Long autoid;
	private String csocode;
	private String cinvcode;
	private Timestamp dpredate;
	private Double iquantity;
	private Double inum;
	private Double iquotedprice;
	private Double iunitprice;
	private Double itaxunitprice;
	private Double imoney;
	private Double itax;
	private Double isum;
	private Double idiscount;
	private Double inatunitprice;
	private Double inatmoney;
	private Double inattax;
	private Double inatsum;
	private Double inatdiscount;
	private Double ifhnum;
	private Double ifhquantity;
	private Double ifhmoney;
	private Double ikpquantity;
	private Double ikpnum;
	private Double ikpmoney;
	private String cmemo;
	private String cfree1;
	private String cfree2;
	private Long bfh;
	private Long isosid;
	private String kl;
	private String kl2;
	private String cinvname;
	private double itaxrate;
	private String cdefine22;
	private String cdefine23;
	private String cdefine24;
	private String cdefine25;
	private Double cdefine26;
	private Double cdefine27;
	private String citemcode;
	private String citem_class;
	private String citemname;
	private String citem_cname;
	private String cfree3;
	private String cfree4;
	private String cfree5;
	private String cfree6;
	private String cfree7;
	private String cfree8;
	private String cfree9;
	private String cfree10;
	private String iinvexchrate;
	private String cunitid;
	private Long id;
	private String cdefine28;
	private String cdefine29;
	private String cdefine30;
	private String cdefine31;
	private String cdefine32;
	private String cdefine33;
	private Long cdefine34;
	private Long cdefine35;
	private Timestamp cdefine36;
	private Timestamp cdefine37;
	private String fpurquan;
	private String fsalecost;
	private String fsaleprice;
	private String cquocode;
	private Long iquoid;
	private String cscloser;
	private Timestamp dpremodate;
	private Long irowno;
	private Long icusbomid;
	private String imoquantity;
	private String ccontractid;
	private String ccontracttagcode;
	private String ccontractrowguid;
	private Long ippartseqid;
	private Long ippartid;
	private String ippartqty;
	private String ccusinvcode;
	private String ccusinvname;
	private String iprekeepquantity;
	private String iprekeepnum;
	private String iprekeeptotquantity;
	private String iprekeeptotnum;
	private Timestamp dreleasedate;
	private String fcusminprice;
	private String fimquantity;
	private String fomquantity;
	private Boolean ballpurchase;
	private String finquantity;
	private String icostquantity;
	private String icostsum;
	private String foutquantity;
	private String foutnum;
	private String iexchsum;
	private String imoneysum;
	// private String dufts;
	private Long iaoids;
	private String cpreordercode;
	private String fretquantity;
	private String fretnum;
	private Timestamp dbclosedate;
	private Timestamp dbclosesystime;
	private Boolean borderbom;
	private Boolean borderbomover;
	private Long idemandtype;
	private String cdemandcode;
	private String cdemandmemo;
	private String fpursum;
	private String fpurbillqty;
	private String fpurbillsum;
	private Long iimid;
	private String ccorvouchtype;
	private Long icorrowno;
	private Boolean busecusbom;
	private String body_outid;

	@Override
	public String findKeyColumnName()
	{
		return "cdefine34";
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
		return "so_sodetails";
	}

	@Override
	public String findDefaultOrderBy()
	{
		return super.findDefaultOrderBy();
	}

	@Override
	public String getBasePath()
	{
		return "SoSodetails";
	}

	@Override
	public String getCnName()
	{
		return "销售单明细";
	}

	@Override
	public List<String> getUniqueIndexProperties()
	{
		List<String> l = new ArrayList<String>();
		l.add("csocode"); // 销售订单号
		l.add("cinvcode"); // 存货编码
		return l;
	}

	public LinkedHashMap<String, String> getProperties()
	{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		pros.put("autoid", "autoid");
		pros.put("csocode", "csocode");
		pros.put("cinvcode", "cinvcode");
		pros.put("dpredate", "dpredate");
		pros.put("iquantity", "iquantity");
		pros.put("inum", "inum");
		pros.put("iquotedprice", "iquotedprice");
		pros.put("iunitprice", "iunitprice");
		pros.put("itaxunitprice", "itaxunitprice");
		pros.put("imoney", "imoney");
		pros.put("itax", "itax");
		pros.put("isum", "isum");
		pros.put("idiscount", "idiscount");
		pros.put("inatunitprice", "inatunitprice");
		pros.put("inatmoney", "inatmoney");
		pros.put("inattax", "inattax");
		pros.put("inatsum", "inatsum");
		pros.put("inatdiscount", "inatdiscount");
		pros.put("ifhnum", "ifhnum");
		pros.put("ifhquantity", "ifhquantity");
		pros.put("ifhmoney", "ifhmoney");
		pros.put("ikpquantity", "ikpquantity");
		pros.put("ikpnum", "ikpnum");
		pros.put("ikpmoney", "ikpmoney");
		pros.put("cmemo", "cmemo");
		pros.put("cfree1", "cfree1");
		pros.put("cfree2", "cfree2");
		pros.put("bfh", "bfh");
		pros.put("isosid", "isosid");
		pros.put("kl", "kl");
		pros.put("kl2", "kl2");
		pros.put("cinvname", "cinvname");
		pros.put("itaxrate", "itaxrate");
		pros.put("cdefine22", "cdefine22");
		pros.put("cdefine23", "cdefine23");
		pros.put("cdefine24", "cdefine24");
		pros.put("cdefine25", "cdefine25");
		pros.put("cdefine26", "cdefine26");
		pros.put("cdefine27", "cdefine27");
		pros.put("citemcode", "citemcode");
		pros.put("citem_class", "citem_class");
		pros.put("citemname", "citemname");
		pros.put("citem_cname", "citem_cname");
		pros.put("cfree3", "cfree3");
		pros.put("cfree4", "cfree4");
		pros.put("cfree5", "cfree5");
		pros.put("cfree6", "cfree6");
		pros.put("cfree7", "cfree7");
		pros.put("cfree8", "cfree8");
		pros.put("cfree9", "cfree9");
		pros.put("cfree10", "cfree10");
		pros.put("iinvexchrate", "iinvexchrate");
		pros.put("cunitid", "cunitid");
		pros.put("id", "id");
		pros.put("cdefine28", "cdefine28");
		pros.put("cdefine29", "cdefine29");
		pros.put("cdefine30", "cdefine30");
		pros.put("cdefine31", "cdefine31");
		pros.put("cdefine32", "cdefine32");
		pros.put("cdefine33", "cdefine33");
		pros.put("cdefine34", "cdefine34");
		pros.put("cdefine35", "cdefine35");
		pros.put("cdefine36", "cdefine36");
		pros.put("cdefine37", "cdefine37");
		pros.put("fpurquan", "fpurquan");
		pros.put("fsalecost", "fsalecost");
		pros.put("fsaleprice", "fsaleprice");
		pros.put("cquocode", "cquocode");
		pros.put("iquoid", "iquoid");
		pros.put("cscloser", "cscloser");
		pros.put("dpremodate", "dpremodate");
		pros.put("irowno", "irowno");
		pros.put("icusbomid", "icusbomid");
		pros.put("imoquantity", "imoquantity");
		pros.put("ccontractid", "ccontractid");
		pros.put("ccontracttagcode", "ccontracttagcode");
		pros.put("ccontractrowguid", "ccontractrowguid");
		pros.put("ippartseqid", "ippartseqid");
		pros.put("ippartid", "ippartid");
		pros.put("ippartqty", "ippartqty");
		pros.put("ccusinvcode", "ccusinvcode");
		pros.put("ccusinvname", "ccusinvname");
		pros.put("iprekeepquantity", "iprekeepquantity");
		pros.put("iprekeepnum", "iprekeepnum");
		pros.put("iprekeeptotquantity", "iprekeeptotquantity");
		pros.put("iprekeeptotnum", "iprekeeptotnum");
		pros.put("dreleasedate", "dreleasedate");
		pros.put("fcusminprice", "fcusminprice");
		pros.put("fimquantity", "fimquantity");
		pros.put("fomquantity", "fomquantity");
		pros.put("ballpurchase", "ballpurchase");
		pros.put("finquantity", "finquantity");
		pros.put("icostquantity", "icostquantity");
		pros.put("icostsum", "icostsum");
		pros.put("foutquantity", "foutquantity");
		pros.put("foutnum", "foutnum");
		pros.put("iexchsum", "iexchsum");
		pros.put("imoneysum", "imoneysum");
		pros.put("dufts", "dufts");
		pros.put("iaoids", "iaoids");
		pros.put("cpreordercode", "cpreordercode");
		pros.put("fretquantity", "fretquantity");
		pros.put("fretnum", "fretnum");
		pros.put("dbclosedate", "dbclosedate");
		pros.put("dbclosesystime", "dbclosesystime");
		pros.put("borderbom", "borderbom");
		pros.put("borderbomover", "borderbomover");
		pros.put("idemandtype", "idemandtype");
		pros.put("cdemandcode", "cdemandcode");
		pros.put("cdemandmemo", "cdemandmemo");
		pros.put("fpursum", "fpursum");
		pros.put("fpurbillqty", "fpurbillqty");
		pros.put("fpurbillsum", "fpurbillsum");
		pros.put("iimid", "iimid");
		pros.put("ccorvouchtype", "ccorvouchtype");
		pros.put("icorrowno", "icorrowno");
		pros.put("busecusbom", "busecusbom");
		pros.put("body_outid", "body_outid");
		return pros;
	}

	// public Long getAutoid()
	// {
	// return autoid;
	// }
	//
	// public void setAutoid(Long autoid)
	// {
	// this.autoid = autoid;
	// }

	public String getBody_outid()
	{
		return body_outid;
	}

	public void setBody_outid(String body_outid)
	{
		this.body_outid = body_outid;
	}

	public String getDingdan_bianhao()
	{
		return cdefine28;
	}

	public void setDingdan_bianhao(String dingdan_bianhao)
	{
		this.setCdefine28(dingdan_bianhao);
	}

	public String getWaibuxitong_bianhao()
	{
		return cdefine29;
	}

	public void setWaibuxitong_bianhao(String waibuxitong_bianhao)
	{
		this.setCdefine29(waibuxitong_bianhao);
	}

	@Override
	public String toString()
	{
		return JSON.toJSONString(this);
	}

	public String getCsocode()
	{
		return csocode;
	}

	public void setCsocode(String csocode)
	{
		this.csocode = csocode;
	}

	public String getCinvcode()
	{
		return cinvcode;
	}

	public void setCinvcode(String cinvcode)
	{
		this.cinvcode = cinvcode;
	}

	public Timestamp getDpredate()
	{
		return dpredate;
	}

	public void setDpredate(Timestamp dpredate)
	{
		this.dpredate = dpredate;
	}

	public Double getIquantity()
	{
		return iquantity;
	}

	public void setIquantity(Double iquantity)
	{
		this.iquantity = iquantity;
	}

	public Double getInum()
	{
		return inum;
	}

	public void setInum(Double inum)
	{
		this.inum = inum;
	}

	public Double getIquotedprice()
	{
		return iquotedprice;
	}

	public void setIquotedprice(Double iquotedprice)
	{
		this.iquotedprice = iquotedprice;
	}

	public Double getIunitprice()
	{
		// return iunitprice;
		// 原币无税单价 
		return itaxunitprice / (1 + (itaxrate/100));
	}

	public Double getImoney()
	{
		// return imoney;
		// 原币无税金额 
		return getIquantity() * getIunitprice();
	}

	public Double getItax()
	{
		// return itax;
		// 原币税额 
		return getIsum() - getImoney();
	}

	public Double getIsum()
	{
		// return isum;
		// 原币价税合计
		return getIquantity() * getItaxunitprice();
	}

	public Double getInatunitprice()
	{
//		return inatunitprice;
		return getIunitprice();
	}

	public Double getInatsum()
	{
//		return inatsum;
		return getIsum();
	}

	public Double getInattax()
	{
//		return inattax;
		return getItax();
	}

	public Double getInatmoney()
	{
//		return inatmoney;
		return getImoney();
	}

	public void setInatunitprice(Double inatunitprice)
	{
		this.inatunitprice = inatunitprice;
	}

	public void setInatmoney(Double inatmoney)
	{
		this.inatmoney = inatmoney;
	}

	public void setInattax(Double inattax)
	{
		this.inattax = inattax;
	}

	public void setInatsum(Double inatsum)
	{
		this.inatsum = inatsum;
	}

	public void setIunitprice(Double iunitprice)
	{
		this.iunitprice = iunitprice;
	}

	public Double getItaxunitprice()
	{
		return itaxunitprice;
	}

	public void setItaxunitprice(Double itaxunitprice)
	{
		this.itaxunitprice = itaxunitprice;
	}

	public void setImoney(Double imoney)
	{
		this.imoney = imoney;
	}

	public void setItax(Double itax)
	{
		this.itax = itax;
	}

	public void setIsum(Double isum)
	{
		this.isum = isum;
	}

	public Double getIdiscount()
	{
		return idiscount;
	}

	public void setIdiscount(Double idiscount)
	{
		this.idiscount = idiscount;
	}

	public Double getInatdiscount()
	{
		return inatdiscount;
	}

	public void setInatdiscount(Double inatdiscount)
	{
		this.inatdiscount = inatdiscount;
	}

	public Double getIfhnum()
	{
		return ifhnum;
	}

	public void setIfhnum(Double ifhnum)
	{
		this.ifhnum = ifhnum;
	}

	public Double getIfhquantity()
	{
		return ifhquantity;
	}

	public void setIfhquantity(Double ifhquantity)
	{
		this.ifhquantity = ifhquantity;
	}

	public Double getIfhmoney()
	{
		return ifhmoney;
	}

	public void setIfhmoney(Double ifhmoney)
	{
		this.ifhmoney = ifhmoney;
	}

	public Double getIkpquantity()
	{
		return ikpquantity;
	}

	public void setIkpquantity(Double ikpquantity)
	{
		this.ikpquantity = ikpquantity;
	}

	public Double getIkpnum()
	{
		return ikpnum;
	}

	public void setIkpnum(Double ikpnum)
	{
		this.ikpnum = ikpnum;
	}

	public Double getIkpmoney()
	{
		return ikpmoney;
	}

	public void setIkpmoney(Double ikpmoney)
	{
		this.ikpmoney = ikpmoney;
	}

	public String getCmemo()
	{
		return cmemo;
	}

	public void setCmemo(String cmemo)
	{
		this.cmemo = cmemo;
	}

	public String getCfree1()
	{
		return cfree1;
	}

	public void setCfree1(String cfree1)
	{
		this.cfree1 = cfree1;
	}

	public String getCfree2()
	{
		return cfree2;
	}

	public void setCfree2(String cfree2)
	{
		this.cfree2 = cfree2;
	}

	public Long getBfh()
	{
		return bfh;
	}

	public void setBfh(Long bfh)
	{
		this.bfh = bfh;
	}

	public Long getIsosid()
	{
		return isosid;
	}

	public void setIsosid(Long isosid)
	{
		this.isosid = isosid;
	}

	public String getKl()
	{
		return kl;
	}

	public void setKl(String kl)
	{
		this.kl = kl;
	}

	public String getKl2()
	{
		return kl2;
	}

	public void setKl2(String kl2)
	{
		this.kl2 = kl2;
	}

	public String getCinvname()
	{
		return cinvname;
	}

	public void setCinvname(String cinvname)
	{
		this.cinvname = cinvname;
	}

	public double getItaxrate()
	{
		return itaxrate;
	}

	public void setItaxrate(double itaxrate)
	{
		this.itaxrate = itaxrate;
	}

	public String getCdefine22()
	{
		return cdefine22;
	}

	public void setCdefine22(String cdefine22)
	{
		this.cdefine22 = cdefine22;
	}

	public String getCdefine23()
	{
		return cdefine23;
	}

	public void setCdefine23(String cdefine23)
	{
		this.cdefine23 = cdefine23;
	}

	public String getCdefine24()
	{
		return cdefine24;
	}

	public void setCdefine24(String cdefine24)
	{
		this.cdefine24 = cdefine24;
	}

	public String getCdefine25()
	{
		return cdefine25;
	}

	public void setCdefine25(String cdefine25)
	{
		this.cdefine25 = cdefine25;
	}

	public Double getCdefine26()
	{
		return cdefine26;
	}

	public void setCdefine26(Double cdefine26)
	{
		this.cdefine26 = cdefine26;
	}

	public Double getCdefine27()
	{
		return cdefine27;
	}

	public void setCdefine27(Double cdefine27)
	{
		this.cdefine27 = cdefine27;
	}

	public String getCitemcode()
	{
		return citemcode;
	}

	public void setCitemcode(String citemcode)
	{
		this.citemcode = citemcode;
	}

	public String getCitem_class()
	{
		return citem_class;
	}

	public void setCitem_class(String citem_class)
	{
		this.citem_class = citem_class;
	}

	public String getCitemname()
	{
		return citemname;
	}

	public void setCitemname(String citemname)
	{
		this.citemname = citemname;
	}

	public String getCitem_cname()
	{
		return citem_cname;
	}

	public void setCitem_cname(String citem_cname)
	{
		this.citem_cname = citem_cname;
	}

	public String getCfree3()
	{
		return cfree3;
	}

	public void setCfree3(String cfree3)
	{
		this.cfree3 = cfree3;
	}

	public String getCfree4()
	{
		return cfree4;
	}

	public void setCfree4(String cfree4)
	{
		this.cfree4 = cfree4;
	}

	public String getCfree5()
	{
		return cfree5;
	}

	public void setCfree5(String cfree5)
	{
		this.cfree5 = cfree5;
	}

	public String getCfree6()
	{
		return cfree6;
	}

	public void setCfree6(String cfree6)
	{
		this.cfree6 = cfree6;
	}

	public String getCfree7()
	{
		return cfree7;
	}

	public void setCfree7(String cfree7)
	{
		this.cfree7 = cfree7;
	}

	public String getCfree8()
	{
		return cfree8;
	}

	public void setCfree8(String cfree8)
	{
		this.cfree8 = cfree8;
	}

	public String getCfree9()
	{
		return cfree9;
	}

	public void setCfree9(String cfree9)
	{
		this.cfree9 = cfree9;
	}

	public String getCfree10()
	{
		return cfree10;
	}

	public void setCfree10(String cfree10)
	{
		this.cfree10 = cfree10;
	}

	public String getIinvexchrate()
	{
		return iinvexchrate;
	}

	public void setIinvexchrate(String iinvexchrate)
	{
		this.iinvexchrate = iinvexchrate;
	}

	public String getCunitid()
	{
		return cunitid;
	}

	public void setCunitid(String cunitid)
	{
		this.cunitid = cunitid;
	}

	public Long getId()
	{
		return id;
	}

	public void setId(Long id)
	{
		this.id = id;
	}

	public String getCdefine28()
	{
		return cdefine28;
	}

	public void setCdefine28(String cdefine28)
	{
		this.cdefine28 = cdefine28;
	}

	public String getCdefine29()
	{
		return cdefine29;
	}

	public void setCdefine29(String cdefine29)
	{
		this.cdefine29 = cdefine29;
	}

	public String getCdefine30()
	{
		return cdefine30;
	}

	public void setCdefine30(String cdefine30)
	{
		this.cdefine30 = cdefine30;
	}

	public String getCdefine31()
	{
		return cdefine31;
	}

	public void setCdefine31(String cdefine31)
	{
		this.cdefine31 = cdefine31;
	}

	public String getCdefine32()
	{
		return cdefine32;
	}

	public void setCdefine32(String cdefine32)
	{
		this.cdefine32 = cdefine32;
	}

	public String getCdefine33()
	{
		return cdefine33;
	}

	public void setCdefine33(String cdefine33)
	{
		this.cdefine33 = cdefine33;
	}

	public Long getCdefine34()
	{
		return cdefine34;
	}

	public void setCdefine34(Long cdefine34)
	{
		this.cdefine34 = cdefine34;
	}

	public Long getCdefine35()
	{
		return cdefine35;
	}

	public void setCdefine35(Long cdefine35)
	{
		this.cdefine35 = cdefine35;
	}

	public Timestamp getCdefine36()
	{
		return cdefine36;
	}

	public void setCdefine36(Timestamp cdefine36)
	{
		this.cdefine36 = cdefine36;
	}

	public Timestamp getCdefine37()
	{
		return cdefine37;
	}

	public void setCdefine37(Timestamp cdefine37)
	{
		this.cdefine37 = cdefine37;
	}

	public String getFpurquan()
	{
		return fpurquan;
	}

	public void setFpurquan(String fpurquan)
	{
		this.fpurquan = fpurquan;
	}

	public String getFsalecost()
	{
		return fsalecost;
	}

	public void setFsalecost(String fsalecost)
	{
		this.fsalecost = fsalecost;
	}

	public String getFsaleprice()
	{
		return fsaleprice;
	}

	public void setFsaleprice(String fsaleprice)
	{
		this.fsaleprice = fsaleprice;
	}

	public String getCquocode()
	{
		return cquocode;
	}

	public void setCquocode(String cquocode)
	{
		this.cquocode = cquocode;
	}

	public Long getIquoid()
	{
		return iquoid;
	}

	public void setIquoid(Long iquoid)
	{
		this.iquoid = iquoid;
	}

	public String getCscloser()
	{
		return cscloser;
	}

	public void setCscloser(String cscloser)
	{
		this.cscloser = cscloser;
	}

	public Timestamp getDpremodate()
	{
		return dpremodate;
	}

	public void setDpremodate(Timestamp dpremodate)
	{
		this.dpremodate = dpremodate;
	}

	public Long getIrowno()
	{
		return irowno;
	}

	public void setIrowno(Long irowno)
	{
		this.irowno = irowno;
	}

	public Long getIcusbomid()
	{
		return icusbomid;
	}

	public void setIcusbomid(Long icusbomid)
	{
		this.icusbomid = icusbomid;
	}

	public String getImoquantity()
	{
		return imoquantity;
	}

	public void setImoquantity(String imoquantity)
	{
		this.imoquantity = imoquantity;
	}

	public String getCcontractid()
	{
		return ccontractid;
	}

	public void setCcontractid(String ccontractid)
	{
		this.ccontractid = ccontractid;
	}

	public String getCcontracttagcode()
	{
		return ccontracttagcode;
	}

	public void setCcontracttagcode(String ccontracttagcode)
	{
		this.ccontracttagcode = ccontracttagcode;
	}

	public String getCcontractrowguid()
	{
		return ccontractrowguid;
	}

	public void setCcontractrowguid(String ccontractrowguid)
	{
		this.ccontractrowguid = ccontractrowguid;
	}

	public Long getIppartseqid()
	{
		return ippartseqid;
	}

	public void setIppartseqid(Long ippartseqid)
	{
		this.ippartseqid = ippartseqid;
	}

	public Long getIppartid()
	{
		return ippartid;
	}

	public void setIppartid(Long ippartid)
	{
		this.ippartid = ippartid;
	}

	public String getIppartqty()
	{
		return ippartqty;
	}

	public void setIppartqty(String ippartqty)
	{
		this.ippartqty = ippartqty;
	}

	public String getCcusinvcode()
	{
		return ccusinvcode;
	}

	public void setCcusinvcode(String ccusinvcode)
	{
		this.ccusinvcode = ccusinvcode;
	}

	public String getCcusinvname()
	{
		return ccusinvname;
	}

	public void setCcusinvname(String ccusinvname)
	{
		this.ccusinvname = ccusinvname;
	}

	public String getIprekeepquantity()
	{
		return iprekeepquantity;
	}

	public void setIprekeepquantity(String iprekeepquantity)
	{
		this.iprekeepquantity = iprekeepquantity;
	}

	public String getIprekeepnum()
	{
		return iprekeepnum;
	}

	public void setIprekeepnum(String iprekeepnum)
	{
		this.iprekeepnum = iprekeepnum;
	}

	public String getIprekeeptotquantity()
	{
		return iprekeeptotquantity;
	}

	public void setIprekeeptotquantity(String iprekeeptotquantity)
	{
		this.iprekeeptotquantity = iprekeeptotquantity;
	}

	public String getIprekeeptotnum()
	{
		return iprekeeptotnum;
	}

	public void setIprekeeptotnum(String iprekeeptotnum)
	{
		this.iprekeeptotnum = iprekeeptotnum;
	}

	public Timestamp getDreleasedate()
	{
		return dreleasedate;
	}

	public void setDreleasedate(Timestamp dreleasedate)
	{
		this.dreleasedate = dreleasedate;
	}

	public String getFcusminprice()
	{
		return fcusminprice;
	}

	public void setFcusminprice(String fcusminprice)
	{
		this.fcusminprice = fcusminprice;
	}

	public String getFimquantity()
	{
		return fimquantity;
	}

	public void setFimquantity(String fimquantity)
	{
		this.fimquantity = fimquantity;
	}

	public String getFomquantity()
	{
		return fomquantity;
	}

	public void setFomquantity(String fomquantity)
	{
		this.fomquantity = fomquantity;
	}

	public Boolean getBallpurchase()
	{
		return ballpurchase;
	}

	public void setBallpurchase(Boolean ballpurchase)
	{
		this.ballpurchase = ballpurchase;
	}

	public String getFinquantity()
	{
		return finquantity;
	}

	public void setFinquantity(String finquantity)
	{
		this.finquantity = finquantity;
	}

	public String getIcostquantity()
	{
		return icostquantity;
	}

	public void setIcostquantity(String icostquantity)
	{
		this.icostquantity = icostquantity;
	}

	public String getIcostsum()
	{
		return icostsum;
	}

	public void setIcostsum(String icostsum)
	{
		this.icostsum = icostsum;
	}

	public String getFoutquantity()
	{
		return foutquantity;
	}

	public void setFoutquantity(String foutquantity)
	{
		this.foutquantity = foutquantity;
	}

	public String getFoutnum()
	{
		return foutnum;
	}

	public void setFoutnum(String foutnum)
	{
		this.foutnum = foutnum;
	}

	public String getIexchsum()
	{
		return iexchsum;
	}

	public void setIexchsum(String iexchsum)
	{
		this.iexchsum = iexchsum;
	}

	public String getImoneysum()
	{
		return imoneysum;
	}

	public void setImoneysum(String imoneysum)
	{
		this.imoneysum = imoneysum;
	}

	public Long getIaoids()
	{
		return iaoids;
	}

	public void setIaoids(Long iaoids)
	{
		this.iaoids = iaoids;
	}

	public String getCpreordercode()
	{
		return cpreordercode;
	}

	public void setCpreordercode(String cpreordercode)
	{
		this.cpreordercode = cpreordercode;
	}

	public String getFretquantity()
	{
		return fretquantity;
	}

	public void setFretquantity(String fretquantity)
	{
		this.fretquantity = fretquantity;
	}

	public String getFretnum()
	{
		return fretnum;
	}

	public void setFretnum(String fretnum)
	{
		this.fretnum = fretnum;
	}

	public Timestamp getDbclosedate()
	{
		return dbclosedate;
	}

	public void setDbclosedate(Timestamp dbclosedate)
	{
		this.dbclosedate = dbclosedate;
	}

	public Timestamp getDbclosesystime()
	{
		return dbclosesystime;
	}

	public void setDbclosesystime(Timestamp dbclosesystime)
	{
		this.dbclosesystime = dbclosesystime;
	}

	public Boolean getBorderbom()
	{
		return borderbom;
	}

	public void setBorderbom(Boolean borderbom)
	{
		this.borderbom = borderbom;
	}

	public Boolean getBorderbomover()
	{
		return borderbomover;
	}

	public void setBorderbomover(Boolean borderbomover)
	{
		this.borderbomover = borderbomover;
	}

	public Long getIdemandtype()
	{
		return idemandtype;
	}

	public void setIdemandtype(Long idemandtype)
	{
		this.idemandtype = idemandtype;
	}

	public String getCdemandcode()
	{
		return cdemandcode;
	}

	public void setCdemandcode(String cdemandcode)
	{
		this.cdemandcode = cdemandcode;
	}

	public String getCdemandmemo()
	{
		return cdemandmemo;
	}

	public void setCdemandmemo(String cdemandmemo)
	{
		this.cdemandmemo = cdemandmemo;
	}

	public String getFpursum()
	{
		return fpursum;
	}

	public void setFpursum(String fpursum)
	{
		this.fpursum = fpursum;
	}

	public String getFpurbillqty()
	{
		return fpurbillqty;
	}

	public void setFpurbillqty(String fpurbillqty)
	{
		this.fpurbillqty = fpurbillqty;
	}

	public String getFpurbillsum()
	{
		return fpurbillsum;
	}

	public void setFpurbillsum(String fpurbillsum)
	{
		this.fpurbillsum = fpurbillsum;
	}

	public Long getIimid()
	{
		return iimid;
	}

	public void setIimid(Long iimid)
	{
		this.iimid = iimid;
	}

	public String getCcorvouchtype()
	{
		return ccorvouchtype;
	}

	public void setCcorvouchtype(String ccorvouchtype)
	{
		this.ccorvouchtype = ccorvouchtype;
	}

	public Long getIcorrowno()
	{
		return icorrowno;
	}

	public void setIcorrowno(Long icorrowno)
	{
		this.icorrowno = icorrowno;
	}

	public Boolean getBusecusbom()
	{
		return busecusbom;
	}

	public void setBusecusbom(Boolean busecusbom)
	{
		this.busecusbom = busecusbom;
	}
}
