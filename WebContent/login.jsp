<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
</head>
<body>
<script>
console.log("���Դ�");
console.log(${sessionScope.loginid});
</script>
	<c:choose>
		<c:when test="${sessionScope.loginid != null}">
			<table border="1">
				<tr>
					<th colspan="5">"${sessionScope.loginid}�� ȯ���մϴ�."</th>
				</tr>
				<tr>
					<td><button id="logout">�α׾ƿ�</button></td>
					<td><button id="my">����������</button></td>
					<td><button id="withdraw">ȸ��Ż��</button></td>
					<td><button id="edit">��������</button></td>
					<td><button id="toBoard">�Խ���</button></td>
				</tr>
			</table>
			<script>
				document.getElementById("logout").onclick = function() {
					location.href = "";
				}
				document.getElementById("withdraw").onclick = function() {
					var con = confirm("���� Ż���Ͻðڽ��ϱ�?");
					if (con) {
						location.href = "";
					}

				}
				document.getElementById("my").onclick = function() {
					location.href = "";
				}

				document.getElementById("edit").onclick = function() {
					location.href = "";
				}

				document.getElementById("toBoard").onclick = function() {
					location.href = "";
				}
			</script>
		</c:when>
		<c:otherwise>
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
		</c:otherwise>
	</c:choose>



</body>
</html>