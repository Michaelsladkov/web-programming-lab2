<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/form.css">
    <script src="js/Injector.js"></script>
    <script src="js/CheckBoxSwitcher.js"></script>
    <script src="js/ErrorsDisplay.js"></script>
    <script src="js/Validator.js"></script>
    <script src="js/LineAppender.js"></script>
    <script src="js/RequestProcessor.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.js"></script>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<table>
    <tr>
        <th>Выберите точку</th>
    </tr>
    <tr id="content">
        <td class="image container">
            <img src="../images/areas.png" alt="sorry">
        </td>
        <td class="form container">
            <p>Параметры</p>
            <form method="post" action="../php/Shot.php" name="MainForm">
                <div id="x_value" class="field">
                    X:
                    <label>
                        <input type="text" name="X">
                    </label>
                </div>
                <div id="y_value" class="field">
                    Y:
                    <div class="checkbox_block">
                        -4 <br>
                        <label>
                            <input type="checkbox" name="Y" value="-4">
                        </label>
                    </div>
                    <div class="checkbox_block">
                        -3 <br>
                        <label>
                            <input type="checkbox" name="Y" value="-3">
                        </label>
                    </div>
                    <div class="checkbox_block">
                        -2 <br>
                        <label>
                            <input type="checkbox" name="Y" value="-2">
                        </label>
                    </div>
                    <div class="checkbox_block">
                        -1 <br>
                        <label>
                            <input type="checkbox" name="Y" value="-1">
                        </label>
                    </div>
                    <div class="checkbox_block">
                        0 <br>
                        <label>
                            <input type="checkbox" name="Y" value="0">
                        </label>
                    </div>
                    <div class="checkbox_block">
                        1 <br>
                        <label>
                            <input type="checkbox" name="Y" value="1">
                        </label>
                    </div>
                    <div class="checkbox_block">
                        2 <br>
                        <label>
                            <input type="checkbox" name="Y" value="2">
                        </label>
                    </div>
                    <div class="checkbox_block">
                        3 <br>
                        <label>
                            <input type="checkbox" name="Y" value="3">
                        </label>
                    </div>
                    <div class="checkbox_block">
                        4 <br>
                        <label>
                            <input type="checkbox" name="Y" value="4">
                        </label>
                    </div>
                </div>
                <div id="r_value" class="field">
                    R:
                    <div class="checkbox_block">
                        1 <br>
                        <label>
                            <input type="checkbox" name="R" value="1">
                        </label>
                    </div>
                    <div class="checkbox_block">
                        2 <br>
                        <label>
                            <input type="checkbox" name="R" value="2">
                        </label>
                    </div>
                    <div class="checkbox_block">
                        3 <br>
                        <label>
                            <input type="checkbox" name="R" value="3">
                        </label>
                    </div>
                    <div class="checkbox_block">
                        4 <br>
                        <label>
                            <input type="checkbox" name="R" value="4">
                        </label>
                    </div>
                    <div class="checkbox_block">
                        5 <br>
                        <label>
                            <input type="checkbox" name="R" value="5">
                        </label>
                    </div>
                </div>
                <input type="submit">
            </form>
        </td>
    </tr>
    <tr>
        <td>
            <p id="errorDisplay"></p>
        </td>
    </tr>
</table>
</body>
</html>