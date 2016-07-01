package com.ruihua;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.ruihua.obj.OrderListObj;
import com.u8.obj.CustomerObj;
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
import com.wuyg.config.ConfigReader;
import com.wuyg.excelparser.ExcelParser;
import com.wuyg.excelparser.obj.ExcelParserConfigObj;

public class OrderListServlet extends AbstractBaseServletTemplate
{
	private Logger logger = Logger.getLogger(getClass());
	private IBaseDAO soSomainDao = new DefaultBaseDAO(SoSomainObj.class, SystemConstant.U8_DB);
	private IBaseDAO customerDao = new DefaultBaseDAO(CustomerObj.class, SystemConstant.U8_DB);

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
		return com.ruihua.obj.OrderListObj.class;
	}

	@Override
	public Class getDomainSearchConditionClz()
	{
		return com.ruihua.searchcondition.OrderListSearchCondition.class;
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
		String templeteFile = getServletContext().getRealPath(getBasePath()) + "/淘宝订单主表导入模板V1.0.xls";
		RequestUtil.downloadFile(response, templeteFile);
	}

	// 上传解析
	public void uploadFile(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		try
		{
			// savedFile = new File("c:/test/ExportOrderList201604060827.xls");
			// domainInstance = new OrderListObj();

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
				OrderListObj o = (OrderListObj) rawDataList.get(i);
				if ("交易关闭".endsWith(o.getDingdan_zhuangtai()))
				{
					continue;
				} else
				{
					excelDataList.add(o);
				}
			}
			logger.info("去掉'订单状态'为'交易关闭'的订单" + (rawDataList.size() - excelDataList.size()) + "条");

			// 区分哪些订单已经入库
			List<BaseDbObj> excelSoMainList = new ArrayList<BaseDbObj>();
			for (int i = 0; i < excelDataList.size(); i++)
			{
				OrderListObj o = (OrderListObj) excelDataList.get(i);
				SoSomainObj somain = new SoSomainObj();
				somain.setDingdan_bianhao(o.getDingdan_bianhao());// 设置唯一索引
				excelSoMainList.add(somain);
			}
			List<BaseDbObj> inDbList = soSomainDao.searchByInstanceList(excelSoMainList);

			List<BaseDbObj> notInDbList = new ArrayList<BaseDbObj>();
			for (int i = 0; i < excelSoMainList.size(); i++)
			{
				OrderListObj o = (OrderListObj) excelDataList.get(i);

				boolean inDb = false;
				for (int j = 0; j < inDbList.size(); j++)
				{
					SoSomainObj somain = (SoSomainObj) inDbList.get(j);
					if (o.getDingdan_bianhao().equalsIgnoreCase(somain.getDingdan_bianhao()))
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

		request.setAttribute(DOMAIN_INSTANCE, domainInstance);
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

			SaveOrUpdateResult result = new SaveOrUpdateResult();
			if (notInDbList.size() > 0)
			{

				// 获取 销售订单号、销售订单主表标识
				long cSOCode = getMaxCSOCode();// 销售订单号
				long id = getMaxID(); // 销售订单主表标识
				long cuscode = getMaxCcuscode();// 客户编号

				// 获取从excel中解析得到的客户信息列表
				List<BaseDbObj> excelCustomerList = new ArrayList<BaseDbObj>();
				for (int i = 0; i < notInDbList.size(); i++)
				{
					OrderListObj o = (OrderListObj) notInDbList.get(i);

					CustomerObj customer = createCustomer(o);

					if (!excelCustomerList.contains(customer))
					{
						excelCustomerList.add(customer);
					}
				}

				// 获取数据库中存在的客户信息列表
				List<BaseDbObj> inDbCustomerList = customerDao.searchByInstanceList(excelCustomerList);

				// 将数据库中不存在的客户信息保存入库
				List<BaseDbObj> notInDbCustomerList = new ArrayList<BaseDbObj>();
				int n = 0;
				for (int i = 0; i < excelCustomerList.size(); i++)
				{
					CustomerObj excelCustomer = (CustomerObj) excelCustomerList.get(i);

					if (!inDbCustomerList.contains(excelCustomer))
					{
						excelCustomer.setCcuscode(getCcuscode(cuscode, n++));
						notInDbCustomerList.add(excelCustomer);
					}
				}
				customerDao.save(notInDbCustomerList);

				// 将新保存入库的客户信息合并到已入库客户信息列表中，用于后续订单关联客户信息使用
				inDbCustomerList.addAll(notInDbCustomerList);

				// 获取excel中解析出的订单列表
				List<BaseDbObj> excelSoMainList = new ArrayList<BaseDbObj>();
				for (int i = 0; i < notInDbList.size(); i++)
				{
					OrderListObj o = (OrderListObj) notInDbList.get(i);

					CustomerObj customer = getCustomer(inDbCustomerList, o);// 获取客户信息

					SoSomainObj somain = new SoSomainObj();

					// 销售类型编码 填什么值？
					somain.setCstcode(ConfigReader.getProperties("u8info.cstcode"));
					// 部门编码 填什么值？
					somain.setCdepcode(ConfigReader.getProperties("u8info.cdepcode"));
					// 业务员编码 固定值：需要确认编码
					somain.setCpersoncode(ConfigReader.getProperties("u8info.cpersoncode"));
					// 制单人 填什么值？
					somain.setCmaker(ConfigReader.getProperties("u8info.cmarker"));
					// 业务类型 固定值：分期收款
					somain.setCbustype(ConfigReader.getProperties("u8info.cbustype"));
					// 单据模版号 固定值：95
					somain.setIvtid(StringUtil.parseLong(ConfigReader.getProperties("u8info.ivtid")));

					// 销售订单主表标识 如何生成的？
					somain.setId(getId(id, i));
					// 销售订单号 生成规则是什么？
					somain.setCsocode(getCscode(cSOCode, i));
					// 客户编码 取Customer表中客户编码
					somain.setCcuscode(customer.getCcuscode());
					// 客户名称 取Customer表中客户姓名
					somain.setCcusname(customer.getCcusname());
					// 客户联系人 取：收货人姓名
					somain.setCcusperson(o.getShouhouren_xingming());
					// 发货地址
					somain.setCcusoaddress(StringUtil.getNotEmptyStr(o.getXiugaihou_shouhuo_dizhi(), o.getShouhuo_dizhi()));
					// 币种名称 固定值：人民币
					somain.setCexch_name("人民币");
					// 汇率 固定值：1
					somain.setIexchrate(1d);
					// 表头税率 固定值：17
					somain.setItaxrate(17d);
					// 备注 取：订单备注
					somain.setCmemo(o.getDingdan_beizhu());
					// 退货标志（1-退货；0-正常） 固定值：0
					somain.setBreturnflag(false);
					// 制单时间
					somain.setDcreatesystime(o.getDingdan_chuangjian_shijian());
					// 单据日期
					somain.setDdate(o.getDingdan_chuangjian_shijian());
					// 预发货日期
					somain.setDpredatebt(o.getDingdan_chuangjian_shijian());
					// 预发货日期
					somain.setDdate(o.getDingdan_chuangjian_shijian());

					// 自定义项1 取：订单编号
					somain.setDingdan_bianhao(o.getDingdan_bianhao());
					// 自定义项11 取：买家会员名
					somain.setCdefine11(o.getMaijia_huiyuanming());
					// 自定义项12 取：总金额
					somain.setCdefine12(o.getZong_jin_er() + "");
					// 自定义项13 取：买家留言
					somain.setCdefine13(o.getMaijia_liuyan());
					// 自定义项14 取：联系手机
					somain.setCdefine14(o.getLianxi_shouji());

					excelSoMainList.add(somain);
				}

				logger.info("订单主表解析，共解析出" + excelSoMainList.size() + "条数据");

				// 保存新订单数据

				result = soSomainDao.saveNewInstanceOnly(excelSoMainList);
			}

			request.setAttribute("result", result);
			request.setAttribute("message", result.toString());
		} catch (Exception e)
		{
			request.setAttribute("errorMessage", e);
			logger.error(e.getCause(), e);
		}

		request.getRequestDispatcher("/" + getBasePath() + "/importResult.jsp").forward(request, response);
	}

	private String getCcusabbname(String ccusabbname)
	{
		Connection conn = null;
		try
		{
			conn = MySqlUtil.getConnection(SystemConstant.U8_DB);
			ResultSet rst = conn.createStatement().executeQuery("select max(ccusabbname) from customer where ccusabbname='" + ccusabbname + "' or (ccusabbname like '" + ccusabbname + "_%') ");
			String maxCcusabbname = "";
			if (rst.next())
			{
				maxCcusabbname = rst.getString(1);
			}
			if (StringUtil.isEmpty(maxCcusabbname))
			{
				maxCcusabbname = ccusabbname;
			} else
			{
				long maxValue = StringUtil.parseLong(maxCcusabbname.replaceAll(ccusabbname + "|_", "")) + 1;
				maxCcusabbname = ccusabbname + "_" + maxValue;
			}

			return maxCcusabbname;
		} catch (Exception e)
		{
			logger.error(e.getMessage(), e);
		} finally
		{
			MySqlUtil.closeConnection(conn);
		}

		return null;
	}

	// 获取客户cuscode，以“TB5”开头，后面取4位数字，数字不足4位的前面用0补齐
	private String getCcuscode(long maxCuscode, int n)
	{
		return tbCuscodeIdx + fomatCode((maxCuscode + n) + "", 4);
	}

	// 创建客户对象信息
	private CustomerObj createCustomer(OrderListObj o)
	{
		CustomerObj customer = new CustomerObj();

		// 唯一索引
		customer.setCcusabbname(getCcusabbname(o));

		// 设置字段
		customer.setCcusname(o.getShouhouren_xingming());
		customer.setCcushand(o.getLianxi_shouji());
		customer.setMaijia_huiyuanming(o.getMaijia_huiyuanming());
		customer.setMaijia_zhifubao_zhanghao(o.getMaijia_zhifubao_zhanghao());
		customer.setShouhouren_xingming(o.getShouhouren_xingming());
		customer.setCcusaddress(StringUtil.getNotEmptyStr(o.getXiugaihou_shouhuo_dizhi(), o.getShouhuo_dizhi()));
		customer.setDcuscreatedatetime(TimeUtil.nowTime2TimeStamp());

		// 设置必填项
		customer.setBcusoverseas(false);
		customer.setIcusgsptype(0l);
		customer.setBcusdomestic(false);
		customer.setBcredit(false);
		customer.setBcreditdate(false);
		customer.setBcreditbyhead(false);
		customer.setBlicencedate(false);
		customer.setBbusinessdate(false);
		customer.setBproxy(false);
		customer.setBlimitsale(false);
		customer.setBhomebranch(false);
		customer.setBcusstate(false);

		return customer;
	}

	// 根据客户ccusabbname获取客户信息，ccusabbname对应 客户支付宝账号 字段
	private CustomerObj getCustomer(List<BaseDbObj> inDbCustomerList, OrderListObj o)
	{
		for (int i = 0; i < inDbCustomerList.size(); i++)
		{
			CustomerObj c = (CustomerObj) inDbCustomerList.get(i);
			// if (c.getCcushand().equalsIgnoreCase(o.getLianxi_dianhua()) &&
			// c.getCcusname().equalsIgnoreCase(o.getShouhouren_xingming()))
			if (c.getCcusabbname().equalsIgnoreCase(getCcusabbname(o)))
			{
				return c;
			}
		}

		return null;
	}

	private String getCcusabbname(OrderListObj o)
	{
		return o.getShouhouren_xingming() + "(" + o.getLianxi_shouji() + ")";
	}

	// 获取销售订单ID
	private Long getId(long id, int i)
	{
		return id + i;
	}

	// 获取销售订单编码，10位数字，不足10位前面用0补齐
	private String getCscode(long code, int i)
	{
		String cscode = "" + (code + i);
		return fomatCode(cscode, 10);
	}

	// 补齐字符串，将字符串补齐到destLength长度，长度不足的前面用0补齐
	private String fomatCode(String code, int destLength)
	{
		int length = code.length();
		for (int j = 0; j < (destLength - length); j++)
		{
			code = "0" + code;
		}
		return code;// 10位字符串，不足用0补齐
	}

	// 取u8 customer 表中淘宝系列的最大的ccuscode+1
	String tbCuscodeIdx = "TB5";// TB5开头+4位流水
	private long getMaxCcuscode()
	{
		
		Connection conn = null;
		try
		{
			conn = MySqlUtil.getConnection(SystemConstant.U8_DB);
			ResultSet rst = conn.createStatement().executeQuery("select max(ccuscode) from customer where ccuscode like '" + tbCuscodeIdx + "%'");
			String cuscode = "";
			if (rst.next())
			{
				cuscode = rst.getString(1);
			}
			if (StringUtil.isEmpty(cuscode))
			{
				cuscode = tbCuscodeIdx + "0001";
			}

			long maxCuscode = StringUtil.parseLong(cuscode.replaceAll(tbCuscodeIdx, ""));

			return maxCuscode;
		} catch (Exception e)
		{
			logger.error(e.getMessage(), e);
		} finally
		{
			MySqlUtil.closeConnection(conn);
		}

		return -1;
	}

	// 取u8 so_somain 表中最大的ID+1
	private long getMaxID()
	{
		Connection conn = null;
		try
		{
			conn = MySqlUtil.getConnection(SystemConstant.U8_DB);
			ResultSet rst = conn.createStatement().executeQuery("select max(id) from so_somain");
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

	// 取u8 so_somain 表中最大的csocode+1
	private long getMaxCSOCode()
	{
		Connection conn = null;
		try
		{
			conn = MySqlUtil.getConnection(SystemConstant.U8_DB);
			ResultSet rst = conn.createStatement().executeQuery("select max(csocode) from so_somain");
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

	public static void main(String[] args) throws Exception
	{
		OrderListServlet s = new OrderListServlet();
		// System.out.println(s.getMaxID());
		// System.out.println(s.getMaxCSOCode());

		// System.out.println(s.getCscode(65, 1));

		s.uploadFile(null, null);

	}
}
