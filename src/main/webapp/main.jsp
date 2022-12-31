<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>메인 페이지</title>
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
                        <li><a class="dropdown-item" href="productMTB.jsp">MTB</a></li>
                        <li><a class="dropdown-item" href="productRoad.jsp">Road Bike</a></li>
                        <li><a class="dropdown-item" href="productCity.jsp">City Bike</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="productOther.jsp">Other Parts & Accessory</a></li>
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
<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="images/image_bg01.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="images/image_bg02.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="images/image_bg03.jpg" class="d-block w-100" alt="...">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>


<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인 포함 -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>
