package com.ruihua;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.ruihua.obj.OrderListDetailObj;
import com.ruihua.obj.TaobaoProductMapObj;
import com.u8.obj.SoSodetailsObj;
import com.u8.obj.SoSomainObj;
import com.wuyg.common.dao.BaseDbObj;
import com.wuyg.common.dao.DefaultBaseDAO;
import com.wuyg.common.dao.IBaseDAO;
import com.wuyg.common.dao.SaveOrUpdateResult;
import com.wuyg.common.servlet.AbstractBaseServletTemplate;
import com.wuyg.common.util.ExcelParserUtil;
import com.wuyg.common.util.MySqlUtil;
import com.wuyg.common.util.RequestUtil;
import com.wuyg.common.util.StringUtil;
import com.wuyg.common.util.SystemConstant;
import com.wuyg.common.util.TimeUtil;
import com.wuyg.excelparser.ExcelParser;
import com.wuyg.excelparser.obj.ExcelParserConfigObj;

public class OrderListDetailServlet extends AbstractBaseServletTemplate
{
	private Logger logger = Logger.getLogger(getClass());
	private IBaseDAO soSoDetailsDao = new DefaultBaseDAO(SoSodetailsObj.class, SystemConstant.U8_DB);
	private IBaseDAO soSoMainDao = new DefaultBaseDAO(SoSomainObj.class, SystemConstant.U8_DB);
	private IBaseDAO tpmDao = new DefaultBaseDAO(TaobaoProductMapObj.class);

	@Override
	public String getBasePath()
	{
		return domainInstance.getBasePath();
	}

	@Override
	public IBaseDAO getDomainDao()
	{
		return new DefaultBaseDAO(getDomainInstanceClz());
	}

	@Override
	public Class getDomainInstanceClz()
	{
		return com.ruihua.obj.OrderListDetailObj.class;
	}

	@Override
	public Class getDomainSearchConditionClz()
	{
		return com.ruihua.searchcondition.OrderListDetailSearchCondition.class;
	}

	// 查询
	public void list4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.list(request, response);
	}

	// 检查ID是否已录入系统
	public void checkId4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.checkId(request, response);
	}

	// 增加 or 修改
	public void addOrModify4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.addOrModify(request, response);
	}

	// 修改前查询领域对象信息
	public void preModify4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.preModify(request, response);
	}

	// 详情
	public void detail4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.detail(request, response);
	}

	// 删除
	public void delete4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.delete(request, response);
	}

	// 导出
	public void export4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.export(request, response);
	}
	
	// 下载导入的模板
	public void downloadTemplete(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		String templeteFile = getServletContext().getRealPath(getBasePath()) + "/淘宝订单详情导入模板V1.0.xls";
		RequestUtil.downloadFile(response, templeteFile);
	}

	// 上传解析
	public void uploadFile(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		try
		{
			// savedFile = new File("ExportOrderDetailList201604060953.xls");
			// domainInstance = new OrderListObj();

			request.setAttribute(DOMAIN_INSTANCE, domainInstance);

			// 保存文件(父类已自动保存，这里不用做任何动作)
			if (savedFile == null)
			{
				throw new Exception("文件上传出错，请检查是否选择了合适的文件");
			}

			// 解析excel文件
			ExcelParserConfigObj excelParserConfig = ExcelParserUtil.getExcelParserConfigByBaseDbObj(domainInstance);
			List rawDataList = ExcelParser.parse(savedFile, excelParserConfig, null);
			
			// 去掉 订单状态 为 交易关闭 的订单
			List excelDataList = new ArrayList<BaseDbObj>();
			for (int i = 0; i < rawDataList.size(); i++)
			{
				OrderListDetailObj o = (OrderListDetailObj) rawDataList.get(i);
				if ("交易关闭".endsWith(o.getDingdan_zhuangtai()))
				{
					continue;
				} else
				{
					excelDataList.add(o);
				}
			}
			logger.info("去掉'订单状态'为'交易关闭'的订单详情" + (rawDataList.size() - excelDataList.size()) + "条");

			// 做必要的检查，主要是对应的订单主表是否已经存在、各商品映射关系是否具备

			// 获取已经在数据库中存在得订单主表列表
			List<BaseDbObj> excelSomainList = new ArrayList<BaseDbObj>();
			List<BaseDbObj> excelProductList = new ArrayList<BaseDbObj>();
			for (int i = 0; i < excelDataList.size(); i++)
			{
				OrderListDetailObj o = (OrderListDetailObj) excelDataList.get(i);

				// 对应的订单主表
				SoSomainObj somain = new SoSomainObj();
				somain.setDingdan_bianhao(o.getDingdan_bianhao());
				if (!excelSomainList.contains(somain))
				{
					excelSomainList.add(somain);
				}

				// 对应的产品
				TaobaoProductMapObj tpm = new TaobaoProductMapObj();
				tpm.setTaobao_product_code(o.getWaibuxitong_bianhao());
				if (!excelProductList.contains(tpm))
				{
					excelProductList.add(tpm);
				}
			}

			// 订单编号在订单主表中不存在的明细
			List<BaseDbObj> somainListInDb = soSoMainDao.searchByInstanceList(excelSomainList);// 数据库中已经存在的订单主表列表
			List<BaseDbObj> detailList4somainNotInDb = new ArrayList<BaseDbObj>();// 应订单主表不存在而影响的订单详情列表
			for (int i = 0; i < excelDataList.size(); i++)
			{
				OrderListDetailObj d = (OrderListDetailObj) excelDataList.get(i);

				boolean somainInDb = false;
				for (int j = 0; j < somainListInDb.size(); j++)
				{
					SoSomainObj m = (SoSomainObj) somainListInDb.get(j);
					if (d.getDingdan_bianhao().equalsIgnoreCase(m.getDingdan_bianhao()))
					{
						somainInDb = true;
						break;
					}
				}

				if (!somainInDb)
				{
					detailList4somainNotInDb.add(d);
				}
			}

			// 存货档案映射关系不存在的
			List<BaseDbObj> tpmListInDb = tpmDao.searchByInstanceList(excelProductList);// 数据库中已经存在的对照关系
			List<BaseDbObj> tpmListNotInDb = new ArrayList<BaseDbObj>();// 需增加的映射关系
			List<BaseDbObj> detailList4tpmNotInDb = new ArrayList<BaseDbObj>();// 因对照关系不存在影响的订单详情列表
			for (int i = 0; i < excelDataList.size(); i++)
			{
				OrderListDetailObj d = (OrderListDetailObj) excelDataList.get(i);

				boolean tpmInDb = false;
				for (int j = 0; j < tpmListInDb.size(); j++)
				{
					TaobaoProductMapObj tpm = (TaobaoProductMapObj) tpmListInDb.get(j);
					if (d.getWaibuxitong_bianhao().equalsIgnoreCase(tpm.getTaobao_product_code()) && !StringUtil.isEmpty(tpm.getU8_inventory_code()))
					{
						tpmInDb = true;
						break;
					}
				}

				if (!tpmInDb)
				{
					// 订单详情列表
					detailList4tpmNotInDb.add(d);

					// 需补充的存货档案映射关系
					TaobaoProductMapObj tpm = new TaobaoProductMapObj();
					tpm.setTaobao_product_code(d.getWaibuxitong_bianhao());
					if (!tpmListNotInDb.contains(tpm) && !tpmListInDb.contains(tpm))
					{
						tpmListNotInDb.add(tpm);
					}
				}
			}
			// 需补充的存货档案映射关系保存入库
			tpmDao.save(tpmListNotInDb);

			request.getSession().setAttribute("detailList4somainNotInDb", detailList4somainNotInDb);
			request.getSession().setAttribute("detailList4tpmNotInDb", detailList4tpmNotInDb);
			request.getSession().setAttribute("tpmListNotInDb", tpmListNotInDb);

			if (detailList4somainNotInDb.size() > 0 || detailList4tpmNotInDb.size() > 0)
			{
				request.getRequestDispatcher("/" + getBasePath() + "/needSupplementMaps.jsp").forward(request, response);
			}

			// 获取订单主表编号和存货档案编号
			for (int i = 0; i < excelDataList.size(); i++)
			{
				OrderListDetailObj o = (OrderListDetailObj) excelDataList.get(i);

				// 获取对应的订单主表编号
				String csocode = getCsocode(somainListInDb, o.getDingdan_bianhao());
				o.setCsocode(csocode);

				// 获取对应的存货档案编码
				String cinvcode = getCinvcode(tpmListInDb, o.getWaibuxitong_bianhao());
				o.setCinvcode(cinvcode);
			}

			// 区分哪些订单详情已经入库
			List<BaseDbObj> excelSoDetailList = new ArrayList<BaseDbObj>();
			for (int i = 0; i < excelDataList.size(); i++)
			{
				OrderListDetailObj o = (OrderListDetailObj) excelDataList.get(i);

				SoSodetailsObj sodetail = new SoSodetailsObj();
				// 设置唯一索引
				sodetail.setCsocode(o.getCsocode());
				sodetail.setCinvcode(o.getCinvcode());
				excelSoDetailList.add(sodetail);
			}
			List<BaseDbObj> inDbList = soSoDetailsDao.searchByInstanceList(excelSoDetailList);

			List<BaseDbObj> notInDbList = new ArrayList<BaseDbObj>();
			for (int i = 0; i < excelSoDetailList.size(); i++)
			{
				OrderListDetailObj o = (OrderListDetailObj) excelDataList.get(i);

				boolean inDb = false;
				for (int j = 0; j < inDbList.size(); j++)
				{
					SoSodetailsObj soDetail = (SoSodetailsObj) inDbList.get(j);
					if (o.getCsocode().equalsIgnoreCase(soDetail.getCsocode()) && o.getCinvcode().equalsIgnoreCase(soDetail.getCinvcode()))
					{
						inDb = true;
						break;
					}
				}
				if (!inDb)
				{
					notInDbList.add(o);
				}
			}

			request.getSession().setAttribute("excelDataList", excelDataList);
			request.getSession().setAttribute("notInDbList", notInDbList);
			request.getSession().setAttribute("inDbList", inDbList);
		} catch (Exception e)
		{
			request.setAttribute("errorMessage", e);
			logger.error(e.getCause(), e);
			request.getRequestDispatcher("/" + getBasePath() + "/importResult.jsp").forward(request, response);
		}

		request.getRequestDispatcher("/" + getBasePath() + "/importPreview.jsp").forward(request, response);
	}

	public void import2u8(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		try
		{
			List notInDbList = new ArrayList<BaseDbObj>();

			Object temp = request.getSession().getAttribute("notInDbList");
			if (temp != null)
			{
				notInDbList = (List<BaseDbObj>) temp;
			}
			
			// 取isosid
			long isosid = getMaxIsosid();

			SaveOrUpdateResult result = new SaveOrUpdateResult();
			if (notInDbList.size() > 0)
			{
				// 获取excel中解析出的订单详情列表
				List<BaseDbObj> excelSoDetailList = new ArrayList<BaseDbObj>();
				for (int i = 0; i < notInDbList.size(); i++)
				{
					OrderListDetailObj o = (OrderListDetailObj) notInDbList.get(i);

					SoSodetailsObj sodetail = new SoSodetailsObj();
				
					sodetail.setCsocode (o.getCsocode()); 
					sodetail.setCinvcode (o.getCinvcode()); 
					sodetail.setDpredate (TimeUtil.nowTime2TimeStamp()); 
					sodetail.setIquantity (o.getGoumai_shuliang()); 
//					sodetail.setIunitprice (o.get); 
					sodetail.setItaxunitprice (o.getJiage()); 
					sodetail.setItaxrate (17d); 
//					sodetail.setImoney (o.get); 
//					sodetail.setItax (o.get); 
//					sodetail.setIsum (o.get); 
//					sodetail.setIdiscount (o.get); 
//					sodetail.setInatunitprice (o.get); 
//					sodetail.setInatmoney (o.get); 
//					sodetail.setInattax (o.get); 
//					sodetail.setInatsum (o.get); 
//					sodetail.setInatdiscount (o.get); 
//					sodetail.setIfhnum (o.get); 
//					sodetail.setIfhquantity (o.get); 
//					sodetail.setIfhmoney (o.get); 
//					sodetail.setIkpquantity (o.get); 
//					sodetail.setIkpnum (o.get); 
//					sodetail.setIkpmoney (o.get); 
					sodetail.setIsosid (isosid++); 
					sodetail.setDingdan_bianhao(o.getDingdan_bianhao()); 
					sodetail.setWaibuxitong_bianhao(o.getWaibuxitong_bianhao()); 
					sodetail.setCdefine30 (o.getBiaoti()); 
					sodetail.setCdefine31 (o.getShangpin_shuxing()); 

					excelSoDetailList.add(sodetail);
				}

				logger.info("订单详情解析，共解析出" + excelSoDetailList.size() + "条数据");

				// 保存新订单详情数据
				result = soSoDetailsDao.saveNewInstanceOnly(excelSoDetailList);
				request.setAttribute("result", result);
				request.setAttribute("message", result.toString());
			}
		} catch (Exception e)
		{
			request.setAttribute("errorMessage", e);
			logger.error(e.getCause(), e);
		}

		request.getRequestDispatcher("/" + getBasePath() + "/importResult.jsp").forward(request, response);
	}
	
	// 下载导入的模板
	public void downloadDetailList4somainNotInDb(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		List detailList4somainNotInDb = (List)request.getSession().getAttribute("detailList4somainNotInDb");
		
		RequestUtil.downloadFile(this, response, detailList4somainNotInDb, getDomainInstanceClz());
	}

	private long getMaxIsosid()
	{
		Connection conn = null;
		try
		{
			conn = MySqlUtil.getConnection(SystemConstant.U8_DB);
			ResultSet rst = conn.createStatement().executeQuery("select max(isosid) from so_sodetails");
			if (rst.next())
			{
				return rst.getLong(1) + 1;
			}
		} catch (Exception e)
		{
			logger.error(e.getMessage(), e);
		} finally
		{
			MySqlUtil.closeConnection(conn);
		}

		return -1;
	}

	private String getCinvcode(List<BaseDbObj> tpmListInDb, String waibuxitong_bianhao)
	{
		for (int i = 0; i < tpmListInDb.size(); i++)
		{
			TaobaoProductMapObj tpm = (TaobaoProductMapObj) tpmListInDb.get(i);
			if (waibuxitong_bianhao.equalsIgnoreCase(tpm.getTaobao_product_code()))
			{
				return tpm.getU8_inventory_code();
			}
		}
		return null;
	}

	private String getCsocode(List<BaseDbObj> somainListInDb, String dingdan_bianhao)
	{
		for (int i = 0; i < somainListInDb.size(); i++)
		{
			SoSomainObj somain = (SoSomainObj) somainListInDb.get(i);
			if (dingdan_bianhao.equalsIgnoreCase(somain.getDingdan_bianhao()))
			{
				return somain.getCsocode();
			}
		}
		return null;
	}

}
