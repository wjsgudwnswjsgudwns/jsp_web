<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Modify My Info</title>
    <link rel="stylesheet" type="text/css" href="css/modifyMemberInfo.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>

    <jsp:include page="include/header.jsp" />

    <main class="main-content">
        <div class="modify-container">
            <h2>Modify My Info</h2>
            <c:if test="${not empty errorMsg}">
                <p class="error-message">${errorMsg}</p>
            </c:if>
            <form action="memberModifyOk.do" method="post" class="modify-form">
                <div class="form-group">
                    <label for="userid">User ID</label>
                    <input type="text" id="userid" name="userid" value="${sessionScope.sessionId}" readonly>
                </div>
                <div class="form-group">
                    <label for="newPassword">New Password</label>
                    <input type="password" id="newPassword" name="newPassword" placeholder="Enter new password" required>
                </div>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" value="${memberDao.membername}" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" value="${memberDao.memberphone}" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" value="${memberDao.memberemail}" required>
                </div>
                <div class="btn-box">
                    <button type="submit" class="btn">Update</button>
                    <a href="mypage.do" class="btn cancel">Cancel</a>
                </div>
            </form>
        </div>
    </main>

    <jsp:include page="include/footer.jsp" />

</body>
</html>