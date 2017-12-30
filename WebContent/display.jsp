
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="stud" 
    			class="com.beans.Student" 
    			type="com.beans.Student" 
    			scope="session">
    	<jsp:setProperty name="stud" property="*"/>
    </jsp:useBean>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
		<table border="5">
			<tr><h1>Student Details</h1></tr>
				<tr><td>Student ID:</td><td><jsp:getProperty name="stud" property="id"/></td></tr>
				<tr><td>Student Name:</td><td><jsp:getProperty name="stud" property="name"/></td></tr>
				<tr><td>Student city:</td><td><jsp:getProperty name="stud" property="city"/></td></tr>
		</table>
		</center>
		
</body>
</html>
