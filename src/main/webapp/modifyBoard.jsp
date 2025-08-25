<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Modify Board</title>
    <link rel="stylesheet" type="text/css" href="css/modifyBoard.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>

    <!-- Header -->
    <jsp:include page="include/header.jsp" />

    <main class="main-content">
        <div class="modify-board-container">
            <h2>Modify Board</h2>

            <form action="modifyBoardOk.do" method="post" class="modify-board-form">
                <!-- 글 번호 (hidden) -->
                <input type="hidden" name="bnum" value="${boardDto.bnum}">

                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" id="title" name="title" 
                           value="${boardDto.btitle}" required>
                </div>

                <div class="form-group">
                    <label for="writer">Writer</label>
                    <input type="text" id="writer" name="writer" 
                           value="${boardDto.memberid}" readonly>
                </div>

                <div class="form-group">
                    <label for="content">Content</label>
                    <textarea id="content" name="content" rows="10" required>${boardDto.bcontent}</textarea>
                </div>

                <div class="btn-box">
                    <button type="submit" class="btn">Update</button>
                    <a href="music.do" class="btn cancel">Cancel</a>
                </div>
            </form>
        </div>
    </main>

    <!-- Footer -->
    <jsp:include page="include/footer.jsp" />

</body>
</html>
