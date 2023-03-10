<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>π¦μ¬λ§μ¬μ°π¦</title>
    <script src="resources/js/jquery-3.6.1.min.js"></script>
    <link href="resources/css/header.css" rel="stylesheet">
    <script>
      $(document).ready(function () {
        $('#search').click(function (e) {
          if ($('#keyword').val() == "") {
            e.preventDefault()
            alert("κ²μμ΄λ₯Ό μλ ₯ν΄μ£ΌμΈμ!")
            return false;
          }
        })
      });
    </script>
</head>
<body>
<header class="header">
    <nav class="nav">
        <div class="menu">
            <%
                if (session.getAttribute("loginid") != null) {%>
            <a class="a" href="/"> ${nickname } λ νμν©λλ€!</a>
            <a class="a" href="/cart">μ₯λ°κ΅¬λ</a>
            <a class="a" href="/mypage">λ΄μμ¬</a>
            <a class="a" href="/logout">λ‘κ·Έμμ</a>
            <%} else {%>
            <a class="a" href="/join">νμκ°μ</a>
            <a class="a" href="/login">λ‘κ·ΈμΈ</a>
            <%} %>
        </div>
    </nav>
</header>
<header class="header2">
    <nav class="nav2">
        <a class="logo" href="/"><img src="resources/images/logo.jpg"></a>
        <div class="menu">
            <form action="search" method="get">
                <select id="search_select" name="search_select">
                    <option value="title">μ λͺ©</option>
                    <option value="author">μ μ</option>
                    <option value="genre">μ₯λ₯΄</option>
                </select>
                <input type="text" placeholder="κ²μμ΄ μλ ₯" name="keyword" id="keyword">
                <button type="submit" id="search">κ²μ</button>
            </form>
        </div>
    </nav>
</header>
<header class="header3">
    <nav class="nav3">
        <div class="menu3">
            <a class="a" href="/">μΈκΈ°μ</a>
            <a class="a" href="/">μ‘°νμ</a>
            <a class="a" href="/search?search_select=genre&keyword=λ‘λ§¨μ€">λ‘λ§¨μ€/λ‘ν</a>
            <a class="a" href="/search?search_select=genre&keyword=ννμ§">ννμ§/λ¬΄ν</a>
            <a class="a" href="/search?search_select=genre&keyword=BL">BL</a>
        </div>
    </nav>
</header>
<hr class="end">
</body>
</html>