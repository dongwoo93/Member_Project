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
<td colspan="2" style="text-align: center;">�α���</td>
</tr>

<tr>
<th>���̵�</th>
<td><input type="text" id="idinput" name="id"></td>
</tr>

<tr>
<th>��й�ȣ</th>
<td><input type="password" id="pwinput" name="pw"></td>
</tr>

<tr>
<td colspan="2"><button type="submit">�α���</button>
<button type="button" id="joinbtn">ȸ������</button></td>
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