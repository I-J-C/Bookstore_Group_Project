<%-- 
    Document   : search
    Author     : Jessie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/connection.jspf" %>
<%  String keyword = request.getParameter("keyword");
    ResultSet rs = stmt.executeQuery("select distinct category from Books");
%>
<%@include file="WEB-INF/jspf/head.jspf" %>
<link rel="stylesheet" href="css/search.css">
<%@include file="WEB-INF/jspf/nav.jspf" %>

<div class="wrapper">
    <div class="results">
        <div class="filters"> <section>
                <h3>Search By Category</h3>
                <form action="searchResults.jsp" method="get">
                    <select name="keyword">
                        <option value="">Choose A Category</option>
                        <%
                            while (rs.next()) {
                        %>
                        <option value="<%= rs.getString("category")%>"><%= rs.getString("category")%></option>
                        <%
                            }
                            StringBuffer sb = new StringBuffer(64);
                            sb.append("select * from BooksQuery where title like '%");
                            sb.append(keyword);
                            sb.append("%' or category like '%");
                            sb.append(keyword);
                            sb.append("%' or description like '%");
                            sb.append(keyword);
                            sb.append("%' or au_lastname like '%");
                            sb.append(keyword);
                            sb.append("%' or isbn like '%");
                            sb.append(keyword);
                            sb.append("%' or keywords like '%");
                            sb.append(keyword);
                            sb.append("%' order by Price desc");
                            rs = stmt.executeQuery(sb.toString());
                        %>
                    </select>
                    <a onClick="document.forms[0].submit()"><i class="material-icons button">search</i></a>
                </form>
                <hr/>
            </section>
            <section>
                <h3>Search By Keyword</h3>
                <form action="searchResults.jsp" method="get">
                    <input type="text" name="keyword" placeholder="Enter a keyword" />
                    <a onClick="document.forms[1].submit()"><i class="material-icons button">search</i></a>
                </form>
                <hr/>
            </section>
        </div>
        <%@include file="WEB-INF/jspf/searchResults.jspf" %>

    </div>
</div>
<%@include file="WEB-INF/jspf/footer.jspf" %>
<%@include file="WEB-INF/jspf/close.jspf" %>