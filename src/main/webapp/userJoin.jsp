<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="generator" content="Hugo 0.104.2">
    <title>회원가입 페이지</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        a:link    { color: black; text-decoration: none }
        a:visited { color: black; text-decoration: none }
        a:hover   { color: black; text-decoration: none }
        a:active  { color: black; text-decoration: none }
    </style>


    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
</head>
<body class="text-center">

<div class="form-signin w-100 m-auto">
    <h1 class="h3 mb-3 fw-normal">회원가입<br></h1>
    <div>
        <form method="post" action="userJoinAction.jsp">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="전화번호" name="userPhone" maxlength="20">
            </div>
            <div class="form-group">
                <input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="우편번호" name="userZIP" maxlength="20">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="주소" name="userAddress" maxlength="20">
            </div>
            <div style="height: 40px; ">
            </div>
            <div></div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">가입</button>
        </form>
    </div>
</div>
</body>
</html>
