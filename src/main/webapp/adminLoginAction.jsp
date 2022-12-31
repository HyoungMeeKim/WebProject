
<%@ page import="java.io.PrintWriter" %>
<%@ page import="admin.AdminDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="admin" class="admin.Admin" scope="page" />
<jsp:setProperty name="admin" property="adminID" />
<jsp:setProperty name="admin" property="adminPassword" />
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">

  <title>관리자 로그인 액션</title>
</head>
<body>
<%
  String adminID = null;
  if(session.getAttribute("adminID") != null){
    adminID = (String) session.getAttribute("adminID");
  }
  if(adminID != null){
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('이미 로그인이 되어있습니다')");
    script.println("location.href = 'adminMain.jsp'");
    script.println("</script>");
  }

  AdminDAO adminDAO = new AdminDAO();
  //mysql data update

  int result = adminDAO.login(admin.getAdminID(), admin.getAdminPassword());

  if(result == 1)
  {
    session.setAttribute("adminID", admin.getAdminID());
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("location.href = 'adminMain.jsp'");
    script.println("</script>");
  }
  else if(result == 0){
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('비밀번호가 틀립니다.')");
    script.println("history.back()");
    script.println("</script>");
  }
  else if(result == -1) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('존재하지 않는 아이디입니다.')");
    script.println("history.back()");
    script.println("</script>");
  }
  else if(result == -2) {
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('데이터베이스 오류가 발생했습니다.')");
    script.println("history.back()");
    script.println("</script>");
  }

%>

</body>
</html>
