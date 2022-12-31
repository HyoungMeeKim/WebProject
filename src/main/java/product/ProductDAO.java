package product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProductDAO {
    private static Connection conn;
    private static PreparedStatement pstmt;
    private static ResultSet rs;
    private String id;

    public ProductDAO() {
        try {
            String dbURL = "jdbc:mysql://localhost:3306/web_exr?serverTimezone=Asia/Seoul";
            String dbID = "root";
            String dbPassword = "8925";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static ArrayList<Product> showAllProduct() {
        String SQL = "SELECT * FROM PRODUCT";
        ArrayList<Product> productList = new ArrayList<>();
        try {
            pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                product.setProductID(rs.getString(1));
                product.setProductName(rs.getString(2));
                product.setCategoryID(rs.getString(3));
                product.setProductDesc(rs.getString(4));
                product.setPrice(rs.getString(5));
                productList.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return productList;
    }


    public static ArrayList<Product> showAllMtb() {
        String SQL = "SELECT * FROM PRODUCT WHERE CategoryID = 001 OR CategoryID = 002";
        ArrayList<Product> productList = new ArrayList<>();
        try {
            pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                product.setProductID(rs.getString(1));
                product.setProductName(rs.getString(2));
                product.setCategoryID(rs.getString(3));
                product.setProductDesc(rs.getString(4));
                product.setPrice(rs.getString(5));
                productList.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return productList;
    }
    public static ArrayList<Product> showAllRoad() {
        String SQL = "SELECT * FROM PRODUCT WHERE CategoryID = 003 OR CategoryID = 004";
        ArrayList<Product> productList = new ArrayList<>();
        try {
            pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                product.setProductID(rs.getString(1));
                product.setProductName(rs.getString(2));
                product.setCategoryID(rs.getString(3));
                product.setProductDesc(rs.getString(4));
                product.setPrice(rs.getString(5));
                productList.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return productList;
    }
    public static ArrayList<Product> showAllCity() {
        String SQL = "SELECT * FROM PRODUCT WHERE CategoryID = 005";
        ArrayList<Product> productList = new ArrayList<>();
        try {
            pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                product.setProductID(rs.getString(1));
                product.setProductName(rs.getString(2));
                product.setCategoryID(rs.getString(3));
                product.setProductDesc(rs.getString(4));
                product.setPrice(rs.getString(5));
                productList.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return productList;
    }

    public int deleteProduct(String productID) {
        String SQL = "DELETE FROM PRODUCT WHERE productID = ?";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, productID);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public ArrayList<Product> getSearch(String searchField, String searchText) {//특정한 리스트를 받아서 반환
        ArrayList<Product> productList = new ArrayList<>();
        String SQL = "SELECT * FROM PRODUCT WHERE " + searchField.trim();
        try {
            if (searchText != null && !searchText.equals("")) {//???
                SQL += " LIKE '%" + searchText.trim() + "%' ORDER BY productID DESC LIMIT 10";
            }
            pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();//select
            while (rs.next()) {
                Product product = new Product();
                product.setProductID(rs.getString(1));
                product.setProductName(rs.getString(2));
                product.setCategoryID(rs.getString(3));
                product.setProductDesc(rs.getString(4));
                product.setPrice(rs.getString(5));
                productList.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return productList;
    }

    public int insertProduct(Product product) {
        try {
            String SQL = "INSERT FROM PRODUCT VALUES(?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, product.getProductID());
            pstmt.setString(2, product.getProductName());
            pstmt.setString(3, product.getCategoryID());
            pstmt.setString(4, product.getProductDesc());
            pstmt.setString(5, product.getPrice());
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 오류
    }

    public int updateProduct(Product product) {
        try {
            String SQL = "UPDATE PRODUCT SET productName=?, categoryID=, productDesc=?, price=? WHERE productID=?";
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, product.getProductName());
            pstmt.setString(2, product.getCategoryID());
            pstmt.setString(3, product.getProductDesc());
            pstmt.setString(4, product.getPrice());
            pstmt.setString(5, product.getProductID());
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 오류
    }

}




