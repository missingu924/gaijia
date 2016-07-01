package com.purcharse;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.MethodUtils;
import org.apache.log4j.Logger;
import org.ietf.jgss.Oid;

import com.alibaba.fastjson.JSON;
import com.purcharse.obj.PurcharsePriceDetailObj;
import com.purcharse.obj.PurcharsePriceMainObj;
import com.u8.obj.InventoryObj;
import com.wuyg.common.dao.BaseDbObj;
import com.wuyg.common.dao.DefaultBaseDAO;
import com.wuyg.common.dao.IBaseDAO;
import com.wuyg.common.obj.PaginationObj;
import com.wuyg.common.servlet.AbstractBaseServletTemplate;
import com.wuyg.common.util.MyBeanUtils;
import com.wuyg.common.util.StringUtil;
import com.wuyg.common.util.SystemConstant;
import com.wuyg.common.util.TimeUtil;

public class PurcharsePriceMainServlet extends AbstractBaseServletTemplate
{
	private Logger logger = Logger.getLogger(getClass());
	private IBaseDAO childDao = new DefaultBaseDAO(PurcharsePriceDetailObj.class);

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
		return com.purcharse.obj.PurcharsePriceMainObj.class;
	}

	@Override
	public Class getDomainSearchConditionClz()
	{
		return com.purcharse.searchcondition.PurcharsePriceMainSearchCondition.class;
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
		// super.addOrModify(request,response);
		
		// 设置各环节初始状态
		PurcharsePriceMainObj domainObj = (PurcharsePriceMainObj)domainInstance;
		domainObj.setZuocheng_status(domainObj.DAI_TI_JIAO);
		domainObj.setQueren_status(domainObj.DAI_QUE_REN);
		domainObj.setShenhe_status(domainObj.DAI_SHEN_HE);
		domainObj.setPizhun_status(domainObj.DAI_PI_ZHUN);
		
		// 保存或更新
		boolean success = false;
		if (domainInstance.getKeyValue() < 0)
		{
			domainInstance.setId(getDomainDao().getMaxKeyValue());
			success = getDomainDao().save(domainInstance);
		} else
		{
			success = getDomainDao().update(domainInstance);
		}

		// 用新的明细替换老的明细
		// 先删除
		childDao.deleteByParentKey(domainInstance.getKeyValue() + "");
		// 再增加
		String[] cinvcodes = request.getParameterValues("cinvcode");
		if (cinvcodes != null)
		{
			List<BaseDbObj> detailList = MyBeanUtils.createInstanceListFromHttpRequest(request, domainInstance, PurcharsePriceDetailObj.class, cinvcodes.length, false);
			childDao.save(detailList);
		}

		// 声明是新增后转到的详情页面
		request.setAttribute("needRefresh", true);

		// 转向
		if (success)
		{
			detail4this(request, response);
		} else
		{
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}

	// 修改前查询领域对象信息
	public void preModify4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// super.preModify(request, response);
		// 查询
		Object domainObj = getDomainDao().searchByKey(getDomainInstanceClz(), domainInstance.getKeyValue() + "");

		if (domainObj != null)
		{
			request.setAttribute(DOMAIN_INSTANCE, domainObj);
		}

		List dataList = childDao.searchByParentKey(PurcharsePriceDetailObj.class, domainInstanceKeyValue, "id asc");
		request.setAttribute("dataList", dataList);

		// 转向
		if ("true".equalsIgnoreCase(request.getParameter("4m")))
		{
			request.getRequestDispatcher("/" + getBasePath() + "/" + BASE_METHOD_ADD_OR_MODIFY + "4m.jsp").forward(request, response);
		} else
		{
			request.getRequestDispatcher("/" + getBasePath() + "/" + BASE_METHOD_ADD_OR_MODIFY + ".jsp").forward(request, response);
		}
	}

	// 详情
	public void detail4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// super.detail(request, response);
		// 查询
		Object domainObj = getDomainDao().searchByKey(getDomainInstanceClz(), domainInstance.getKeyValue() + "");

		if (domainObj != null)
		{
			request.setAttribute(DOMAIN_INSTANCE, domainObj);
		}

		List dataList = childDao.searchByParentKey(PurcharsePriceDetailObj.class, domainInstance.getKeyValue() + "", "id asc");
		request.setAttribute("dataList", dataList);

		// 转向
		if ("true".equalsIgnoreCase(request.getParameter("4m")))
		{
			// request.getRequestDispatcher("/" + getBasePath() + "/" + BASE_METHOD_DETAIL + "4m.jsp").forward(request, response);
			response.getWriter().write(JSON.toJSONString(domainObj));
		} else
		{
			request.getRequestDispatcher("/" + getBasePath() + "/" + BASE_METHOD_DETAIL + ".jsp").forward(request, response);
		}
	}

	// 删除
	public void delete4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// super.delete(request, response);
		int successCount = getDomainDao().deleteByKey(domainInstanceKeyValue);

		if (successCount > 0)
		{
			childDao.deleteByParentKey(domainInstanceKeyValue);
		}

		// 转向
		if (successCount > 0)
		{
			list(request, response);
		} else
		{
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}

	// 删除 按前台条件查出的所有数据
	public void deleteAll4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.deleteAll(request, response);
	}

	// 导出
	public void export4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.export(request, response);
	}

	// 作成
	public void zuocheng(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		PurcharsePriceMainObj o = (PurcharsePriceMainObj) domainInstance;
		o.setZuocheng_status(o.YI_TI_JIAO);
		o.setQueren_status(o.DAI_QUE_REN);
		o.setZuocheng_time(TimeUtil.nowTime2TimeStamp());
		getDomainDao().update(o);

		request.setAttribute("needRefresh", true);

		detail4this(request, response);
	}
	// 确认
	public void queren(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		PurcharsePriceMainObj o = (PurcharsePriceMainObj) domainInstance;
		if (o.getBohui())
		{
			o.setQueren_status(o.YI_BO_HUI);
			o.setZuocheng_status(o.DAI_XIU_GAI);
		} else
		{
			o.setQueren_status(o.YI_QUE_REN);
			o.setShenhe_status(o.DAI_SHEN_HE);
		}
		o.setQueren_time(TimeUtil.nowTime2TimeStamp());
		getDomainDao().update(o);

		request.setAttribute("needRefresh", true);

		detail4this(request, response);
	}

	// 审核
	public void shenhe(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		PurcharsePriceMainObj o = (PurcharsePriceMainObj) domainInstance;
		if (o.getBohui())
		{
			o.setShenhe_status(o.YI_BO_HUI);
			o.setQueren_status(o.DAI_BO_HUI);
		} else
		{
			o.setShenhe_status(o.YI_SHEN_HE);
			o.setPizhun_status(o.DAI_PI_ZHUN);
		}
		o.setShenhe_time(TimeUtil.nowTime2TimeStamp());
		getDomainDao().update(o);

		request.setAttribute("needRefresh", true);

		detail4this(request, response);
	}

	// 批准
	public void pizhun(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		PurcharsePriceMainObj o = (PurcharsePriceMainObj) domainInstance;
		if (o.getBohui())
		{
			o.setPizhun_status(o.YI_BO_HUI);
			o.setShenhe_status(o.DAI_BO_HUI);
			
		} else
		{
			o.setPizhun_status(o.YI_PI_ZHUN);
		}

		o.setPizhun_time(TimeUtil.nowTime2TimeStamp());
		getDomainDao().update(o);

		request.setAttribute("needRefresh", true);

		detail4this(request, response);
	}
}
