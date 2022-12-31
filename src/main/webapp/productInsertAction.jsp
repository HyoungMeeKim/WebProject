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
    <title>상품 추가 Action</title>
</head>
<body>
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
