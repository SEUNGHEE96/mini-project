<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>๐ฆ๋ก๊ทธ์ธ๐ฆ</title>
    <style type="text/css">
      body {
        margin: 0;
        position: relative;
      }

      .main {
        position: relative;
        margin: 0 auto;
        background-color: rgb(240, 240, 240);
        height: 330px;
      }

      .main .lower {
        position: relative;
        display: grid;
        justify-content: center;
        width: 90%;
        top: 30px;
        bottom: 30px;
        padding: 20px 10px 20px 10px;
        margin: 0 auto;
        border: 2px solid #012A5E;
        background-color: white;
        text-align: center;
      }

      .main .lower input[type=submit] {
        height: 30px;
        border-radius: 5px;
        background: #012A5E;
        color: white;
        cursor: pointer;
      }

      .main .lower input[type=submit]:hover {
        border-color: lightslategray;
        background: lightslategray;
      }

    </style>
</head>
<body>
<!-- ์๋จ๋ฐ  -->
<jsp:include page="../header.jsp">
    <jsp:param value="false" name="login"/>
</jsp:include>

<main class="main">
    <div class="lower">
        <h1>๋ก๊ทธ์ธ๐ฆ</h1><br>
        <form action="<%=request.getContextPath() %>/login" method="post">
            ์์ด๋์๋ ฅ:<input type=text name="nickname"><br><br>
            ์ํธ์๋ ฅ:<input type=password name="password"><br><br>
            <input type=submit value="๋ก๊ทธ์ธ">
        </form>
    </div>
</main>

<jsp:include page="../footer.jsp"/>

</body>

</html>
