<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%@page import="com.wuyg.common.util.TimeUtil"%>
<%@page import="com.wuyg.common.licence.LicenceUtil"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><%=LicenceUtil.getLicencedMachine().getName() %></title>
	</head>

<frameset rows="72,*,20" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="header.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="210,*" frameborder="no" border="0" framespacing="0">
    <frame src="menu.jsp" name="leftFrame" scrolling="yes" noresize="noresize" id="leftFrame" title="leftFrame" border="0" framespacing="0"/>
    <frame src="<%=request.getContextPath()%>/system_info.jsp" name="mainFrame" id="mainFrame" title="mainFrame"  border="0" framespacing="0"/>
  </frameset>
  <frame src="footer.jsp" id='copyrightFrame' name="copyrightFrame" scrolling="no" noresize  border="0" framespacing="0"/>
</frameset>
<noframes><body>
</body>
</noframes></html>