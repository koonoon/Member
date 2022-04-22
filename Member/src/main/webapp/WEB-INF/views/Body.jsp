<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="Header.jsp" %>
	<hr/>
	<h1>여기는 Body.jsp 입니다</h1>
	<hr/>
	<%@ include file="Footer.jsp" %>
	<hr/>
	
	<h2>c태그</h2>
	<c:set var="test" value="Hello Spring!"/>
	<!-- String test = "Hello Spring!"; -->
	
	<h3><c:out value="${test}"/></h3>
	<h3><c:out value="test"/></h3>
	
	<c:remove var="test"/>
	<h3>c: remove 사용 후<c:out value="${test}"/></h3>
	
	<c:catch var="err">
		<%=10/0 %>
	</c:catch>
	<h3>c: catch 샐행 후<c:out value="${err}"/></h3>
	
	<!-- c:if 참일때만 실행 -->
	<c:if test="${5+10==50}">
		<h3>5+10=50이 참이면 출력, 거짓이면 출력하지 않는다.</h3>
	</c:if>
	
	<c:if test="${5+10==15}">
		<h3>5+10=15이 참이면 출력, 거짓이면 출력하지 않는다.</h3>
	</c:if>
	
	<!-- c:when은 if, c:otherwise는 else -->
	<c:choose>
		<c:when test="${5+10==15}">
			<h3>c:when 5+10=15이다.</h3>
		</c:when>
		
		<c:otherwise>
			<h3>c:otherwise 5+10=50이 아니다.</h3>
		</c:otherwise>
	</c:choose>
	
	<c:forEach var="fe" begin="1" end="10" step="2">
		${fe}&nbsp;
	</c:forEach>
	
	
</body>
</html>