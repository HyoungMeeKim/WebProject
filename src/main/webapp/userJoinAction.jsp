<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userPhone"/>
<jsp:setProperty name="user" property="userEmail"/>
<jsp:setProperty name="user" property="userZIP"/>
<jsp:setProperty name="user" property="userAddress"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>JoinAction</title>
</head>
<body>
<%
    String userID = null;
    if (session.getAttribute("userID") != null) {
        userID = (String) session.getAttribute("userID");
    }
    if (userID != null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('이미 로그인이 되어있습니다')");
        script.println("location.href = 'main.jsp'");
        script.println("</script>");
    }

    if (user.getUserID() == null ||
            user.getUserName() == null ||
            user.getUserPassword() == null ||
            user.getUserPhone() == null ||
            user.getUserEmail() == null ||
            user.getUserZIP() == null ||
            user.getUserAddress() == null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('모든 칸을 채워주세요.')");
        script.println("history.back()");
        script.println("</script>");
    } else {
        UserDAO userDAO = new UserDAO();

        int result = userDAO.join(user);

        if (result == -1) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('이미 존재하는 아이디입니다.')");
            script.println("history.back()");
            script.println("</script>");
        } else {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('로그인페이지로 이동합니다.')");
            script.println("location.href = 'userLogin.jsp'");
            script.println("</script>");
        }
    }
%>

</body>
</html>
