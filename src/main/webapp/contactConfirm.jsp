<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>예약 확인</title>
    <link rel="stylesheet" type="text/css" href="css/contactConfirm.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>
    <div class="contact-container">
        <h2>예약 확인</h2>
        <p>고객님의 예약 내역은 다음과 같습니다.</p>

        <div class="contact-confirm">
            <p><strong>아이디:</strong>${contactDto.memberDto.memberid}</p>
            <p><strong>이름:</strong>${contactDto.memberDto.membername}</p>
            <p><strong>이메일:</strong>${contactDto.memberDto.memberemail}</p>
            <p><strong>전화번호:</strong>${contactDto.memberDto.memberphone}</p>
            <p><strong>예약 날짜:</strong>${contactDto.contact_date}</p>
            <p><strong>예약 시간:</strong>${contactDto.contact_time}</p>
            <p><strong>예약 내용:</strong></p>
            <div class="contact-content-box">${contactDto.contact_content}</div>
        </div>

        <div class="contact-actions">
            <a href="index.do" class="btn-submit">홈으로</a>
            <a href="contact.do" class="btn-cancel">새 예약하기</a>
            <a href="contactModify.do?sessionId=${sessionScope.sessionId}" class="btn-cancel">예약 수정</a>
            <a href="contactCancel.do?memberid=${contactDto.memberDto.memberid}" class="btn-cancel">예약 취소</a>
        </div>
    </div>
</body>
<%@ include file="include/footer.jsp" %>
</html>
