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
import com.wuyg.common.dao.BaseDbObj;
import com.wuyg.common.dao.DefaultBaseDAO;
import com.wuyg.common.dao.IBaseDAO;
import com.wuyg.common.obj.PaginationObj;
import com.wuyg.common.servlet.AbstractBaseServletTemplate;
import com.wuyg.common.util.MyBeanUtils;
import com.wuyg.common.util.StringUtil;
import com.wuyg.common.util.TimeUtil;

public class DispatchlistServlet extends AbstractBaseServletTemplate
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
		return com.u8.obj.DispatchlistObj.class;
	}

	@Override
	public Class getDomainSearchConditionClz()
	{
		return com.u8.searchcondition.DispatchlistSearchCondition.class;
	}

	// 查询
	public void list4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 查询
		String where = " 1=1 "+MyBeanUtils.getWhereSqlFromBean(domainInstance, getDomainDao().getTableMetaData(), false);
		
		DispatchlistObj d = (DispatchlistObj)domainInstance;
		if (!StringUtil.isEmpty(d.getDdate_start()))
		{
			where+=" and ddate>='"+d.getDdate_start()+"'";
		}
		if (!StringUtil.isEmpty(d.getDdate_end()))
		{
			where+=" and ddate<='"+d.getDdate_end()+"'";
		}
		
//		PaginationObj domainPagination = getDomainDao().searchPaginationByDomainInstance(domainInstance, domainInstance.findDefaultOrderBy(), domainSearchCondition.getPageNo(), domainSearchCondition.getPageCount());
		
		PaginationObj domainPagination = getDomainDao().searchPaginationByClause(getDomainInstanceClz(), where, domainInstance.findDefaultOrderBy(), domainSearchCondition.getPageNo(), domainSearchCondition.getPageCount());
		
		request.setAttribute(DOMAIN_INSTANCE, domainInstance);
		request.setAttribute(DOMAIN_PAGINATION, domainPagination);

		// 转向
		request.getRequestDispatcher("/" + getBasePath() + "/" + BASE_METHOD_LIST + ".jsp").forward(request, response);
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
		// 查询主表
		Object domainObj = getDomainDao().searchByKey(getDomainInstanceClz(), domainInstance.getKeyValue() + "");
		if (domainObj != null)
		{
			request.setAttribute(DOMAIN_INSTANCE, domainObj);
		}

		// 查询子表
		List details = detailsDao.searchByParentKey(DispatchlistsObj.class, domainInstance.getKeyValue() + "", null);
		if (domainObj != null)
		{
			request.setAttribute("details", details);
		}

		request.getRequestDispatcher("/" + getBasePath() + "/list4modify.jsp").forward(request, response);
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

	// 修改含税单价
	public void modifyPrice(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 获取修改的单价
		String[] autoids = request.getParameterValues("autoid");
		String[] dlids = request.getParameterValues("dlid");
		String[] itaxunitprices = request.getParameterValues("itaxunitprice");
		String[] iquantitys = request.getParameterValues("iquantity");
		String[] itaxrates = request.getParameterValues("itaxrate");
		String[] iexchrates = request.getParameterValues("iexchrate");
		String[] itaxunitprice_after_changes = request.getParameterValues("itaxunitprice_after_change");
		
		String[] cwhcodes = request.getParameterValues("cwhcode");
		String[] cinvcodes = request.getParameterValues("cinvcode");
		String[] cdepcodes = request.getParameterValues("cdepcode");
		String[] cpersoncodes = request.getParameterValues("cpersoncode");
		String[] ccuscodes = request.getParameterValues("ccuscode");
		

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
		preModify4this(request, response);
	}

}
