<%@ page import="java.util.LinkedList" %>
<%@ page import="com.lab2.Data.ShotBean" %>
<%@ page import="java.util.Deque" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         isELIgnored="false"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% response.addHeader("Content-Type", "text/html;charset=UTF-8"); %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Lab 2</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/form.css">
    <link rel="stylesheet" href="css/graphics.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/results.css">
    <script src="js/Injector.js"></script>
    <script src="js/ClickProcessing.js"></script>
    <script src="js/ErrorsDisplay.js"></script>
    <script src="js/Validator.js"></script>
    <script src="js/LineAppender.js"></script>
    <script src="js/CheckBoxSwitcher.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.js"></script>
</head>
<body>
<div class="header">
    <p>Студент: Сладков Михаил Юрьевич</p>
    <p>Группа: P3231</p>
    <p>Вариант: 72101</p>
</div>
<table>

    <tr id="content">
        <td class="image container">
            <svg id="graph" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                 width="300px" height="300px" viewBox="-0.5 -0.5 420 440"
                 content="&lt;mxfile host=&quot;app.diagrams.net&quot; modified=&quot;2021-10-10T09:16:47.831Z&quot; agent=&quot;5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36&quot; etag=&quot;FdSTuAOISuC4RF2L5jOy&quot; version=&quot;14.9.8&quot; type=&quot;google&quot;&gt;&lt;diagram id=&quot;s14Ict8x1Yt2QIKXxBq_&quot; name=&quot;Page-1&quot;&gt;7Zpbc5s4FMc/jR+dAYGM/Zh4k3ZnNrNt05m2TzsyyKAJIFbIsbOffoUlbkKO4/iWxsz4AY7EkXR+f104ZuBMk9UnhrLongY4HgArWA2cPwYA2C4Ag+JnBc/S4llQGkJGAlWpNjyQ/7AyWsq6IAHOWxU5pTEnWdvo0zTFPm/ZEGN02a42p3G71QyFuGN48FHctf4gAY+kdQy82v4ZkzAqW7ZHE1mSoLKyGkkeoYAuGybnduBMGaVcXiWrKY6L4JVxkc/dbSitOsZwyl/zwC28+eon089Di/rw/h8wu2d/D92RdPOE4oUaseotfy5D8IQZJyIif6EZjr/QnHBCU1E0o5zTZODclBWuYxIWBZxmwhrxJBY3trgUQ88KZ8kqLFRyNUM58a8ygosyjhi/TsN1a9YVgDac2O5k5IyBC10biio4DeoK0LJHlgc927Ih9LzCPaOLNMDFMC3ZmIzz+uYRcz8qbzijjxVGAeBmTuJ4SmPK1iN1AojHgSvsKihiXHi1Mdx2BVGoH9MEc/YsqqgHwFhxV8IHrrpf1jISI5G2qCmh0oiUdMPKd01XXCjAO8B2rO2w27FcRoTjhwz5RelSsGtz1cI3n8+B7xsDfYSAOqAb0PFJ4wkm2+NZSR+lCxT/mWYLvj2uuVwGi553NYrweO7rOtemQFP1M8oCzIbLBg1l8pXXWYz8R2HOMCMiMpgVPSNpqGofh6bVpllROt/0sLfTLFaiYlMRd36McrGKaeA2hAoHnV1ma6AagYCGOJQ2hmPEyVPbvSk2qoUvlIiGKw5VOPVZVbrI6YL5WD3V3F40R3CbI7HOh5h3HK1RVcPeYzJeIj1HCzp8Kz3dkX1ies5O9FKa4pfQub8DOrhhAdwZnbfF0ZHRuRePrjra7Yuu4+jI6ODFo3OtA6HrODoyule8t310dONDodMdHRmdd3HoXLcdccd5I7qOI/u06MYXh646Ue6LruPoxOhe8a7+wdB1EiZvRddxdGJ0ZXOXxM46FDvd0anZmd7sRnGRBJuJi5CvYUjDnK57XlMd/bugZcFQJsWuRQV7lK3qQmGYy0RabfuOIpqgZh3Z0q+yKTEW2Vq7B8Lc6JUmMY5X3KSrMjmndNfM1ykTUolxX4gLM0PGPCFBUDRjTAy2c3sqnPvk3jqvnqUmGtp2DdrWcwKHy7yZ3iFfFskrkO8uJNnSz14kxUKmicSUbj+tSEzn5r1FIp/71iNf711aOmJyZuTAtPH3yA+5Feh5X3hu5KZ/YQ6H/A702AeGxKNzbuy7HxN77Dtjd8F7W+A3H/wOes4DpnPezq8dJ/BSiXBoVuaLIs4zlDZsKClElM7yrP2oVu0lj1XL+hza3qWPOof0pdM5+xwy/YtzoKVTqNDqD0om7K53buymf4D6pbNfOt/vHAKj93b8OGJKoV86q0/M9C9hj4dd3NYfVMsUdv1ZunP7Pw==&lt;/diagram&gt;&lt;/mxfile&gt;" resource="https://app.diagrams.net/#G1u7QYMmEhk0MXVOVYMIYNw3TFztR23F5q"><defs/><g><path d="M 208 210 L 288 210.8 C 287.78 232.02 279.15 252.28 264 267.13 C 248.84 281.99 228.41 290.21 207.19 290 Z" fill="#d5e8d4" stroke="#000000" stroke-width="2" stroke-miterlimit="10" pointer-events="all"/><rect x="128" y="210" width="80" height="160" fill="#fff2cc" stroke="#000000" stroke-width="2" pointer-events="all"/><path d="M 48 210 L 48 210 L 208 50 L 208 210 Z" fill="#dae8fc" stroke="#000000" stroke-width="2" stroke-miterlimit="10" pointer-events="all"/><path d="M 8 210 L 399.76 210" fill="none" stroke="#000000" stroke-width="2" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 405.76 210 L 397.76 214 L 399.76 210 L 397.76 206 Z" fill="#000000" stroke="#000000" stroke-width="2" stroke-miterlimit="10" pointer-events="all"/><path d="M 208 410 L 208 18.24" fill="none" stroke="#000000" stroke-width="2" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 208 12.24 L 212 20.24 L 208 18.24 L 204 20.24 Z" fill="#000000" stroke="#000000" stroke-width="2" stroke-miterlimit="10" pointer-events="all"/><path d="M 198 50 L 218 50" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 198 130 L 218 130" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 198 290 L 218 290" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 198 370 L 218 370" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 288 220 L 288 200" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 368 220 L 368 200" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 128 220 L 128 200" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><path d="M 48 220 L 48 200" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="10" pointer-events="stroke"/><rect x="198" y="0" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 10px; margin-left: 199px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font style="font-size: 16px" face="Tahoma">Y</font></b></div></div></div></foreignObject><text x="218" y="14" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">Y</text></switch></g><rect x="398" y="210" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 220px; margin-left: 399px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma" style="font-size: 16px">X</font></b></div></div></div></foreignObject><text x="418" y="224" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">X</text></switch></g><rect x="348" y="180" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 190px; margin-left: 349px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma">R</font></b></div></div></div></foreignObject><text x="368" y="194" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">R</text></switch></g><rect x="208" y="40" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 50px; margin-left: 209px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma">R</font></b></div></div></div></foreignObject><text x="228" y="54" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">R</text></switch></g><rect x="218" y="120" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 130px; margin-left: 219px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma">R/2</font></b></div></div></div></foreignObject><text x="238" y="134" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">R/2</text></switch></g><rect x="268" y="180" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 190px; margin-left: 269px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma">R/2</font></b></div></div></div></foreignObject><text x="288" y="194" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">R/2</text></switch></g><rect x="218" y="280" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 290px; margin-left: 219px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><font face="Tahoma" style="font-size: 12px"><font style="font-size: 12px"><font style="font-size: 12px"><b>-</b></font><span> </span></font><b>R/2</b></font></div></div></div></foreignObject><text x="238" y="294" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">- R/2</text></switch></g><rect x="218" y="360" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 370px; margin-left: 219px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma">- R</font></b></div></div></div></foreignObject><text x="238" y="374" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">- R</text></switch></g><rect x="108" y="180" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 190px; margin-left: 109px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><font face="Tahoma" style="font-size: 12px"><font style="font-size: 12px"><font style="font-size: 12px"><b>-</b></font><span> </span></font><b>R/2</b></font></div></div></div></foreignObject><text x="128" y="194" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">- R/2</text></switch></g><rect x="28" y="180" width="40" height="20" fill="none" stroke="none" pointer-events="all"/><g transform="translate(-0.5 -0.5)"><switch><foreignObject style="overflow: visible; text-align: left;" pointer-events="none" width="100%" height="100%" requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"><div xmlns="http://www.w3.org/1999/xhtml" style="display: flex; align-items: unsafe center; justify-content: unsafe center; width: 38px; height: 1px; padding-top: 190px; margin-left: 29px;"><div style="box-sizing: border-box; font-size: 0; text-align: center; "><div style="display: inline-block; font-size: 12px; font-family: Helvetica; color: #000000; line-height: 1.2; pointer-events: all; white-space: normal; word-wrap: normal; "><b><font face="Tahoma">- R</font></b></div></div></div></foreignObject><text x="48" y="194" fill="#000000" font-family="Helvetica" font-size="12px" text-anchor="middle">- R</text></switch></g></g><switch><g requiredFeatures="http://www.w3.org/TR/SVG11/feature#Extensibility"/><a transform="translate(0,-5)" xlink:href="https://www.diagrams.net/doc/faq/svg-export-text-problems" target="_blank"><text text-anchor="middle" font-size="10px" x="50%" y="100%">Viewer does not support full SVG 1.1</text></a></switch>
                 <%
                     Object maybeList= session.getAttribute("shots");
                     String circleFormat = "<circle cx=\"%s\" cy=\"%s\" r=\"4\" fill=\"%s\" stroke=\"black\" stroke-width=\"2\"/>";
                     if (maybeList instanceof List && ((List) maybeList).size() > 0
                             && ((List) maybeList).get(0) instanceof ShotBean) {
                         List<ShotBean> list = (List<ShotBean>) maybeList;
                         for (int i = list.size() - 1; i >= 0; i--) {
                             ShotBean bean = list.get(i);
                             int x = 208 + (int)((bean.getX() / bean.getR()) * 160);
                             int y = 210 + (int)((-bean.getY() / bean.getR()) * 160);
                             out.println(String.format(circleFormat, x, y, (bean.isSuccess() ? "red" : "gray")));
                         }
                     }
                 %>
            </svg>
        </td>
        <td class="form container">
            <p>Параметры</p>
            <form method="post" action="./controller" name="MainForm">
                <div id="x_value" class="field">
                    X:
                    <input type="hidden" name="X" id="hidden-x">
                    <div class="radio_block">
                        -2 <br>
                        <label>
                            <input id="-2.0X" class="radio" type="radio" name="X" value="-2">
                        </label>
                    </div>
                    <div class="radio_block">
                        -1.5 <br>
                        <label>
                            <input id="-1.5X" class="radio" type="radio" name="X" value="-1.5">
                        </label>
                    </div>
                    <div class="radio_block">
                        -1 <br>
                        <label>
                            <input id="-1.0X" class="radio" type="radio" name="X" value="-1">
                        </label>
                    </div>
                    <div class="radio_block">
                        -0.5 <br>
                        <label>
                            <input id="-0.5X" class="radio" type="radio" name="X" value="-0.5">
                        </label>
                    </div>
                    <div class="radio_block">
                        0 <br>
                        <label>
                            <input id="0.0X" class="radio" type="radio" name="X" value="0">
                        </label>
                    </div>
                    <div class="radio_block">
                        0.5 <br>
                        <label>
                            <input id="0.5X" class="radio" type="radio" name="X" value="0.5">
                        </label>
                    </div>
                    <div class="radio_block">
                        1 <br>
                        <label>
                            <input id="1.0X" class="radio" type="radio" name="X" value="1">
                        </label>
                    </div>
                    <div class="radio_block">
                        1.5 <br>
                        <label>
                            <input id="1.5X" class="radio" type="radio" name="X" value="1.5">
                        </label>
                    </div>
                    <div class="radio_block">
                        2 <br>
                        <label>
                            <input id="2.0X" class="radio" type="radio" name="X" value="2">
                        </label>
                    </div>
                </div>
                <div id="y_value" class="field">
                    Y:
                    <label>
                        <input id="y-field" class="text-field" type="text" name="Y" autocomplete="off" maxlength="17">
                    </label>
                </div>
                <div id="r_value" class="field">
                    R:
                    <div class="radio_block">
                        1 <br>
                        <label>
                            <input id="r1" class="radio" type="radio" name="R" value="1">
                        </label>
                    </div>
                    <div class="radio_block">
                        2 <br>
                        <label>
                            <input id="r2" class="radio" type="radio" name="R" value="2">
                        </label>
                    </div>
                    <div class="radio_block">
                        3 <br>
                        <label>
                            <input id="r3" class="radio" type="radio" name="R" value="3">
                        </label>
                    </div>
                    <div class="radio_block">
                        4 <br>
                        <label>
                            <input id="r4" class="radio" type="radio" name="R" value="4">
                        </label>
                    </div>
                    <div class="radio_block">
                        5 <br>
                        <label>
                            <input id="r5" class="radio" type="radio" name="R" value="5">
                        </label>
                    </div>
                </div>
                <input id="time-offset" name="time-offset" type="hidden">
                <input id="submit-button" type="submit">
            </form>
        </td>
    </tr>
    <tr class="errors">
        <td class="errors" colspan="2">
            <p id="errorDisplay"></p>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <table id="results">
                <tr>
                    <th>X</th>
                    <th>Y</th>
                    <th>R</th>
                    <th>Время обращения</th>
                    <th>Время исполнения, мс</th>
                    <th>Результат</th>
                </tr>
                <%
                    if (maybeList instanceof List && ((List) maybeList).size() > 0
                            && ((List) maybeList).get(0) instanceof ShotBean) {
                        List<ShotBean> list = (List<ShotBean>) maybeList;
                        for (int i = list.size() - 1; i >= 0; i--) {
                            ShotBean bean = list.get(i);
                            out.println("<tr>");
                            out.println("<td id=\"" + (list.size() - 1 - i) + "x\">" + bean.getX() + "</td>");
                            out.println("<td id=\"" + (list.size() - 1 - i) + "y\">" + bean.getY() + "</td>");
                            out.println("<td id=\"" + (list.size() - 1 - i) + "r\">" + bean.getR() + "</td>");
                            out.println("<td>" + bean.getTime() + "</td>");
                            out.println("<td>" + bean.getExecutionTime() + "</td>");
                            out.println("<td>" + bean.getSuccess() + "</td>");
                            out.println("</tr>");
                        }

                    }
                %>
            </table>
        </td>
    </tr>
</table>
</body>
</html>