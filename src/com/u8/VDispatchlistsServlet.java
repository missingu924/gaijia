package com.u8;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.MethodUtils;
import org.apache.log4j.Logger;

import com.dispatch.obj.DispatchPriceChangeLogObj;
import com.hz.util.SystemConstant;
import com.u8.obj.DispatchlistObj;
import com.u8.obj.DispatchlistsObj;
import com.u8.obj.VDispatchlistsObj;
import com.wuyg.common.dao.BaseDbObj;
import com.wuyg.common.dao.DefaultBaseDAO;
import com.wuyg.common.dao.IBaseDAO;
import com.wuyg.common.obj.PaginationObj;
import com.wuyg.common.servlet.AbstractBaseServletTemplate;
import com.wuyg.common.util.MyBeanUtils;
import com.wuyg.common.util.StringUtil;
import com.wuyg.common.util.TimeUtil;

public class VDispatchlistsServlet extends AbstractBaseServletTemplate
{
	private Logger logger = Logger.getLogger(getClass());
	private IBaseDAO detailsDao = new DefaultBaseDAO(DispatchlistsObj.class, SystemConstant.U8_DB);
	private IBaseDAO changeLogDao = new DefaultBaseDAO(DispatchPriceChangeLogObj.class);

	@Override
	public String getBasePath()
	{
		return domainInstance.getBasePath();
	}

	@Override
	public IBaseDAO getDomainDao()
	{
		return new DefaultBaseDAO(getDomainInstanceClz(), SystemConstant.U8_DB);
	}

	@Override
	public Class getDomainInstanceClz()
	{
		return com.u8.obj.VDispatchlistsObj.class;
	}

	@Override
	public Class getDomainSearchConditionClz()
	{
		return com.u8.searchcondition.VDispatchlistsSearchCondition.class;
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

	// 查询修改
	public void list4modify(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 查询
		String where = " 1=1 " + MyBeanUtils.getWhereSqlFromBean(domainInstance, getDomainDao().getTableMetaData(), false);

		VDispatchlistsObj d = (VDispatchlistsObj) domainInstance;
		if (!StringUtil.isEmpty(d.getDdate_start()))
		{
			where += " and ddate>='" + d.getDdate_start() + "'";
		}
		if (!StringUtil.isEmpty(d.getDdate_end()))
		{
			where += " and ddate<='" + d.getDdate_end() + "'";
		}
		if ("是".equals(d.getAllsettled()))
		{
			where += " and iquantity=isettlequantity";
		} else if ("否".equals(d.getAllsettled()))
		{
			where += " and iquantity!=isettlequantity";
		}
		// 业务员只能查自己客户的发货单
		if (!currentUser.hasRole(SystemConstant.ROLE_ADMIN))
		{
			where += " and cpersoncode='"+currentUser.getDistrict()+"'";// AuthUserObj的district字段存放该账号对应的U8系统的personcode
		}
		

		List list = getDomainDao().searchByClause(getDomainInstanceClz(), where, domainInstance.findDefaultOrderBy(), 0, 10000);// 最多10000条

		// 判断是否修改过
		List<BaseDbObj> changeLogList = new ArrayList<BaseDbObj>();
		for (int i = 0; i < list.size(); i++)
		{
			VDispatchlistsObj vd = (VDispatchlistsObj) list.get(i);

			DispatchPriceChangeLogObj changeLog = new DispatchPriceChangeLogObj();
			changeLog.setAutoid(vd.getAutoid());
			changeLogList.add(changeLog);
		}
		List inDbChangeLogList = changeLogDao.searchByInstanceList(changeLogList);

		for (int i = 0; i < list.size(); i++)
		{
			VDispatchlistsObj vd = (VDispatchlistsObj) list.get(i);
			for (int j = 0; j < inDbChangeLogList.size(); j++)
			{
				DispatchPriceChangeLogObj changeLog = (DispatchPriceChangeLogObj) inDbChangeLogList.get(j);
				if (changeLog.getAutoid().longValue() == vd.getAutoid().longValue())
				{
					vd.setPriceChanged(true);// 改过价格
					break;
				}
			}
		}

		request.setAttribute(DOMAIN_INSTANCE, domainInstance);
		request.setAttribute("list", list);

		request.getRequestDispatcher("/" + getBasePath() + "/" + BASE_METHOD_LIST + "4modify.jsp").forward(request, response);
	}

	// 修改含税单价
	public void modifyPrice(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 获取修改的单价
		String[] autoids = request.getParameterValues("autoid_");
		String[] dlids = request.getParameterValues("dlid_");
		String[] itaxunitprices = request.getParameterValues("itaxunitprice_");
		String[] iquantitys = request.getParameterValues("iquantity_");
		String[] itaxrates = request.getParameterValues("itaxrate_");
		String[] iexchrates = request.getParameterValues("iexchrate_");
		String[] itaxunitprice_after_changes = request.getParameterValues("itaxunitprice_after_change");

		String[] cwhcodes = request.getParameterValues("cwhcode_");
		String[] cinvcodes = request.getParameterValues("cinvcode_");
		String[] cdepcodes = request.getParameterValues("cdepcode_");
		String[] cpersoncodes = request.getParameterValues("cpersoncode_");
		String[] ccuscodes = request.getParameterValues("ccuscode_");

		List<BaseDbObj> changedDispathlists = new ArrayList<BaseDbObj>();
		List<BaseDbObj> changeLogList = new ArrayList<BaseDbObj>();
		if (itaxunitprice_after_changes != null)
		{
			for (int i = 0; i < itaxunitprice_after_changes.length; i++)
			{
				String autoid = autoids[i];
				String dlid = dlids[i];
				String itaxunitprice = itaxunitprices[i];
				String iquantity = iquantitys[i];
				String itaxrate = itaxrates[i];
				String iexchrate = iexchrates[i];
				String itaxunitprice_after_change = itaxunitprice_after_changes[i];

				String cwhcode = cwhcodes[i];
				String cinvcode = cinvcodes[i];
				String cdepcode = cdepcodes[i];
				String cpersoncode = cpersoncodes[i];
				String ccuscode = ccuscodes[i];

				// 修改了单价
				if (!StringUtil.isEmpty(itaxunitprice_after_change))
				{
					// 子表更新
					DispatchlistsObj d = new DispatchlistsObj();
					d.setId(StringUtil.parseLong(autoid));
					d.setIquantity(StringUtil.parseDouble(iquantity));
					d.setItaxunitprice(StringUtil.parseDouble(itaxunitprice_after_change));
					d.setItaxrate(StringUtil.parseDouble(itaxrate));
					d.setIexchrate(StringUtil.parseDouble(iexchrate));
					changedDispathlists.add(d);

					// 修改记录
					DispatchPriceChangeLogObj c = new DispatchPriceChangeLogObj();
					c.setAutoid(StringUtil.parseLong(autoid));
					c.setDlid(StringUtil.parseLong(dlid));
					c.setIquantity(StringUtil.parseDouble(iquantity));
					c.setItaxprice_before_change(StringUtil.parseDouble(itaxunitprice));
					c.setItaxprice_after_change(StringUtil.parseDouble(itaxunitprice_after_change));
					c.setItaxrate(StringUtil.parseDouble(itaxrate));
					c.setIexchrate(StringUtil.parseDouble(iexchrate));
					c.setCwhcode(cwhcode);
					c.setCinvcode(cinvcode);
					c.setCdepcode(cdepcode);
					c.setCpersoncode(cpersoncode);
					c.setCcuscode(ccuscode);
					c.setOperate_user_name(currentUser.getName());
					c.setOperate_time(TimeUtil.nowTime2TimeStamp());
					changeLogList.add(c);
				}
			}
		}

		// 修改单价
		boolean result = detailsDao.update(changedDispathlists);
		logger.info("修改了" + changedDispathlists.size() + "条记录的价格，修改" + (result ? "成功" : "失败"));

		// 保存日志
		result = changeLogDao.save(changeLogList);
		logger.info("保存了" + changeLogList.size() + "条记录的价格修改日志，保存" + (result ? "成功" : "失败"));

		request.setAttribute("result", result);

		// 转向
		list4modify(request, response);
	}

}
