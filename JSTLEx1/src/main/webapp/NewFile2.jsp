<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		/* command 클래스에서 작업했다고 가정해 주세요.
		request나 session에 바인딩해야 하는데 pageContext를 보여주고 싶었음 
		*/
		pageContext.setAttribute("score", 100);
	%>
	
	
	<c:choose>
		<c:when test="${score>80}">
			성적이 우수하군요.
		</c:when>
		
		<c:when test="${score>70}">
			성적이 우수하군요.
		</c:when>
		
		<c:otherwise>
			성적이 우수하군요.
		</c:otherwise>
	</c:choose>
	
	
	
	






</body>
</html>