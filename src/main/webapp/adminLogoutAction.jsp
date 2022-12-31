<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>관리자 로그아웃 액션</title>
</head>
<body>
<%
  session.invalidate();
%>
<script>
  location.href = 'main.jsp';
</script>
</body>
</html>
