<%-- 
    Document   : index
    Created on : 19.Kas.2013, 16:13:33
    Author     : GOGO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/affablebean.css">
    <title>The Affable Bean</title>
</head>
<body>

<div id="main">
<%-- <%@ include file="WEB-INF/jspf/header.jspf" %> --%>
<%-- 
<sql:query var="categories" dataSource="jdbc/affablebean">
    SELECT * FROM category
</sql:query>
--%>
    <div id="indexLeftColumn">
        <div id="welcomeText">
        <p>[ welcome text ]</p>
        <!-- test to access context parameters -->
        categoryImagePath: ${initParam.categoryImagePath}
        productImagePath: ${initParam.productImagePath}
         </div>
    </div>
    <div id="indexRightColumn">
                <c:forEach var="category" items="${categories}">
                    <div class="categoryBox">
                        <a href="category?${category.id}">

                            <span class="categoryLabelText">${category.name}</span>

                            <img src="${initParam.categoryImagePath}${category.name}.jpg"
                                 alt="${category.name}">
                        </a>
                    </div>
                </c:forEach>

    </div>
 
</div>
</body>
</html>
