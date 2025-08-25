<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Footer</title>
    <link rel="stylesheet" type="text/css" href="../css/footer.css">
</head>
<body>
    <!-- Footer Section -->
    <footer class="site-footer">
        <div class="footer-logo">
            <a href="index.jsp">MONKEE</a>
        </div>
        <div class="footer-menu">
            <ul>
                <li><a href="music.do">Music</a></li>
                <li><a href="about.do">About</a></li>
                <li><a href="contact.do">Contact</a></li>
                <c:choose>
                	<c:when test="${not empty sessionScope.sessionId}">
               			<li><a href="logout.jsp">LOGOUT</a></li>
               		</c:when>
               		<c:otherwise>
               			<li><a href="login.jsp">LOGIN</a></li>
               		</c:otherwise>
                </c:choose>
            </ul>
        </div>
        <div class="footer-copy">
            <p>&copy; 2025 MONKEE. All Rights Reserved.</p>
        </div>
    </footer>
</body>
</html>
