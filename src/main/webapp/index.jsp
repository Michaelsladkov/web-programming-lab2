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
<table>
    <tr>
        <th>Выберите точку</th>
    </tr>
    <tr id="content">
        <td class="image container">
            <svg id="graph" viewBox="0 0 250 250" width="250" height="250"
                 xmlns="http://www.w3.org/2000/svg"
                 >
                <marker id="arrow" viewBox="0 0 10 10" refX="5" refY="5"
                        markerWidth="6" markerHeight="6"
                        orient="auto-start-reverse">
                    <path d="M 0 0 L 10 5 L 0 10 z" />
                </marker>

                <line
                    x1="50%"
                    y1="2%"
                    x2="50%"
                    y2="98%"
                    stroke="black"
                    stroke-width="2"
                    marker-start="url(#arrow)"
                />
                <line
                        x1="2%"
                        y1="50%"
                        x2="98%"
                        y2="50%"
                        stroke="black"
                        stroke-width="2"
                        marker-end="url(#arrow)"
                />
                <line
                        x1="48%"
                        y1="70%"
                        x2="52%"
                        y2="70%"
                        stroke="black"
                        stroke-width="2"
                />
                <line
                        x1="48%"
                        y1="90%"
                        x2="52%"
                        y2="90%"
                        stroke="black"
                        stroke-width="2"
                />
                <line
                        x1="48%"
                        y1="30%"
                        x2="52%"
                        y2="30%"
                        stroke="black"
                        stroke-width="2"
                />
                <line
                        x1="48%"
                        y1="10%"
                        x2="52%"
                        y2="10%"
                        stroke="black"
                        stroke-width="2"
                />
                <line
                        x1="30%"
                        y1="48%"
                        x2="30%"
                        y2="52%"
                        stroke="black"
                        stroke-width="2"
                />
                <line
                        x1="10%"
                        y1="48%"
                        x2="10%"
                        y2="52%"
                        stroke="black"
                        stroke-width="2"
                />
                <line
                        x1="70%"
                        y1="48%"
                        x2="70%"
                        y2="52%"
                        stroke="black"
                        stroke-width="2"
                />
                <line
                        x1="90%"
                        y1="48%"
                        x2="90%"
                        y2="52%"
                        stroke="black"
                        stroke-width="2"
                />

                <rect x="30%" y="50%" height="40%" width="20%" stroke-width="2" stroke="black" fill="#5a75d8"/>
                <path d="M 10 50 M 50 10 V 50 50 Z" fill="b7f46e" stroke="black" stroke-width="2"/>

                <text x="52%" y="5%">Y</text>
                <text x="52%" y="11.5%">R</text>
                <text x="52%" y="31.5%">R/2</text>
                <text x="52%" y="71.5%">-R/2</text>
                <text x="52%" y="91.5%">-R</text>
                <text x="96%" y="58%">X</text>
                <text text-anchor="middle" x="90%" y="44%">R</text>
                <text text-anchor="middle" x="70%" y="44%">R/2</text>
                <text text-anchor="middle" x="30%" y="44%">-R/2</text>
                <text text-anchor="middle" x="10%" y="44%">-R</text>
            </svg>
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