package com.u8;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.wuyg.common.dao.DefaultBaseDAO;
import com.wuyg.common.dao.IBaseDAO;
import com.wuyg.common.servlet.AbstractBaseServletTemplate;
import com.wuyg.common.util.SystemConstant;

public class SoSodetailsServlet extends AbstractBaseServletTemplate
{
	private Logger logger = Logger.getLogger(getClass());

	@Override
	public String getBasePath()
	{
		return domainInstance.getBasePath();
	}

	@Override
	public IBaseDAO getDomainDao()
	{
		return new DefaultBaseDAO(getDomainInstanceClz(),SystemConstant.U8_DB);
	}

	@Override
	public Class getDomainInstanceClz()
	{
		return com.u8.obj.SoSodetailsObj.class;
	}

	@Override
	public Class getDomainSearchConditionClz()
	{
		return com.u8.searchcondition.SoSodetailsSearchCondition.class;
	}

	// 查询
	public void list4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.list(request,response);
	}

	// 检查ID是否已录入系统
	public void checkId4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.checkId(request,response);
	}

	// 增加 or 修改
	public void addOrModify4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.addOrModify(request,response);
	}

	// 修改前查询领域对象信息
	public void preModify4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.preModify(request,response);
	}

	// 详情
	public void detail4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.detail(request,response);
	}

	// 删除
	public void delete4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.delete(request,response);
	}

	// 导出
	public void export4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.export(request,response);
	}

}
