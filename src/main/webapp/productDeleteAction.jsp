<%@ page import="java.io.PrintWriter" %>
<%@ page import="product.ProductDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상품 삭제</title>
</head>
<body>
<%
    String productID = request.getParameter("productID");
    ProductDAO productDAO = new ProductDAO();
    int result = productDAO.deleteProduct(productID);
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
        script.println("location.href = 'showAllProduct.jsp'");
        script.println("</script>");
    }
%>

</body>
</html>
