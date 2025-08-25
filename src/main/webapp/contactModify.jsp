<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="include/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>예약 수정</title>
    <link rel="stylesheet" type="text/css" href="css/contactModify.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>
<div class="contact-container">
    <h2>예약 수정</h2>

    <c:if test="${not empty contactDto}">
        <form action="contactModifyProcess.do" method="post" class="contact-form">
            <input type="hidden" name="memberid" value="${contactDto.memberDto.memberid}" />

            <div class="form-group">
                <label>이름</label>
                <input type="text" name="membername" value="${contactDto.memberDto.membername}" readonly />
            </div>

            <div class="form-group">
                <label>이메일</label>
                <input type="email" name="memberemail" value="${contactDto.memberDto.memberemail}" readonly />
            </div>

            <div class="form-group">
                <label>전화번호</label>
                <input type="text" name="memberphone" value="${contactDto.memberDto.memberphone}" />
            </div>

            <div class="form-group">
                <label>예약 날짜</label>
                <input type="date" name="contact_date" value="${contactDto.contact_date}" />
            </div>

            <div class="form-group">
                <label>예약 시간</label>
                <input type="time" name="contact_time" value="${contactDto.contact_time}" />
            </div>

            <div class="form-group">
                <label>예약 내용</label>
                <textarea name="contact_content">${contactDto.contact_content}</textarea>
            </div>

            <div class="contact-actions">
                <button type="submit" class="btn-submit">수정 완료</button>
                <a href="contactConfirm.do?memberid=${contactDto.memberDto.memberid}" class="btn-cancel">취소</a>
            </div>
        </form>
    </c:if>

    <c:if test="${empty contactDto}">
        <p>수정할 예약 정보가 없습니다.</p>
    </c:if>
</div>
</body>
<%@ include file="include/footer.jsp" %>
</html>
