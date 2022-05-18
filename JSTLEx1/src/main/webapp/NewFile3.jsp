<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.co.dw.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

	<c:forEach begin="1" end="10" step="1" var="num">
	
		${num}<br>	
	
	</c:forEach>
	
	<br>
	<br>
	
	<%
		List<String> list = new ArrayList<String>();
		list.add("회원등록");
		list.add("회원목록");
		list.add("회원수정");
		list.add("회원삭제");
		list.add("회원인증");
	
		request.setAttribute("list", list);
	%>
	
	
	<c:forEach items="${list}" var="menu">
	
		<a href="#">${menu}</a> 
	
	
	
	</c:forEach>
	
	
	################################<br>
	
	<%
		List<MemberDTO> mList = new ArrayList<MemberDTO>();
		mList.add(new MemberDTO(1, "kim", 11));
		mList.add(new MemberDTO(2, "lee", 22));
		mList.add(new MemberDTO(3, "park", 33));
		mList.add(new MemberDTO(4, "kang", 44));
		mList.add(new MemberDTO(5, "oh", 55));
		
		request.setAttribute("mList", mList);
	%>
	
	<c:forEach items="${mList}" var="dto">
		<a href="/finddtobyid?id=${dto.id}">${dto.id} : ${dto.name}</a><br>
	
	</c:forEach>
	
	
	
	<br><br>
	:::::::::::::::::::::
<br><br>

	<%
		Map<String, MemberDTO> map = new HashMap<String, MemberDTO>();
		map.put("회장", new MemberDTO(1, "홍길동", 16));
		map.put("부회장", new MemberDTO(2, "고덕만", 55));
		map.put("총무", new MemberDTO(3, "세종", 70));
		
		request.setAttribute("map", map);
	
	%>
	
	
	<c:forEach items="${map}" var="obj">
		${obj.key} : ${obj.value.name} <br>
	
	</c:forEach>
















</body>
</html>