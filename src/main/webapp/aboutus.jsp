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
<link rel="stylesheet" href="css/about.css">
<%@include file="WEB-INF/jspf/nav.jspf" %>

<div class="title-about">
        <h1>ABOUT US</h1>
    </div>

    <div class="text">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
            dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    </div>
<div class="history">
        <div class="title-banner">HISTORY</div>
        <div class="book-banner ">
            <div class="title-banner secondary-banner">Book Timeline</div>
            <div class="book-row">
                
                <%@include file="WEB-INF/jspf/results.jspf" %>
                
            </div>
            
            
<%@include file="WEB-INF/jspf/footer.jspf" %>
<%@include file="WEB-INF/jspf/close.jspf" %>