<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<script>
	
		if(${result} > 0) {
			alert("ȸ������ �Ϸ�");
			location.href = "login.jsp" 
		}else {
			alert("ȸ������ ����");
			location.href = "login.jsp"
		}
			
	
	</script>

</body>
</html>