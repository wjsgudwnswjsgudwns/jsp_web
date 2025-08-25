<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Music Board</title>
    <link rel="stylesheet" type="text/css" href="css/music.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>

    <!-- Header Include -->
    <jsp:include page="include/header.jsp" />

    <!-- Main Content -->
    <main class="main-content">
        <h2>Music Board</h2>
        <table class="music-table">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Title</th>
                    <th>Writer</th>
                    <th>Date</th>
                    <th>Views</th>
                </tr>
            </thead>
            <tbody>
            	
                <!-- 예시 데이터 -->
                <c:forEach items="${bDtos}" var="bDto">
					<tr>
						<td style="text-align:center">${bDto.bno}</td> <!-- 번호 -->
						<td style="text-align:center"> <!-- 제목 -->
						
							<c:choose>
								<c:when test="${fn:length(bDto.btitle) > 25}">
									<a href="contentView.do?bnum=${bDto.bnum}">${fn:substring(bDto.btitle, 0 ,25)}...</a>
								</c:when>
						
								<c:otherwise>
									<a href="contentView.do?bnum=${bDto.bnum}">${bDto.btitle}</a>
								</c:otherwise>
							</c:choose>
						
						</td>
						<td style="text-align:center">${bDto.memberid}</td> <!-- 작성자 -->
						<td style="text-align:center">${fn:substring(bDto.bdate,0,10)}</td> <!-- 날짜 -->
						<td style="text-align:center">${bDto.bhit}</td> <!-- 조회수 -->
					</tr>
              </c:forEach>
            </tbody>
        </table>

        <!-- 글쓰기 버튼 -->
        <div class="btn-box">
            <a href="write.do" class="btn">Write</a>
        </div>
    </main>
    
    <!-- 1 페이지로 이동 -->
	<div class="pagination">
    <!-- 첫 페이지 -->
    <c:if test="${currentPage > 1}">
        <a href="music.do?page=1&searchType=${searchType}&searchKeyword=${searchKeyword}" class="prev">◀◀</a>
    </c:if>

    <!-- 이전 그룹 -->
    <c:if test="${startPage > 1}">
        <a href="music.do?page=${startPage - 1}&searchType=${searchType}&searchKeyword=${searchKeyword}" class="prev">◀</a>
    </c:if>

    <!-- 페이지 번호 반복 -->
    <c:forEach begin="${startPage}" end="${endPage}" var="i">
        <c:choose>
            <c:when test="${currentPage == i}"> <!-- 현재 보고 있는 페이지의 번호를 표시하기 위해 하이라이트 표시 -->
                <a href="music.do?page=${i}&searchType=${searchType}&searchKeyword=${searchKeyword}" class="current">${i}</a>
            </c:when>
            <c:otherwise>
                <a href="music.do?page=${i}&searchType=${searchType}&searchKeyword=${searchKeyword}">${i}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>

    <!-- 다음 그룹 -->
    <c:if test="${endPage < totalPage}">
        <a href="music.do?page=${endPage + 1}&searchType=${searchType}&searchKeyword=${searchKeyword}" class="next">▶</a>
    </c:if>

    <!-- 마지막 페이지 -->
    <c:if test="${currentPage < totalPage}">
        <a href="music.do?page=${totalPage}&searchType=${searchType}&searchKeyword=${searchKeyword}" class="next">▶▶</a>
    </c:if>
	</div>
    

    <!-- Footer Include -->
    <jsp:include page="include/footer.jsp" />

</body>
</html>
