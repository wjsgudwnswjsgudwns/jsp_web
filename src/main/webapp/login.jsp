<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>

    <!-- Header Include -->
    <jsp:include page="include/header.jsp" />

    <!-- Main Content -->
    <main class="main-content">
        <div class="login-container">
            <h2>Login</h2>
            <form action="loginok.do" method="post" class="login-form">
                <div class="form-group">
                    <input type="text" name="userid" placeholder="User ID" required>
                </div>
                <div class="form-group">
                    <input type="password" name="password" placeholder="Password" required>
                </div>
                <button type="submit" class="btn">Login</button>
            </form>
            <div class="login-links">
                <a href="register.do">Create Account</a> | 
            </div>
        </div>
    </main>

    <!-- Footer Include -->
    <jsp:include page="include/footer.jsp" />

</body>
</html>
