<%-- 
    Document   : index
    Author     : Jessie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/connection.jspf" %>
<%    ResultSet rs = stmt.executeQuery("select * from Books where Special = 1");
%>
<%@include file="WEB-INF/jspf/head.jspf" %>
<link rel="stylesheet" href="css/home.css">
<%@include file="WEB-INF/jspf/nav.jspf" %>

<div class="title-banner">Recommended Books</div>
<div class="book-row">

    <%@include file="WEB-INF/jspf/results.jspf" %>

</div>
</div>
<%@include file="WEB-INF/jspf/footer.jspf" %>
<%@include file="WEB-INF/jspf/close.jspf" %>