<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="generator" content="Hugo 0.104.2">
    <title>상품 수정 페이지</title>
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
    <h1 class="h3 mb-3 fw-normal">상품 수정<br></h1>
    <div>
        <form method="post" action="productInsertAction.jsp">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="아이디" name="productID" maxlength="20">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="이름" name="productName" maxlength="20">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="카테고리" name="categoryID" maxlength="20">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="상세" name="productDesc" maxlength="20">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="가격" name="price" maxlength="20">
            </div>
            <div style="height: 40px; ">
            </div>
            <div></div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">수정</button>
        </form>
    </div>
</div>
</body>
</html>
