<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>예약하기</title>
    <link rel="stylesheet" type="text/css" href="css/contact2.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>
    <div class="contact-container">
        <h2>예약 신청</h2>
        <p>아래 양식을 작성하여 예약을 진행해주세요.</p>
        
        <form action="contactProcess.do" method="post" class="contact-form">
            <label for="memberid">아이디</label>
            <input type="text" id="memberid" name="memberid" value="${sessionScope.sessionId}" required>

            <label for="membername">이름</label>
            <input type="text" id="membername" name="membername" value="${sessionScope.loginUser.membername}" required>

            <label for="memberemail">이메일</label>
            <input type="email" id="memberemail" name="memberemail" value="${sessionScope.loginUser.memberemail}"  required>

            <label for="memberphone">전화번호</label>
            <input type="text" id="memberphone" name="memberphone" value="${sessionScope.loginUser.memberphone}"  required>

            <label for="contact_date">예약 날짜</label>
            <input type="date" id="contact_date" name="contact_date" required>

            <label for="contact_time">예약 시간</label>
            <input type="time" id="contact_time" name="contact_time" required>

            <label for="contact_content">예약 내용</label>
            <textarea id="contact_content" name="contact_content" rows="4" placeholder="예약 관련 내용을 입력하세요." required></textarea>

            <button type="submit" class="btn-submit">예약하기</button>
        </form>
    </div>
</body>
<%@ include file="include/footer.jsp" %>
</html>
