<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="login.do" method="post">
<table border="1">

<tr>
<td colspan="2" style="text-align: center;">로그인</td>
</tr>

<tr>
<th>아이디</th>
<td><input type="text" id="idinput" name="id"></td>
</tr>

<tr>
<th>비밀번호</th>
<td><input type="password" id="pwinput" name="pw"></td>
</tr>

<tr>
<td colspan="2"><button type="submit">로그인</button>
<button type="button" id="joinbtn">회원가입</button></td>
</tr>

</table>
</form>

<script>
document.getElementById("joinbtn").onclick = function() {
	location.href = "signup.jsp";
}
</script>

</body>
</html>