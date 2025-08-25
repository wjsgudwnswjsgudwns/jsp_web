<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Write a Post</title>
    <link rel="stylesheet" type="text/css" href="css/write.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>

    <!-- Header Include -->
    <jsp:include page="include/header.jsp" />

    <!-- Main Content -->
    <main class="main-content">
        <div class="write-container">
            <h2>Write a Post</h2>
            <form action="writeOk.do" method="post" class="write-form">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" id="title" name="title" placeholder="Enter title" required>
                </div>

                <div class="form-group">
                    <label for="writer">Writer</label>
                    <input type="text" id="writer" name="writer" value="${sessionScope.sessionId}" readonly="readonly" required>
                </div>

                <div class="form-group">
                    <label for="content">Content</label>
                    <textarea id="content" name="content" rows="10" placeholder="Write your content here..." required></textarea>
                </div>

                <div class="btn-box">
                    <button type="submit" class="btn">Submit</button>
                    <a href="music.do" class="btn cancel">Cancel</a>
                </div>
            </form>
        </div>
    </main>

    <!-- Footer Include -->
    <jsp:include page="include/footer.jsp" />

</body>
</html>
