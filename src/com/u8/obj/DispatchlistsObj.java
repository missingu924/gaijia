package com.u8.obj;

import java.sql.Timestamp;
import com.wuyg.common.dao.BaseDbObj;
import com.wuyg.common.dao.DefaultBaseDAO;

import java.util.LinkedHashMap;
import com.alibaba.fastjson.JSON;
import com.dispatch.obj.DispatchPriceChangeLogObj;

public class DispatchlistsObj extends BaseDbObj
{
	private Long autoid;
	private Long dlid;
	private Long icorid;
	private String cwhcode;
	private String cinvcode;
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
	private Double isettlenum;
	private Double isettlequantity;
	private Long ibatch;
	private String cbatch;
	private Boolean bsettleall;
	private String cmemo;
	private String cfree1;
	private String cfree2;
	private String itb;
	private Timestamp dvdate;
	private String tbquantity;
	private String tbnum;
	private Long isosid;
	private Long idlsid;
	private String kl;
	private String kl2;
	private String cinvname;
	private Double itaxrate;
	private String cdefine22;
	private String cdefine23;
	private String cdefine24;
	private String cdefine25;
	private Double cdefine26;
	private Double cdefine27;
	private Double foutquantity;
	private Double foutnum;
	private String citemcode;
	private String citem_class;
	private String fsalecost;
	private String fsaleprice;
	private String cvenabbname;
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
	private Boolean bisstqc;
	private String iinvexchrate;
	private String cunitid;
	private String ccode;
	private String iretquantity;
	private String fensettlequan;
	private String fensettlesum;
	private String isettleprice;
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
	private Timestamp dmdate;
	private Boolean bgsp;
	private String cgspstate;
	private String csocode;
	private String ccorcode;
	private Long ippartseqid;
	private Long ippartid;
	private String ippartqty;
	private String ccontractid;
	private String ccontracttagcode;
	private String ccontractrowguid;
	private Long imassdate;
	private Long cmassunit;
	private Boolean bqaneedcheck;
	private Boolean bqaurgency;
	private Boolean bqachecking;
	private Boolean bqachecked;
	private Double iqaquantity;
	private Double iqanum;
	private String ccusinvcode;
	private String ccusinvname;
	private String fsumsignquantity;
	private String fsumsignnum;
	private String cbaccounter;
	private Boolean bcosting;
	private String cordercode;
	private Long iorderrowno;
	private String fcusminprice;
	private String icostquantity;
	private String icostsum;
	private String ispecialtype;
	private String cvmivencode;
	private String iexchsum;
	private String imoneysum;
	private Long irowno;
	private String frettbquantity;
	private String fretsum;
	private Long iexpiratdatecalcu;
	private Timestamp dexpirationdate;
	private String cexpirationdate;
	private String cbatchproperty1;
	private String cbatchproperty2;
	private String cbatchproperty3;
	private String cbatchproperty4;
	private String cbatchproperty5;
	private String cbatchproperty6;
	private String cbatchproperty7;
	private String cbatchproperty8;
	private String cbatchproperty9;
	private Timestamp cbatchproperty10;
	private String dblpreexchmomey;
	private String dblpremomey;
	private Long idemandtype;
	private String cdemandcode;
	private String cdemandmemo;
	private String cdemandid;
	private Long idemandseq;
	private String cvencode;
	private String creasoncode;
	private String cinvsn;
	private Long iinvsncount;
	private Boolean bneedsign;
	private Boolean bsignover;
	private Boolean bneedloss;
	private String flossrate;
	private String frlossqty;
	private String fulossqty;
	private Long isettletype;
	private String crelacuscode;
	private String clossmaker;
	private Timestamp dlossdate;
	private Timestamp dlosstime;
	private Long icoridlsid;
	private String fretoutqty;
	private String body_outid;

	private Double iexchrate = 1d;// 默认为1

	@Override
	public String findKeyColumnName()
	{
		return "autoid";
	}

	@Override
	public String findParentKeyColumnName()
	{
		return "dlid";
	}

	@Override
	public String findTableName()
	{
		return "dispatchlists";
	}

	@Override
	public String findDefaultOrderBy()
	{
		return super.findDefaultOrderBy();
	}

	@Override
	public String getBasePath()
	{
		return "Dispatchlists";
	}

	@Override
	public String getCnName()
	{
		return "发货单子表";
	}

	public LinkedHashMap<String, String> findProperties()
	{
		LinkedHashMap<String, String> pros = new LinkedHashMap<String, String>();

		pros.put("autoid", "流水号");
		pros.put("dlid", "发货单标识");
		// pros.put("icorid", "icorid");
		pros.put("cwhcode", "仓库");
		pros.put("cinvcode", "存货名称");
		pros.put("iquantity", "数量");
		pros.put("inum", "辅计量");
		// pros.put("iquotedprice", "iquotedprice");
		// pros.put("iunitprice", "iunitprice");
		pros.put("itaxunitprice", "原币含税单价");
		pros.put("imoney", "原币无税金额");
		pros.put("itax", "原币税额");
		pros.put("isum", "原币价税合计");
		// pros.put("idiscount", "idiscount");
		pros.put("inatunitprice", "本币无税单价");
		pros.put("inatmoney", "本币无税金额");
		pros.put("inattax", "本币税额");
		pros.put("inatsum", "本币价税合计");
		// pros.put("inatdiscount", "inatdiscount");
		// pros.put("isettlenum", "isettlenum");
		pros.put("isettlequantity", "开票数量");
		// pros.put("ibatch", "ibatch");
		// pros.put("cbatch", "cbatch");
		// pros.put("bsettleall", "bsettleall");
		// pros.put("cmemo", "cmemo");
		// pros.put("cfree1", "cfree1");
		// pros.put("cfree2", "cfree2");
		// pros.put("itb", "itb");
		// pros.put("dvdate", "dvdate");
		// pros.put("tbquantity", "tbquantity");
		// pros.put("tbnum", "tbnum");
		// pros.put("isosid", "isosid");
		// pros.put("idlsid", "idlsid");
		// pros.put("kl", "kl");
		// pros.put("kl2", "kl2");
		// pros.put("cinvname", "cinvname");
		// pros.put("itaxrate", "itaxrate");
		// pros.put("cdefine22", "cdefine22");
		// pros.put("cdefine23", "cdefine23");
		// pros.put("cdefine24", "cdefine24");
		// pros.put("cdefine25", "cdefine25");
		// pros.put("cdefine26", "cdefine26");
		// pros.put("cdefine27", "cdefine27");
		// pros.put("foutquantity", "foutquantity");
		// pros.put("foutnum", "foutnum");
		// pros.put("citemcode", "citemcode");
		// pros.put("citem_class", "citem_class");
		// pros.put("fsalecost", "fsalecost");
		// pros.put("fsaleprice", "fsaleprice");
		// pros.put("cvenabbname", "cvenabbname");
		// pros.put("citemname", "citemname");
		// pros.put("citem_cname", "citem_cname");
		// pros.put("cfree3", "cfree3");
		// pros.put("cfree4", "cfree4");
		// pros.put("cfree5", "cfree5");
		// pros.put("cfree6", "cfree6");
		// pros.put("cfree7", "cfree7");
		// pros.put("cfree8", "cfree8");
		// pros.put("cfree9", "cfree9");
		// pros.put("cfree10", "cfree10");
		// pros.put("bisstqc", "bisstqc");
		// pros.put("iinvexchrate", "iinvexchrate");
		// pros.put("cunitid", "cunitid");
		// pros.put("ccode", "ccode");
		// pros.put("iretquantity", "iretquantity");
		// pros.put("fensettlequan", "fensettlequan");
		// pros.put("fensettlesum", "fensettlesum");
		// pros.put("isettleprice", "isettleprice");
		// pros.put("cdefine28", "cdefine28");
		// pros.put("cdefine29", "cdefine29");
		// pros.put("cdefine30", "cdefine30");
		// pros.put("cdefine31", "cdefine31");
		// pros.put("cdefine32", "cdefine32");
		// pros.put("cdefine33", "cdefine33");
		// pros.put("cdefine34", "cdefine34");
		// pros.put("cdefine35", "cdefine35");
		// pros.put("cdefine36", "cdefine36");
		// pros.put("cdefine37", "cdefine37");
		// pros.put("dmdate", "dmdate");
		// pros.put("bgsp", "bgsp");
		// pros.put("cgspstate", "cgspstate");
		// pros.put("csocode", "csocode");
		// pros.put("ccorcode", "ccorcode");
		// pros.put("ippartseqid", "ippartseqid");
		// pros.put("ippartid", "ippartid");
		// pros.put("ippartqty", "ippartqty");
		// pros.put("ccontractid", "ccontractid");
		// pros.put("ccontracttagcode", "ccontracttagcode");
		// pros.put("ccontractrowguid", "ccontractrowguid");
		// pros.put("imassdate", "imassdate");
		// pros.put("cmassunit", "cmassunit");
		// pros.put("bqaneedcheck", "bqaneedcheck");
		// pros.put("bqaurgency", "bqaurgency");
		// pros.put("bqachecking", "bqachecking");
		// pros.put("bqachecked", "bqachecked");
		// pros.put("iqaquantity", "iqaquantity");
		// pros.put("iqanum", "iqanum");
		// pros.put("ccusinvcode", "ccusinvcode");
		// pros.put("ccusinvname", "ccusinvname");
		// pros.put("fsumsignquantity", "fsumsignquantity");
		// pros.put("fsumsignnum", "fsumsignnum");
		// pros.put("cbaccounter", "cbaccounter");
		// pros.put("bcosting", "bcosting");
		// pros.put("cordercode", "cordercode");
		// pros.put("iorderrowno", "iorderrowno");
		// pros.put("fcusminprice", "fcusminprice");
		// pros.put("icostquantity", "icostquantity");
		// pros.put("icostsum", "icostsum");
		// pros.put("ispecialtype", "ispecialtype");
		// pros.put("cvmivencode", "cvmivencode");
		// pros.put("iexchsum", "iexchsum");
		// pros.put("imoneysum", "imoneysum");
		// pros.put("irowno", "irowno");
		// pros.put("frettbquantity", "frettbquantity");
		// pros.put("fretsum", "fretsum");
		// pros.put("iexpiratdatecalcu", "iexpiratdatecalcu");
		// pros.put("dexpirationdate", "dexpirationdate");
		// pros.put("cexpirationdate", "cexpirationdate");
		// pros.put("cbatchproperty1", "cbatchproperty1");
		// pros.put("cbatchproperty2", "cbatchproperty2");
		// pros.put("cbatchproperty3", "cbatchproperty3");
		// pros.put("cbatchproperty4", "cbatchproperty4");
		// pros.put("cbatchproperty5", "cbatchproperty5");
		// pros.put("cbatchproperty6", "cbatchproperty6");
		// pros.put("cbatchproperty7", "cbatchproperty7");
		// pros.put("cbatchproperty8", "cbatchproperty8");
		// pros.put("cbatchproperty9", "cbatchproperty9");
		// pros.put("cbatchproperty10", "cbatchproperty10");
		// pros.put("dblpreexchmomey", "dblpreexchmomey");
		// pros.put("dblpremomey", "dblpremomey");
		// pros.put("idemandtype", "idemandtype");
		// pros.put("cdemandcode", "cdemandcode");
		// pros.put("cdemandmemo", "cdemandmemo");
		// pros.put("cdemandid", "cdemandid");
		// pros.put("idemandseq", "idemandseq");
		// pros.put("cvencode", "cvencode");
		// pros.put("creasoncode", "creasoncode");
		// pros.put("cinvsn", "cinvsn");
		// pros.put("iinvsncount", "iinvsncount");
		// pros.put("bneedsign", "bneedsign");
		// pros.put("bsignover", "bsignover");
		// pros.put("bneedloss", "bneedloss");
		// pros.put("flossrate", "flossrate");
		// pros.put("frlossqty", "frlossqty");
		// pros.put("fulossqty", "fulossqty");
		// pros.put("isettletype", "isettletype");
		// pros.put("crelacuscode", "crelacuscode");
		// pros.put("clossmaker", "clossmaker");
		// pros.put("dlossdate", "dlossdate");
		// pros.put("dlosstime", "dlosstime");
		// pros.put("icoridlsid", "icoridlsid");
		// pros.put("fretoutqty", "fretoutqty");
		// pros.put("body_outid", "body_outid");
		return pros;
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

	public void setDlid(Long dlid)
	{
		this.dlid = dlid;
	}

	public Long getIcorid()
	{
		return icorid;
	}

	public void setIcorid(Long icorid)
	{
		this.icorid = icorid;
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

	public String getCvenabbname()
	{
		return cvenabbname;
	}

	public void setCvenabbname(String cvenabbname)
	{
		this.cvenabbname = cvenabbname;
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

	public Boolean getBisstqc()
	{
		return bisstqc;
	}

	public void setBisstqc(Boolean bisstqc)
	{
		this.bisstqc = bisstqc;
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

	public String getCcode()
	{
		return ccode;
	}

	public void setCcode(String ccode)
	{
		this.ccode = ccode;
	}

	public String getIretquantity()
	{
		return iretquantity;
	}

	public void setIretquantity(String iretquantity)
	{
		this.iretquantity = iretquantity;
	}

	public String getFensettlequan()
	{
		return fensettlequan;
	}

	public void setFensettlequan(String fensettlequan)
	{
		this.fensettlequan = fensettlequan;
	}

	public String getFensettlesum()
	{
		return fensettlesum;
	}

	public void setFensettlesum(String fensettlesum)
	{
		this.fensettlesum = fensettlesum;
	}

	public String getIsettleprice()
	{
		return isettleprice;
	}

	public void setIsettleprice(String isettleprice)
	{
		this.isettleprice = isettleprice;
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

	public Timestamp getDmdate()
	{
		return dmdate;
	}

	public void setDmdate(Timestamp dmdate)
	{
		this.dmdate = dmdate;
	}

	public Boolean getBgsp()
	{
		return bgsp;
	}

	public void setBgsp(Boolean bgsp)
	{
		this.bgsp = bgsp;
	}

	public String getCgspstate()
	{
		return cgspstate;
	}

	public void setCgspstate(String cgspstate)
	{
		this.cgspstate = cgspstate;
	}

	public String getCsocode()
	{
		return csocode;
	}

	public void setCsocode(String csocode)
	{
		this.csocode = csocode;
	}

	public String getCcorcode()
	{
		return ccorcode;
	}

	public void setCcorcode(String ccorcode)
	{
		this.ccorcode = ccorcode;
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

	public Long getImassdate()
	{
		return imassdate;
	}

	public void setImassdate(Long imassdate)
	{
		this.imassdate = imassdate;
	}

	public Long getCmassunit()
	{
		return cmassunit;
	}

	public void setCmassunit(Long cmassunit)
	{
		this.cmassunit = cmassunit;
	}

	public Boolean getBqaneedcheck()
	{
		return bqaneedcheck;
	}

	public void setBqaneedcheck(Boolean bqaneedcheck)
	{
		this.bqaneedcheck = bqaneedcheck;
	}

	public Boolean getBqaurgency()
	{
		return bqaurgency;
	}

	public void setBqaurgency(Boolean bqaurgency)
	{
		this.bqaurgency = bqaurgency;
	}

	public Boolean getBqachecking()
	{
		return bqachecking;
	}

	public void setBqachecking(Boolean bqachecking)
	{
		this.bqachecking = bqachecking;
	}

	public Boolean getBqachecked()
	{
		return bqachecked;
	}

	public void setBqachecked(Boolean bqachecked)
	{
		this.bqachecked = bqachecked;
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

	// public Double getIunitprice()
	// {
	// return iunitprice;
	// }
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

	// public Double getImoney()
	// {
	// return imoney;
	// }
	public void setImoney(Double imoney)
	{
		this.imoney = imoney;
	}

	// public Double getItax()
	// {
	// return itax;
	// }
	public void setItax(Double itax)
	{
		this.itax = itax;
	}

	// public Double getIsum()
	// {
	// return isum;
	// }
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

	// public Double getInatunitprice()
	// {
	// return inatunitprice;
	// }
	public void setInatunitprice(Double inatunitprice)
	{
		this.inatunitprice = inatunitprice;
	}

	// public Double getInatmoney()
	// {
	// return inatmoney;
	// }
	public void setInatmoney(Double inatmoney)
	{
		this.inatmoney = inatmoney;
	}

	// public Double getInattax()
	// {
	// return inattax;
	// }
	public void setInattax(Double inattax)
	{
		this.inattax = inattax;
	}

	// public Double getInatsum()
	// {
	// return inatsum;
	// }
	public void setInatsum(Double inatsum)
	{
		this.inatsum = inatsum;
	}

	public Double getInatdiscount()
	{
		return inatdiscount;
	}

	public void setInatdiscount(Double inatdiscount)
	{
		this.inatdiscount = inatdiscount;
	}

	public Double getIsettlenum()
	{
		return isettlenum;
	}

	public void setIsettlenum(Double isettlenum)
	{
		this.isettlenum = isettlenum;
	}

	public Double getIsettlequantity()
	{
		return isettlequantity;
	}

	public void setIsettlequantity(Double isettlequantity)
	{
		this.isettlequantity = isettlequantity;
	}

	public Long getIbatch()
	{
		return ibatch;
	}

	public void setIbatch(Long ibatch)
	{
		this.ibatch = ibatch;
	}

	public String getCbatch()
	{
		return cbatch;
	}

	public void setCbatch(String cbatch)
	{
		this.cbatch = cbatch;
	}

	public Boolean getBsettleall()
	{
		return bsettleall;
	}

	public void setBsettleall(Boolean bsettleall)
	{
		this.bsettleall = bsettleall;
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

	public String getItb()
	{
		return itb;
	}

	public void setItb(String itb)
	{
		this.itb = itb;
	}

	public Timestamp getDvdate()
	{
		return dvdate;
	}

	public void setDvdate(Timestamp dvdate)
	{
		this.dvdate = dvdate;
	}

	public String getTbquantity()
	{
		return tbquantity;
	}

	public void setTbquantity(String tbquantity)
	{
		this.tbquantity = tbquantity;
	}

	public String getTbnum()
	{
		return tbnum;
	}

	public void setTbnum(String tbnum)
	{
		this.tbnum = tbnum;
	}

	public Long getIsosid()
	{
		return isosid;
	}

	public void setIsosid(Long isosid)
	{
		this.isosid = isosid;
	}

	public Long getIdlsid()
	{
		return idlsid;
	}

	public void setIdlsid(Long idlsid)
	{
		this.idlsid = idlsid;
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

	public Double getItaxrate()
	{
		return itaxrate;
	}

	public void setItaxrate(Double itaxrate)
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

	public Double getFoutquantity()
	{
		return foutquantity;
	}

	public void setFoutquantity(Double foutquantity)
	{
		this.foutquantity = foutquantity;
	}

	public Double getFoutnum()
	{
		return foutnum;
	}

	public void setFoutnum(Double foutnum)
	{
		this.foutnum = foutnum;
	}

	public Double getIqaquantity()
	{
		return iqaquantity;
	}

	public void setIqaquantity(Double iqaquantity)
	{
		this.iqaquantity = iqaquantity;
	}

	public Double getIqanum()
	{
		return iqanum;
	}

	public void setIqanum(Double iqanum)
	{
		this.iqanum = iqanum;
	}

	public void setCinvcode(String cinvcode)
	{
		this.cinvcode = cinvcode;
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

	public String getFsumsignquantity()
	{
		return fsumsignquantity;
	}

	public void setFsumsignquantity(String fsumsignquantity)
	{
		this.fsumsignquantity = fsumsignquantity;
	}

	public String getFsumsignnum()
	{
		return fsumsignnum;
	}

	public void setFsumsignnum(String fsumsignnum)
	{
		this.fsumsignnum = fsumsignnum;
	}

	public String getCbaccounter()
	{
		return cbaccounter;
	}

	public void setCbaccounter(String cbaccounter)
	{
		this.cbaccounter = cbaccounter;
	}

	public Boolean getBcosting()
	{
		return bcosting;
	}

	public void setBcosting(Boolean bcosting)
	{
		this.bcosting = bcosting;
	}

	public String getCordercode()
	{
		return cordercode;
	}

	public void setCordercode(String cordercode)
	{
		this.cordercode = cordercode;
	}

	public Long getIorderrowno()
	{
		return iorderrowno;
	}

	public void setIorderrowno(Long iorderrowno)
	{
		this.iorderrowno = iorderrowno;
	}

	public String getFcusminprice()
	{
		return fcusminprice;
	}

	public void setFcusminprice(String fcusminprice)
	{
		this.fcusminprice = fcusminprice;
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

	public String getIspecialtype()
	{
		return ispecialtype;
	}

	public void setIspecialtype(String ispecialtype)
	{
		this.ispecialtype = ispecialtype;
	}

	public String getCvmivencode()
	{
		return cvmivencode;
	}

	public void setCvmivencode(String cvmivencode)
	{
		this.cvmivencode = cvmivencode;
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

	public Long getIrowno()
	{
		return irowno;
	}

	public void setIrowno(Long irowno)
	{
		this.irowno = irowno;
	}

	public String getFrettbquantity()
	{
		return frettbquantity;
	}

	public void setFrettbquantity(String frettbquantity)
	{
		this.frettbquantity = frettbquantity;
	}

	public String getFretsum()
	{
		return fretsum;
	}

	public void setFretsum(String fretsum)
	{
		this.fretsum = fretsum;
	}

	public Long getIexpiratdatecalcu()
	{
		return iexpiratdatecalcu;
	}

	public void setIexpiratdatecalcu(Long iexpiratdatecalcu)
	{
		this.iexpiratdatecalcu = iexpiratdatecalcu;
	}

	public Timestamp getDexpirationdate()
	{
		return dexpirationdate;
	}

	public void setDexpirationdate(Timestamp dexpirationdate)
	{
		this.dexpirationdate = dexpirationdate;
	}

	public String getCexpirationdate()
	{
		return cexpirationdate;
	}

	public void setCexpirationdate(String cexpirationdate)
	{
		this.cexpirationdate = cexpirationdate;
	}

	public String getCbatchproperty1()
	{
		return cbatchproperty1;
	}

	public void setCbatchproperty1(String cbatchproperty1)
	{
		this.cbatchproperty1 = cbatchproperty1;
	}

	public String getCbatchproperty2()
	{
		return cbatchproperty2;
	}

	public void setCbatchproperty2(String cbatchproperty2)
	{
		this.cbatchproperty2 = cbatchproperty2;
	}

	public String getCbatchproperty3()
	{
		return cbatchproperty3;
	}

	public void setCbatchproperty3(String cbatchproperty3)
	{
		this.cbatchproperty3 = cbatchproperty3;
	}

	public String getCbatchproperty4()
	{
		return cbatchproperty4;
	}

	public void setCbatchproperty4(String cbatchproperty4)
	{
		this.cbatchproperty4 = cbatchproperty4;
	}

	public String getCbatchproperty5()
	{
		return cbatchproperty5;
	}

	public void setCbatchproperty5(String cbatchproperty5)
	{
		this.cbatchproperty5 = cbatchproperty5;
	}

	public String getCbatchproperty6()
	{
		return cbatchproperty6;
	}

	public void setCbatchproperty6(String cbatchproperty6)
	{
		this.cbatchproperty6 = cbatchproperty6;
	}

	public String getCbatchproperty7()
	{
		return cbatchproperty7;
	}

	public void setCbatchproperty7(String cbatchproperty7)
	{
		this.cbatchproperty7 = cbatchproperty7;
	}

	public String getCbatchproperty8()
	{
		return cbatchproperty8;
	}

	public void setCbatchproperty8(String cbatchproperty8)
	{
		this.cbatchproperty8 = cbatchproperty8;
	}

	public String getCbatchproperty9()
	{
		return cbatchproperty9;
	}

	public void setCbatchproperty9(String cbatchproperty9)
	{
		this.cbatchproperty9 = cbatchproperty9;
	}

	public Timestamp getCbatchproperty10()
	{
		return cbatchproperty10;
	}

	public void setCbatchproperty10(Timestamp cbatchproperty10)
	{
		this.cbatchproperty10 = cbatchproperty10;
	}

	public String getDblpreexchmomey()
	{
		return dblpreexchmomey;
	}

	public void setDblpreexchmomey(String dblpreexchmomey)
	{
		this.dblpreexchmomey = dblpreexchmomey;
	}

	public String getDblpremomey()
	{
		return dblpremomey;
	}

	public void setDblpremomey(String dblpremomey)
	{
		this.dblpremomey = dblpremomey;
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

	public String getCdemandid()
	{
		return cdemandid;
	}

	public void setCdemandid(String cdemandid)
	{
		this.cdemandid = cdemandid;
	}

	public Long getIdemandseq()
	{
		return idemandseq;
	}

	public void setIdemandseq(Long idemandseq)
	{
		this.idemandseq = idemandseq;
	}

	public String getCvencode()
	{
		return cvencode;
	}

	public void setCvencode(String cvencode)
	{
		this.cvencode = cvencode;
	}

	public String getCreasoncode()
	{
		return creasoncode;
	}

	public void setCreasoncode(String creasoncode)
	{
		this.creasoncode = creasoncode;
	}

	public String getCinvsn()
	{
		return cinvsn;
	}

	public void setCinvsn(String cinvsn)
	{
		this.cinvsn = cinvsn;
	}

	public Long getIinvsncount()
	{
		return iinvsncount;
	}

	public void setIinvsncount(Long iinvsncount)
	{
		this.iinvsncount = iinvsncount;
	}

	public Boolean getBneedsign()
	{
		return bneedsign;
	}

	public void setBneedsign(Boolean bneedsign)
	{
		this.bneedsign = bneedsign;
	}

	public Boolean getBsignover()
	{
		return bsignover;
	}

	public void setBsignover(Boolean bsignover)
	{
		this.bsignover = bsignover;
	}

	public Boolean getBneedloss()
	{
		return bneedloss;
	}

	public void setBneedloss(Boolean bneedloss)
	{
		this.bneedloss = bneedloss;
	}

	public String getFlossrate()
	{
		return flossrate;
	}

	public void setFlossrate(String flossrate)
	{
		this.flossrate = flossrate;
	}

	public String getFrlossqty()
	{
		return frlossqty;
	}

	public void setFrlossqty(String frlossqty)
	{
		this.frlossqty = frlossqty;
	}

	public String getFulossqty()
	{
		return fulossqty;
	}

	public void setFulossqty(String fulossqty)
	{
		this.fulossqty = fulossqty;
	}

	public Long getIsettletype()
	{
		return isettletype;
	}

	public void setIsettletype(Long isettletype)
	{
		this.isettletype = isettletype;
	}

	public String getCrelacuscode()
	{
		return crelacuscode;
	}

	public void setCrelacuscode(String crelacuscode)
	{
		this.crelacuscode = crelacuscode;
	}

	public String getClossmaker()
	{
		return clossmaker;
	}

	public void setClossmaker(String clossmaker)
	{
		this.clossmaker = clossmaker;
	}

	public Timestamp getDlossdate()
	{
		return dlossdate;
	}

	public void setDlossdate(Timestamp dlossdate)
	{
		this.dlossdate = dlossdate;
	}

	public Timestamp getDlosstime()
	{
		return dlosstime;
	}

	public void setDlosstime(Timestamp dlosstime)
	{
		this.dlosstime = dlosstime;
	}

	public Long getIcoridlsid()
	{
		return icoridlsid;
	}

	public void setIcoridlsid(Long icoridlsid)
	{
		this.icoridlsid = icoridlsid;
	}

	public String getFretoutqty()
	{
		return fretoutqty;
	}

	public void setFretoutqty(String fretoutqty)
	{
		this.fretoutqty = fretoutqty;
	}

	public String getBody_outid()
	{
		return body_outid;
	}

	public void setBody_outid(String body_outid)
	{
		this.body_outid = body_outid;
	}

	public Double getIunitprice()
	{
		// return iunitprice;
		// 原币无税单价 
		return itaxunitprice / (1 + (itaxrate / 100));
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
		// return inatunitprice;
		return getItaxunitprice() * getIexchrate();
	}

	public Double getInatsum()
	{
		// return inatsum;
		return getIsum() * getIexchrate();
	}

	public Double getInattax()
	{
		// return inattax;
		return getItax() * getIexchrate();
	}

	public Double getInatmoney()
	{
		// return inatmoney;
		return getImoney() * getIexchrate();
	}

	private Boolean priceChanged;// 是否改过价格

	public boolean isPriceChanged()
	{
		if (priceChanged == null)
		{
			priceChanged = (new DefaultBaseDAO(DispatchPriceChangeLogObj.class).searchByClause(DispatchPriceChangeLogObj.class, " autoid='" + autoid + "'", null, 0, 1).size()) > 0;
		}
		return priceChanged;
	}

	@Override
	public String toString()
	{
		return JSON.toJSONString(this);
	}

	public Double getIexchrate()
	{
		return iexchrate;
	}

	public void setIexchrate(Double iexchrate)
	{
		this.iexchrate = iexchrate;
	}
}
