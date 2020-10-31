<%@ page import="app.model.Row" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Triada
  Date: 28.10.2020
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%
    ArrayList<Row> rows = (ArrayList<Row>) session.getAttribute("table");
%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/pictures/favicon.ico" type="image/x-icon"> <!--favicon.ico or icon.png-->
    <title>Result</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/style.css">
</head>
<body>
    <div id = "labInfo" title = "Общая информация">
        <header id = "headline">Web Programming №2<br>
            Arsentii Antipin<br>
            P3212 Variant № 3144
        </header>
        <img src="${pageContext.request.contextPath}/pictures/Bessmertniy.jpg" class = "left" alt="Серёга Бессмертынй"/>
        <img src="${pageContext.request.contextPath}/pictures/Afanas.jpg" class="right" alt="Дмитрий Борисович"/>
    </div>

    <canvas width="400" height="400" id="image" style="cursor: wait"></canvas>

    <table id = "table" title = "Таблица значений">
        <tr>
            <td>X</td>
            <td>Y</td>
            <td>R</td>
            <td>entrance</td>
            <td>date</td>
        </tr>
        <% if (rows != null){
                for (Row row : rows)  out.println(row.toString());
            } %>
    </table>

    <button id = "return" value="Back to form" onclick="location.replace('./');" align = "center">Back to form</button>

    <script src="${pageContext.request.contextPath}/scripts/script2.js"></script>
    <script> draw();</script>
</body>
</html>
