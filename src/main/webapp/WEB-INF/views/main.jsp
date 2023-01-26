<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>🦊사막여우🦊</title>
    <script src="resources/js/jquery-3.6.1.min.js"></script>
    <link href="resources/css/main.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
    <script src="resources/js/main.js"></script>
</head>
<body>
<!-- 상단바  -->
<jsp:include page="header.jsp">
    <jsp:param value="false" name="login"/>
</jsp:include>
<main class="main">
    <section class="upper">
        <div class="advertisement">
            <!-- 이미지 슬라이드 부분 -->
            <div id="slideShow">
                <ul class="slides">
                    <li><img src="resources/images/novel/a1.jpg" alt="" width="900px"></li>
                    <li><img src="resources/images/novel/a2.jpg" alt="" width="900px"></li>
                    <li><img src="resources/images/novel/a3.jpg" alt="" width="900px"></li>
                    <li><img src="resources/images/novel/a4.jpg" alt="" width="900px"></li>
                    <li><img src="resources/images/novel/a5.jpg" alt="" width="900px"></li>
                    <li><img src="resources/images/novel/a6.jpg" alt="" width="900px"></li>
                </ul>
                <p class="controller">
                    <!-- &lang: 왼쪽 방향 화살표
                    &rang: 오른쪽 방향 화살표 -->
                    <span class="prev">&lang;</span>
                    <span class="next">&rang;</span>
                </p>
            </div>
            <script src="resources/js/slideShow.js"></script>
        </div>
    </section>
    <section class="lower">
        <div class="categoryList">
            <div class="category">
                <div class="top">
                    <div class="title">NEW! 신작</div>
                    <div id="new_page">1페이지</div>
                    <div class="btn">
                        <input type="button" id="newNovelL" value='<'>&nbsp;
                        <input type="button" id="newNovelR" value='>'>
                    </div>
                </div>
                <div class="bottom" id="newNovel">
                    <c:forEach items="${list }" var="novel">
                        <c:set var="img_path" value="resources/images/novel/"/>
                        <c:set var="img_src" value="${img_path }${novel.id }.jpg"/>
                        <div class="item">
                            <img src="${img_src }" alt="X">
                            <div class="description">
                                <div class="novel_name">
                                    <a href="oneNovelPage?id=${novel.id}&page=1">${novel.id }</a>
                                </div>
                                <div class="title">
                                        ${novel.title }
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="category">
                <div class="top">
                    <div class="title">로맨스/로판 BEST</div>
                    <div id="romance_page">1페이지</div>
                    <div class="btn">
                        <input type="button" id="romanceNovelL" value='<'>&nbsp;
                        <input type="button" id="romanceNovelR" value='>'>
                    </div>
                </div>
                <div class="bottom" id="romanceNovel">
                    <c:forEach items="${romanceList }" var="novel">
                        <c:set var="img_path" value="resources/images/novel/"/>
                        <c:set var="img_src" value="${img_path }${novel.id }.jpg"/>
                        <div class="item">
                            <img src="${img_src }" alt="X">
                            <div class="description">
                                <div class="novel_name">
                                    <a href="oneNovelPage?id=${novel.id}&page=1">${novel.id }</a>
                                </div>
                                <div class="title">
                                        ${novel.title }
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="category">
                <div class="top">
                    <div class="title">판타지/무협 BEST</div>
                    <div id="fantasy_page">1페이지</div>
                    <div class="btn">
                        <input type="button" id="fantasyNovelL" value='<'>&nbsp;
                        <input type="button" id="fantasyNovelR" value='>'>
                    </div>
                </div>
                <div class="bottom" id="fantasyNovel">
                    <c:forEach items="${fantasyList }" var="novel">
                        <c:set var="img_path" value="resources/images/novel/"/>
                        <c:set var="img_src" value="${img_path }${novel.id }.jpg"/>
                        <div class="item">
                            <img src="${img_src }" alt="X">
                            <div class="description">
                                <div class="novel_name">
                                    <a href="oneNovelPage?id=${novel.id}&page=1">${novel.id }</a>
                                </div>
                                <div class="title">
                                        ${novel.title }
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="category">
                <div class="top">
                    <div class="title">BL BEST</div>
                    <div id="BL_page">1페이지</div>
                    <div class="btn">
                        <input type="button" id="BLNovelL" value='<'>&nbsp;
                        <input type="button" id="BLNovelR" value='>'>
                    </div>
                </div>
                <div class="bottom" id="BLNovel">
                    <c:forEach items="${BLList }" var="novel">
                        <c:set var="img_path" value="resources/images/novel/"/>
                        <c:set var="img_src" value="${img_path }${novel.id }.jpg"/>
                        <div class="item">
                            <img src="${img_src }" alt="X">
                            <div class="description">
                                <div class="novel_name">
                                    <a href="oneNovelPage?id=${novel.id}&page=1">${novel.id }</a>
                                </div>
                                <div class="title">
                                        ${novel.title }
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </section>
</main>

<jsp:include page="footer.jsp"/>

</body>

</html>
