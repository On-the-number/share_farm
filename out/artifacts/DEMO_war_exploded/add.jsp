<%--
  Created by IntelliJ IDEA.
  User: wuhufly
  Date: 2022-04-26
  Time: 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>add</title>
</head>
<style>

    .form-group { padding: 1.25em; }
    .form-group label { vertical-align: top; }
    .mes-send input[type="text"],
    .mes-send textarea {
        padding: 1px;
        width: 90%;
        border: 1px solid #b7b7b7;
        -webkit-border-radius: 4px;
        -moz-border-radius: 4px;
        border-radius: 4px;
    }
    .content-title {
        text-align:center;
        margin-left:auto;
        margin-right:auto;
        font-size: 0.5em;
        color: blue;
        font-weight: normal;
    }
    .mes-send input { height: 2em; }
    .btn{
        margin-left: 0.50em;
        padding: 5px;
        border: none;
        -webkit-border-radius: 0.5em;
        -moz-border-radius: 0.5em;
        border-radius: 0.5em;
        width: 20%;
        font-size: 12pt;
        color: #fff;
        background-color: #66f;
        cursor: pointer;
    }

    table {
        border-collapse: collapse;
        margin: 0 auto;
        text-align: center;
    }
    table td, table th {
        border: 1px solid #cad9ea;
        color: #666;
        height: 30px;
        width: 2000px;
    }
    table thead th  {
        border: 1px solid green;margin-top:10px;
        margin-left:10px;
        background-color: #CCE8EB;
        width: 1000px;
    }
    table tr:nth-child(odd) {
        background: #fff;
    }
    table tr:nth-child(even)
    {
        background: #F5FAFA;
    }
    .keleyitable{
        text-align:center;
        margin-left:auto;
        margin-right:auto;
    }
</style>
<body>
<%
  request.setCharacterEncoding("utf-8");
%>
<form action="" method="post" name="form">
  <div class="form-group">
    <h2>新增学生信息</h2>
    <hr>
    <label class="content-title">学号 : </label>
    <input type="text" name="NO"><br>
    <br>
    <label class="content-title">姓名 : </label>
    <input type="text" name="NAME"><br>
    <br>
    <label class="content-title">成绩 : </label>
    <input type="text" name="SCORE"><br>
    <br>
    <label class="content-title">班级 : </label>
    <input type="text" name="CLASS"><br>
    <br>
    <input class="btn" type="submit" name="submit" value="进行新建" />
    <input class="btn" type="button" name="submit" value="点击返回主菜单" onclick="window.location.href='select.jsp';"/>
  </div>
</form>
</body>
</html>

