<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Table</title>
</head>
<body>

	<button onclick="location.href='joinForm'">회원가입</button>
	<input type="button" onclick="mList()" value="회원목록">
	
	<c:choose>
		<c:when test="${not empty loginId}">
			<!-- 로그아웃 -->
			<button onclick="location.href='logout'">로그아웃</button>
		</c:when>
		
		<c:otherwise>
			<!-- 로그인 페이지로 이동 -->
			<button onclick="location.href='loginForm'">로그인</button>
		</c:otherwise>
	</c:choose>
	

	
	<h3>로그인ID : ${loginId}</h3>
	
	<!-- 
		[1] Session
			- Session(세션)은 정보가 Server(서버)에 저장된다.
			- 서버당 한개만 생성가능(ex. 로그인을 하면 다른 곳에서 같은 아이디로 로그인 불가능)
			- 브라우저를 종료하면 삭제된다.
			- 보안이 좋다.
			- 세션이 많아질 경우 서버에 과부하가 올 수 있다.
			
		[2] Cookie
			- Cookie(쿠키)는 정보가 Client(클라이언트)에 저장된다.
			- 클라이언트(컴퓨터)에 여러개(파일) 생성가능
			- 브라우저를 종료해도 기록이 남아있다. 단, 만료기간이 지나면 삭제된다.
			- 보안에 취약하다.
			
		[3] session으로 사용할 수 있는 메소드
			- setAttribute() : 세션에 데이터를 저장한다.
			- getAttribute() : 세션에 저장된 데이터를 불러온다.
			- getAttributeName() : 세션에 저장되어 있는 모든 세션의 이름을 가져온다.
			- getId() : 자동생성된 세션의 유니크한 아이디를 얻는다.
			- getCreateTime() : 세션이 생성된 시간을 구한다.
			- getLastAccessedTime() : 웹 브라우저가 마지막에 세션에 접근한 시간을 구한다.
			- setMaxInactiveInterval() : 세션의 유효시간을 설정(초단위)
			- getMaxInactiveInterval() : 세션의 유효시간을 얻는다.
			- removeAttribute() : 특정세션을 삭제한다.
			- invalidate() : 모든 세션을 삭제한다.
			
	
	 -->
</body>

<script>
	function mList(){
		location.href='mList';
	}
</script>
</html>