<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
<style>
	table,tr,td,th{
	 	border : 1px solid;
	 	border-collapse : collapse;
	 	padding : 10px;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		
		<c:forEach var="mem" items="${memberList}">
		<tr>
			<td><a href="memberView?fId=${mem.fId}">${mem.fId}</a></td>
			<td>${mem.fName}</td>
			<td><button onclick="location.href='memberModiForm?fId=${mem.fId}'">수정</button>
			<td><input type="button" onclick="mDelete()" value="삭제">
			
			
		</tr>
		</c:forEach>
	</table>
	
</body>
<script>
	function mDelete(){
		if(confirm("삭제하시겠습니까?")){
		    location.href="'memberDelete?fId=${mem.fId}'"
		} else {
			alert("취소하셨습니다")
		}
	}
</script>

</html>