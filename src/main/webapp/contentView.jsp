<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>게시글 보기</title>
    <link rel="stylesheet" type="text/css" href="css/music.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <link rel="stylesheet" type="text/css" href="css/content.css"><!-- 추가된 부분 -->
</head>
<body>

    <!-- header include -->
    <jsp:include page="include/header.jsp" />

	    <main class="content-container">
	
	    <h2 class="post-title">${boardDto.btitle}</h2>
	
	    <!-- 작성자/날짜/조회수 박스 -->
	    <div class="post-meta-box">
	        <span>작성자: ${boardDto.memberid}</span>
	        <span>작성일: ${boardDto.bdate}</span>
	        <span>조회수: ${boardDto.bhit}</span>
	    </div>
	
	    <!-- 본문 -->
	    <div class="post-content">${boardDto.bcontent}</div>
	
	    <!-- 버튼 영역 -->
	    <div class="btn-box">
	        <a href="music.do" class="btn default">목록</a>
	        <c:choose>
    		<c:when test="${sessionScope.role == 'ADMIN'}">
       		<a href="modifyBoard.do?bnum=${boardDto.bnum}" class="btn primary">수정</a>
   			<a href="delete.do?bnum=${boardDto.bnum}" class="btn danger">삭제</a>
    		</c:when>
    		
    		<c:otherwise>
	        <c:if test="${sessionScope.sessionId == boardDto.memberid}">
	            <a href="modifyBoard.do?bnum=${boardDto.bnum}" class="btn primary">수정</a>
	            <a href="delete.do?bnum=${boardDto.bnum}" class="btn danger"
	               onclick="return confirm('정말 삭제하시겠습니까?');">삭제</a>
	        </c:if>
	        </c:otherwise>
	        </c:choose>
	    </div>
	
		</main>

    <!-- footer include -->
    <jsp:include page="include/footer.jsp" />

</body>
</html>