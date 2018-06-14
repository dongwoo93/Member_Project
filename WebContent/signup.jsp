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
					console.log("���� �߻���");
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
				<th colspan="2">ȸ������</th>
			</tr>
			<tr>
				<th>ID</th>
				<td><input type="text" placeholder="���̵� �Է��ϼ���" name="id"
					id="check"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;" id="response"></td>
			</tr>
			<tr>
				<th>PW</th>
				<td><input type="password" placeholder="��й�ȣ�� �Է��ϼ���" name="pw"></td>
			</tr>
			<tr>
				<th>Name</th>
				<td><input type="text" placeholder="�̸��� �Է��ϼ���" name="name">
				</td>
			</tr>
			<tr>
				<th>Email</th>
				<td><input type="text" placeholder="�̸����� �Է��ϼ���" name="email"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><input
					type="submit" value="�����ϱ�"> <input type="button" id="back"
					value="�ڷΰ���"></td>

			</tr>
		</table>
	</form>



</body>
</html>