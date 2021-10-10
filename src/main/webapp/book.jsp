<%-- 
    Document   : book
    Author     : Jessie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/connection.jspf" %>
<%    String isbn = request.getParameter("isbn");
    ResultSet rs = stmt.executeQuery("select * from BooksQuery where isbn = '" + isbn + "'");
    try {
        rs.next();

%>
<%@include file="WEB-INF/jspf/head.jspf" %>
<link rel="stylesheet" href="css/ProductPage.css">
<%@include file="WEB-INF/jspf/nav.jspf" %>



<div class="container">
    <div class="row">
        <div class="col-2">
            <img class="book-image" src="<%= rs.getString("coverpic")%>" alt="" align="left"/>
        </div>
        <div class="text">
            <div>
                <p> Home / Books </p>
                <h1> Book Text</h1>
                <h4>$<%= rs.getString("price")%></h4>
                <a href="showCart.jsp?isbn=<%= isbn %>"><i class="material-icons button">add_shopping_cart</i></a><br/>

                <h3>Book Details</h3>
                <p><%                        StringBuilder author = new StringBuilder(32);
                    author.append(rs.getString("au_firstname"));
                    String midName = rs.getString("au_midname");
                    if (!midName.equals("null")) {
                        author.append(" " + midName);
                    }
                    author.append(" " + rs.getString("au_lastname"));
                    %>
                    <%= rs.getString("pub_name")%><br/>
                    <%= isbn%><br/></span>
                    <%= rs.getString("description")%></p>
            </div>
        </div>
    </div>
</div>

<%
    } catch (Exception e) {

    }
%>

<%@include file="WEB-INF/jspf/footer.jspf" %>
<%@include file="WEB-INF/jspf/close.jspf" %>