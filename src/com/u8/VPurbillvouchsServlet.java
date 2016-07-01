package com.u8;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.chyxion.xls.TableToXls;

import org.apache.commons.beanutils.MethodUtils;
import org.apache.log4j.Logger;

import com.alibaba.fastjson.JSON;
import com.purcharse.obj.PurcharsePriceDetailObj;
import com.u8.obj.VPurbillvouchsObj;
import com.wuyg.common.dao.DefaultBaseDAO;
import com.wuyg.common.dao.IBaseDAO;
import com.wuyg.common.obj.PaginationObj;
import com.wuyg.common.servlet.AbstractBaseServletTemplate;
import com.wuyg.common.util.RequestUtil;
import com.wuyg.common.util.StringUtil;
import com.wuyg.common.util.SystemConstant;
import com.wuyg.common.util.TimeUtil;

public class VPurbillvouchsServlet extends AbstractBaseServletTemplate
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
		return new DefaultBaseDAO(getDomainInstanceClz(), SystemConstant.U8_DB);
	}

	@Override
	public Class getDomainInstanceClz()
	{
		return com.u8.obj.VPurbillvouchsObj.class;
	}

	@Override
	public Class getDomainSearchConditionClz()
	{
		return com.u8.searchcondition.VPurbillvouchsSearchCondition.class;
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

	// 删除 按前台条件查出的所有数据
	public void deleteAll4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		super.deleteAll(request, response);
	}

	// 导出
	public void export4this(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
//		super.export(request, response);
		// 生成excel文件
		String filePath = this.getServletContext().getRealPath("/download/") + "/" + "报表" + "_" + TimeUtil.nowTime2str("yyyyMMddHHmmss") + ".xls";
		File xlsFile = new File(filePath);

		logger.info("导出文件,生成开始 " + filePath);
		
		// 转换为excel
		String table_html = request.getParameter("table_html");
		FileOutputStream fout = new FileOutputStream(filePath);
		TableToXls.process(table_html, fout);
		fout.close();
		
		logger.info("导出文件,生成完成 " + filePath + ",文件大小；" + (xlsFile.length() / 1024) + "K");

		// 下载
		RequestUtil.downloadFile(response, filePath);
	}

	// 核查
	public void checkPrice(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 查询出待核查的内容
		PaginationObj domainPagination = getDomainDao().searchPaginationByDomainInstance(domainInstance, true, domainInstance.findDefaultOrderBy(), domainSearchCondition.getPageNo(), domainSearchCondition.getPageCount());// 使用like构造条件
		List<VPurbillvouchsObj> pbvList = domainPagination.getDataList();

		// 查询出采购限价表
		String purcharsePriceMainId = request.getParameter("purcharsePriceMainId");
		IBaseDAO purcharsePriceDetailDao = new DefaultBaseDAO(PurcharsePriceDetailObj.class);
		List<PurcharsePriceDetailObj> priceList = purcharsePriceDetailDao.searchByParentKey(PurcharsePriceDetailObj.class, purcharsePriceMainId, null);

		// 核查
		for (int i = 0; i < pbvList.size(); i++)
		{
			VPurbillvouchsObj pbv = pbvList.get(i);

			boolean checked = false;
			for (int j = 0; j < priceList.size(); j++)
			{
				PurcharsePriceDetailObj ppd = priceList.get(j);

				if (ppd.getCinvcode().equalsIgnoreCase(pbv.getCinvcode()))
				{
					pbv.setPriceLimit(ppd.getPrice());

					if (pbv.getIcost().doubleValue() > ppd.getPrice().doubleValue())
					{
						pbv.setCheckResult(pbv.CHECK_RESULT_OVER);//超限价
					} else
					{
						pbv.setCheckResult(pbv.CHECK_RESULT_NOT_OVER);//未超限价
					}

					checked = true;
					continue;
				}

				if (!checked)
				{
					pbv.setCheckResult(pbv.CHECK_RESULT_NO_RULE);//无核查规则
				}
			}
		}

		request.setAttribute(DOMAIN_INSTANCE, domainInstance);
		request.setAttribute(DOMAIN_PAGINATION, domainPagination);
		request.setAttribute("checked", "true");

		// 转向
		request.getRequestDispatcher("/" + getBasePath() + "/" + BASE_METHOD_LIST + ".jsp").forward(request, response);
	}
}
