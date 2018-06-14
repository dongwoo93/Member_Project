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
console.log("들어왔다");
console.log(${sessionScope.loginid});
</script>
	<c:choose>
		<c:when test="${sessionScope.loginid != null}">
			<table border="1">
				<tr>
					<th colspan="5">"${sessionScope.loginid}님 환영합니다."</th>
				</tr>
				<tr>
					<td><button id="logout">로그아웃</button></td>
					<td><button id="my">마이페이지</button></td>
					<td><button id="withdraw">회원탈퇴</button></td>
					<td><button id="edit">정보수정</button></td>
					<td><button id="toBoard">게시판</button></td>
				</tr>
			</table>
			<script>
				document.getElementById("logout").onclick = function() {
					location.href = "";
				}
				document.getElementById("withdraw").onclick = function() {
					var con = confirm("정말 탈퇴하시겠습니까?");
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
		</c:otherwise>
	</c:choose>



</body>
</html>