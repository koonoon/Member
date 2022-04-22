<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입 페이지</h1>
	
	<form action="memberJoin" method="POST">
	
	아이디 : <input type="text" name="fId"/> <br/>
	비밀번호 : <input type="password" name="fPw"/> <br/>
	이름 : <input type="text" name="fName"/> <br/>
	생년월일 : <input type="date" name="fBirth"/> <br/>
	성별 : 남자<input type="radio" name="fGen" value="남"/> 
		  여자<input type="radio" name="fGen" value="여"/> <br/>
	연락처 : <input type="text" name="fPhone"/> <br/>
	주소 : <input type="text" name="fAddr"/> <br/>
	이메일 : <input type="email" name="fEmail"/> <br/>
	<input type="submit" value="가입"/>
	<input type="reset" value="다시작성"/>
	
	</form>

</body>
</html>