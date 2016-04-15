package me.chyxion.xls;

import java.util.Scanner;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

/**
 * @version 0.0.1
 * @since 0.0.1
 * @author Shaun Chyxion <br>
 * chyxion@163.com <br>
 * Oct 24, 2014 2:07:51 PM
 */
public class TestDriver {
	
	public static void main(String[] args) throws Exception
	{
		StringBuilder src = new StringBuilder();
//		Scanner s = new Scanner(Thread.currentThread().getClass().getResourceAsStream("/sample.html"), "gbk");
//		while (s.hasNext()) {
//			html.append(s.nextLine());
//		}
//		s.close();
		
		src.append("<table id=\"main_table\" class=\"table table-bordered table-striped\" align=\"center\" width=\"98%\"> \n");
		src.append("				<thead> \n");
		src.append("					<tr> \n");
		src.append("						<th> \n");
		src.append("							科室 \n");
		src.append("						</th> \n");
		src.append("						<th colspan=\"3\"> \n");
		src.append("							人员经费 \n");
		src.append("						</th> \n");
		src.append("						<th colspan=\"3\"> \n");
		src.append("							卫生材料费 \n");
		src.append("						</th> \n");
		src.append("						<th colspan=\"3\"> \n");
		src.append("							药品费 \n");
		src.append("						</th> \n");
		src.append("						<th colspan=\"3\"> \n");
		src.append("							固定资产折旧费 \n");
		src.append("						</th> \n");
		src.append("						<th colspan=\"3\"> \n");
		src.append("							无形资产摊销 \n");
		src.append("						</th> \n");
		src.append("						<th colspan=\"3\"> \n");
		src.append("							提取医疗风险基金 \n");
		src.append("						</th> \n");
		src.append("						<th colspan=\"3\"> \n");
		src.append("							其他费用 \n");
		src.append("						</th> \n");
		src.append("						<th colspan=\"3\"> \n");
		src.append("							合计 \n");
		src.append("						</th> \n");
		src.append("					</tr> \n");
		src.append("				</thead> \n");
		src.append("				<thead> \n");
		src.append("					<tr> \n");
		src.append("						<th> \n");
		src.append("							&nbsp; \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							直接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							间接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							全成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							直接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							间接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							全成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							直接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							间接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							全成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							直接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							间接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							全成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							直接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							间接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							全成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							直接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							间接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							全成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							直接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							间接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							全成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							直接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							间接成本 \n");
		src.append("						</th> \n");
		src.append("						<th> \n");
		src.append("							全成本 \n");
		src.append("						</th> \n");
		src.append("					</tr> \n");
		src.append("				</thead> \n");
		src.append("				 \n");
		src.append("				<tr> \n");
		src.append("					<td>内科</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>244.6</td> \n");
		src.append("					<td>344.6</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>244.6</td> \n");
		src.append("					<td>344.6</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>244.6</td> \n");
		src.append("					<td>344.6</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>244.6</td> \n");
		src.append("					<td>344.6</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>244.6</td> \n");
		src.append("					<td>344.6</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>244.6</td> \n");
		src.append("					<td>344.6</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>244.6</td> \n");
		src.append("					<td>344.6</td> \n");
		src.append("					<td>700.0</td> \n");
		src.append("					<td>1712.2</td> \n");
		src.append("					<td>2412.2</td> \n");
		src.append("				</tr> \n");
		src.append("				 \n");
		src.append("				<tr> \n");
		src.append("					<td>外科</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>197.1</td> \n");
		src.append("					<td>297.1</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>197.1</td> \n");
		src.append("					<td>297.1</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>197.1</td> \n");
		src.append("					<td>297.1</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>197.1</td> \n");
		src.append("					<td>297.1</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>197.1</td> \n");
		src.append("					<td>297.1</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>197.1</td> \n");
		src.append("					<td>297.1</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>197.1</td> \n");
		src.append("					<td>297.1</td> \n");
		src.append("					<td>700.0</td> \n");
		src.append("					<td>1379.7</td> \n");
		src.append("					<td>2079.7</td> \n");
		src.append("				</tr> \n");
		src.append("				 \n");
		src.append("				<tr> \n");
		src.append("					<td>骨科</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>189.4</td> \n");
		src.append("					<td>289.4</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>189.4</td> \n");
		src.append("					<td>289.4</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>189.4</td> \n");
		src.append("					<td>289.4</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>189.4</td> \n");
		src.append("					<td>289.4</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>189.4</td> \n");
		src.append("					<td>289.4</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>189.4</td> \n");
		src.append("					<td>289.4</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>189.4</td> \n");
		src.append("					<td>289.4</td> \n");
		src.append("					<td>700.0</td> \n");
		src.append("					<td>1325.8</td> \n");
		src.append("					<td>2025.8</td> \n");
		src.append("				</tr> \n");
		src.append("				 \n");
		src.append("				<tr> \n");
		src.append("					<td>五官科</td> \n");
		src.append("					<td>60.0</td> \n");
		src.append("					<td>68.9</td> \n");
		src.append("					<td>128.9</td> \n");
		src.append("					<td>70.0</td> \n");
		src.append("					<td>68.9</td> \n");
		src.append("					<td>138.9</td> \n");
		src.append("					<td>80.0</td> \n");
		src.append("					<td>68.9</td> \n");
		src.append("					<td>148.9</td> \n");
		src.append("					<td>90.0</td> \n");
		src.append("					<td>68.9</td> \n");
		src.append("					<td>158.9</td> \n");
		src.append("					<td>100.0</td> \n");
		src.append("					<td>68.9</td> \n");
		src.append("					<td>168.9</td> \n");
		src.append("					<td>110.0</td> \n");
		src.append("					<td>68.9</td> \n");
		src.append("					<td>178.9</td> \n");
		src.append("					<td>120.0</td> \n");
		src.append("					<td>68.9</td> \n");
		src.append("					<td>188.9</td> \n");
		src.append("					<td>630.0</td> \n");
		src.append("					<td>482.3</td> \n");
		src.append("					<td>1112.3</td> \n");
		src.append("				</tr> \n");
		src.append("				 \n");
		src.append("				<tr style=\"color:blue\"> \n");
		src.append("					<td>临床类合计:</td> \n");
		src.append("					<td>360.0</td> \n");
		src.append("					<td>700.0</td> \n");
		src.append("					<td>1060.0</td> \n");
		src.append("					<td>370.0</td> \n");
		src.append("					<td>700.0</td> \n");
		src.append("					<td>1070.0</td> \n");
		src.append("					<td>380.0</td> \n");
		src.append("					<td>700.0</td> \n");
		src.append("					<td>1080.0</td> \n");
		src.append("					<td>390.0</td> \n");
		src.append("					<td>700.0</td> \n");
		src.append("					<td>1090.0</td> \n");
		src.append("					<td>400.0</td> \n");
		src.append("					<td>700.0</td> \n");
		src.append("					<td>1100.0</td> \n");
		src.append("					<td>410.0</td> \n");
		src.append("					<td>700.0</td> \n");
		src.append("					<td>1110.0</td> \n");
		src.append("					<td>420.0</td> \n");
		src.append("					<td>700.0</td> \n");
		src.append("					<td>1120.0</td> \n");
		src.append("					<td>2730.0</td> \n");
		src.append("					<td>4900.0</td> \n");
		src.append("					<td>7630.0</td> \n");
		src.append("				</tr> \n");
		src.append("			</table> \n");

		FileOutputStream fout = new FileOutputStream("c:/test/data.xls");
		TableToXls.process(src, fout);
		fout.close();
	}
}