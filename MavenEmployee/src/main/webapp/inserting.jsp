<%@page import ="java.sql.DriverManager" %>
<%@page import ="java.sql.Connection"%>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="connectionClassObj" class="com.evry.asa.InsertDao" scope="request">
</jsp:useBean>
<jsp:setProperty property="employeeName" name="connectionClassObj" value='<%=request.getParameter("un")%>'/>
<jsp:setProperty property="employeeAddRess" name="connectionClassObj" value='<%=request.getParameter("ad")%>'/>
<jsp:setProperty property="employeePhoneNo" name="connectionClassObj" value='<%=request.getParameter("ph")%>'/>
<%
connectionClassObj.saveToDB();
%>

<%

	if(connectionClassObj.isResultSetValidations()){
	{	
		%>
		
		<jsp:forward page="results.jsp?msg=101"/>
		
        <%
	}
			
	}
	
		
	
%>
</body>
</html>