<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>

    <jsp:include page="include/header.jsp" />

    <main class="main-content">
        <div class="register-container">
            <h2>Create Account</h2>
            <form action="registerOk.do" method="post" class="register-form">
                <div class="form-group">
                    <label for="userid">User ID</label>
                    <input type="text" id="userid" name="userid" placeholder="Enter User ID" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Enter Password" required>
                </div>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your name" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" placeholder="Enter phone number" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Enter email" required>
                </div>
                <button type="submit" class="btn">Register</button>
            </form>
            <div class="register-links">
                <p>Already have an account? <a href="login.do">Login</a></p>
            </div>
        </div>
    </main>

    <jsp:include page="include/footer.jsp" />

</body>
</html>