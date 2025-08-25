<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>LINDECIS STYLE INDEX</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>

    <!-- Header Include -->
     <jsp:include page="include/header.jsp" />

    <!-- Main Content -->
    <main class="main-content">
        <section class="intro">
            <h1>Welcome to LINDECIS World</h1>
            <p>Minimal, Modern, and Inspiring Music.</p>
        </section>
    </main>

    <!-- Footer Include -->
    <jsp:include page="include/footer.jsp" />

</body>
</html>
