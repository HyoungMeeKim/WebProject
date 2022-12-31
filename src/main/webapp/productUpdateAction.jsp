<%@ page import="java.io.PrintWriter" %>
<%@ page import="product.ProductDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="product" class="product.Product" scope="page"/>
<jsp:setProperty name="product" property="productID"/>
<jsp:setProperty name="product" property="productName"/>
<jsp:setProperty name="product" property="categoryID"/>
<jsp:setProperty name="product" property="productDesc"/>
<jsp:setProperty name="product" property="price"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>상품 수정 Action</title>
</head>
<body>
<%
    String productID = request.getParameter("productID");
    String productName = request.getParameter("productNAME");
    String categoryID = request.getParameter("categoryID");
    String productDesc = request.getParameter("productDesc");
    String price = request.getParameter("price");

    ProductDAO productDAO = new ProductDAO();
    int result = productDAO.updateProduct(productID);
    if (result == -1) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('데이터베이스 오류가 발생했습니다.')");
        script.println("history.back()");
        script.println("</script>");
    } else {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('정보가 삭제되었습니다.')");
        script.println("location.href = 'showAllUser.jsp'");
        script.println("</script>");
    }
%>






<%
    String productID = null;
    if (session.getAttribute("productID") != null) {
        productID = (String) session.getAttribute("productID");
    }
    if (productID != null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('이미 존재하는 ID입니다')");
        script.println("history.back()");
        script.println("</script>");
    }

    if (product.getProductID() == null ||
            product.getProductName() == null ||
            product.getCategoryID() == null ||
            product.getProductDesc() == null ||
            product.getPrice() == null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('모든 칸을 채워주세요.')");
        script.println("history.back()");
        script.println("</script>");
    } else {
        ProductDAO productDAO = new ProductDAO();

        int result = productDAO.insertProduct(product);

        if (result == -1) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('이미 존재하는 아이디입니다.')");
            script.println("history.back()");
            script.println("</script>");
        } else {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('상품 정보 페이지로 이동합니다.')");
            script.println("location.href = 'showAllProduct.jsp'");
            script.println("</script>");
        }
    }
%>

</body>
</html>
