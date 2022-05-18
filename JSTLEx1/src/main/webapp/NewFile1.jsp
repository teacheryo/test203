<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setAttribute("id", "teacheryo");
	request.setAttribute("name", "홍길동");

%>

<c:out value="${id}"/>
<c:out value="${name}"/>
<br>

<c:if test="${empty id}">
로그인
</c:if>

<c:if test="${not empty id}">
${id}
</c:if>









</body>
</html>