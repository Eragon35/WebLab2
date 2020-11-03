<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en" style="cursor: grabbing;">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/pictures/favicon.ico" type="image/x-icon"> <!--favicon.ico or icon.png-->
    <title>Input</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/style.css">
</head>

<body>
<div id = "labInfo" title = "Общая информация">
    <header id = "headline">Web Programming Lab №2<br>
        Arsentii Antipin<br>
        P3212 Variant № 3144
    </header>
    <img src="${pageContext.request.contextPath}/pictures/Bessmertniy.jpg" class = "left" alt="Серёга Бессмертынй"/>
    <img src="${pageContext.request.contextPath}/pictures/Afanas.jpg" class="right" alt="Дмитрий Борисович"/>
</div>

<div id = "description" title = "Задание">
<canvas width="400" height="400" id="image"></canvas>
</div>

<div>
    <form name = "myform" method="POST" title = "Таблица ввода значений" action="${pageContext.request.contextPath}/control">
        <p>Выберите X</p>
        <select name = "X">
            <option value="-5"> -5 </option>
            <option value="-4"> -4 </option>
            <option value="-3"> -3 </option>
            <option value="-2"> -2 </option>
            <option value="-1"> -1 </option>
            <option selected value="0"> 0 </option>
            <option value="1"> 1 </option>
            <option value="2"> 2 </option>
            <option value="3"> 3 </option>
        </select>
        <p>Введите Y</p>
        <input type = "text" id = "inputY" name = "Y" maxlength="6">
        <p>Выберите R</p>
        <input type = "text" id = "inputR" name = "R" maxlength="6" oninput="draw()">
        <br>
        <input type = "submit"  id = "Button" value = "Поднять сервер и проверить точку"> <!-- Скрытое поля для хранения R-->
        <p id = "answer" name = "notification" align = "center"></p> <!-- output error-->
    </form>
</div>

<script src="${pageContext.request.contextPath}/scripts/script.js"></script>
<script> draw();</script>
</body>
</html>
