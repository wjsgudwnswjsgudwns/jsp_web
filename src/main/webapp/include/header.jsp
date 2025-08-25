<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Header</title>
    <link rel="stylesheet" type="text/css" href="../css/header.css">
</head>
<body>
    <!-- Header Section -->
    <header class="site-header">
        <div class="logo">
            <a href="index.jsp">MONKEE</a>
        </div>
        <nav class="nav-menu">
            <ul>
                <li><a href="music.do">Music</a></li>
                <li><a href="contact.do">Contact</a></li>
                <li><a href="contactConfirm.do?memberid=${sessionScope.sessionId}">My Reservation</a></li>
                <c:choose>
                	<c:when test="${not empty sessionScope.sessionId}">
               			<li><a href="logout.do">LOGOUT</a></li>
               		</c:when>
               		<c:otherwise>
               			<li><a href="login.do">LOGIN</a></li>
               		</c:otherwise>
                </c:choose>
                
                <c:if test="${not empty sessionScope.sessionId}">
               		<li><a href="memberModifyInfo.do">Modify</a></li>
               	</c:if>

            </ul>
        </nav>
    </header>
</body>
</html>
