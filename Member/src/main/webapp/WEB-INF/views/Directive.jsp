<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	[1] JSP : 전체적인 틀은 HTML로 구성, Java코드를 <% %>안에 삽입 
	[2] JSP지시어 : <%@ %>로 구성되어 있는 코드
		1) Page 지시어
			1. language 
			   - language="java" (자바언어를 사용하겠다.) 
			   - 스크립트 요소에서 사용할 언어 설정
			2. contentType
			   - contentType="text/html; charset=UTF-8"
			   - jsp가 생성할 문서타입을 지정
			3. pageEncoding
			   - pageEncoding="UTF-8"
			   - 현재페이지의 문자 인코딩 타입 설정
			4. extends : 클래스 상속
			5. session 
			   - session="true"
			   - HttpSession 사용여부 결정
			6. errorPage
			
		2) Include 지시어
		 - 페이지를 삽입할 때 사용하는 지시어
		 - HTML태그를 넣어도 HTML결과가 나오는 것이 아니라 소스 자체를 통째로 가져온다고 보면된다.
		 
		3) Taglib 지시어
		 - <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		 - prefix : 어떤 타입의 태그 라이브러리를 작성할 것인가
		 - uri : 실제 존재하고 있는 TLD파일의 위치정보
		 - TLD파일 : 커스텀 태그 정보를 담고 있는 라이브러리 파일
 -->
</body>
</html>