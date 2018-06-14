<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<script>
	$(document).ready(function() {
		$("#back").click(function() {
			$(location).attr("href", "login.jsp");
		})

		$("#check").keyup(function() {
			var val = $("#check").val();
			$.ajax({

				url : "idcheck.do",
				type : "get",
				data : {id : val},
				success : function(response) {
					$("#response").text(response);
				},
				error : function() {
					console.log("에러 발생함");
				}

			})

		})
	})
</script>


</head>
<body>

	<form action="signup.do" method="post">
		<table border="1">
			<tr>
				<th colspan="2">회원가입</th>
			</tr>
			<tr>
				<th>ID</th>
				<td><input type="text" placeholder="아이디를 입력하세요" name="id"
					id="check"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;" id="response"></td>
			</tr>
			<tr>
				<th>PW</th>
				<td><input type="password" placeholder="비밀번호를 입력하세요" name="pw"></td>
			</tr>
			<tr>
				<th>Name</th>
				<td><input type="text" placeholder="이름을 입력하세요" name="name">
				</td>
			</tr>
			<tr>
				<th>Email</th>
				<td><input type="text" placeholder="이메일을 입력하세요" name="email"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><input
					type="submit" value="가입하기"> <input type="button" id="back"
					value="뒤로가기"></td>

			</tr>
		</table>
	</form>



</body>
</html>