<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>관리자 페이지</title>
  <link href="css/styles.css" rel="stylesheet" />
  <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<style>
  a:link    { color: black; text-decoration: none }
  a:visited { color: black; text-decoration: none }
  a:hover   { color: black; text-decoration: none }
  a:active  { color: black; text-decoration: none }
</style>

<body>
<%
  String userID = null;
  if(session.getAttribute("userID")!=null){
    userID=(String) session.getAttribute("userID");
  }
%>
<div class="container text-center">
  <a href="main.jsp"><br><img src="images/myONEBIKE_logo.png"><br><br></a>
</div>
<nav class="navbar navbar-expand-lg bg-white border">
  <div class="container-fluid">

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active"  style="width:230px" aria-current="page" href="main.jsp">Home</a>
        </li>
        <li class="nav-item" style="width:230px">
          <a class="nav-link" href="aboutUs.jsp">회사 소개</a>
        </li>
        <li class="nav-item dropdown" style="width:230px">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
             aria-expanded="false">
          제품
        </a>
        <ul class="dropdown-menu">
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="productMTB.jsp">MTB</a></li>
            <li><a class="dropdown-item" href="productRoad.jsp">Road Bike</a></li>
            <li><a class="dropdown-item" href="productCity.jsp">City Bike</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="productOther.jsp">Other Parts & Accessory</a></li>
          </ul>
        </ul>
        </li>
        <li class="nav-item" style="width:230px">
          <a class="nav-link" href="adminLogin.jsp">관리자</a>
        </li>
      </ul>
      <%
        if(userID==null){
      %>

      <span class="navbar-text">
	    <ul class="navbar-nav me-auto mb-1 mb-lg-0">

        <li class="nav-item" style="width:50px">
          <a class="nav-link active"  aria-current="page" href="userLogin.jsp"><img src="images/icons/person.svg" height="30" width="30" alt="로그인"
                                                                                    title="로그인"></a>
        </li>
        <li class="nav-item" style="width:50px">
          <a class="nav-link active"  aria-current="page" href="userLogin.jsp"><img src="images/icons/person-lines-fill.svg" height="30" width="30"
                                                                                    alt="마이페이지" title="마이페이지"></a>
        </li>
        <li class="nav-item" style="width:50px">
          <a class="nav-link active"  aria-current="page" href="order.jsp"><img src="images/icons/cart.svg" height="30" width="30" alt="주문"
                                                                                title="주문"></a></a>
        </li>
</ul>
      </span>
      <%
      }
      else {
      %>
      <span class="navbar-text">
	      <ul class="navbar-nav me-auto mb-1 mb-lg-0">

        <li class="nav-item" style="width:50px">
          <a class="nav-link active"  aria-current="page" href="userLogoutAction.jsp"><img src="images/icons/person-check.svg" height="30" width="30" alt="로그아웃"
                                                                                           title="로그아웃"></a>
        </li>
        <li class="nav-item" style="width:50px">
          <a class="nav-link active"  aria-current="page" href="myPage.jsp"><img src="images/icons/person-lines-fill.svg" height="30" width="30"
                                                                                 alt="마이페이지" title="마이페이지"></a>
        </li>
        <li class="nav-item" style="width:50px">
          <a class="nav-link active"  aria-current="page" href="order.jsp"><img src="images/icons/cart.svg" height="30" width="30" alt="주문"
                                                                                title="주문"></a>
        </li>
</ul>
      </span>

      <%
        }
      %>


    </div>
  </div>
</nav>

<div id="layoutSidenav">
  <div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">
      <div class="sb-sidenav-menu">
        <div class="nav"r>
          <div><a class="nav-link" href="showAllUser.jsp" style="margin-top: 12px">회원 관리</a></div>
          <hr class="sidenav-divider">

          <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
            게시판 관리
            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
          </a>
          <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
            <nav class="sb-sidenav-menu-nested nav">
              <a class="nav-link" href="adminReviewBoard.jsp">상품평 게시판</a>
              <a class="nav-link" href="adminQnABoard.jsp">Q&A 게시판</a>
            </nav>
          </div>
          <hr class="sidenav-divider">

          <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
            상품 관리
            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
          </a>
          <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
            <nav class="sb-sidenav-menu-nested nav">
              <a class="nav-link" href="showAllProduct.jsp">모든 상품</a>
              <a class="nav-link" href="showAllProductMtb.jsp">MTB</a>
              <a class="nav-link" href="showAllProductRoad.jsp">ROAD</a>
              <a class="nav-link" href="showAllProductCity.jsp">CITY</a>
              <a class="nav-link" href="showAllProductOtherParts.jsp">부품 및 악세사리</a>
            </nav>
          </div>
          <hr class="sidenav-divider">

          <div><a class="nav-link" href="adminOrder.jsp">주문 관리</a></div>

        </div>
      </div>

    </nav>
  </div>
  <div id="layoutSidenav_content">
    <main>
      <div class="container-fluid px-4">
        <h3 class="mt-3">관리자 페이지</h3>
        <p>회원 관리 & 상품 관리(모든 상품과 MTB) 제외 미완성</p>



      </div>
    </main>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
</body>
</html>
