<%--
  Created by IntelliJ IDEA.
  User: wuhufly
  Date: 2022-04-26
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%--
select.jsp
--%>
<%@ page import="java.sql.*" %>
<%@ page import="scoresys.dao.stuDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>select</title>
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
        font-size: 1.5em;
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
</style>
<body>
<form action="" method="post" name="form">
  <div class="form-group">
    <h1>班级查询</h1>
    <hr>
    <label class="content-title">输入班级 : </label>
    <input type="text" id="title" name="classInput">
    <br>
    <br>
    <input class="btn" type="submit" name="submit" value="查询" />
  </div>
</form>
<br>
<form action="" method="post" name="form">
  <div class="form-group">
    <h1>成绩分段查询</h1>
    <hr>
    <label class="content-title">输入最低分 : </label>
    <input type="text" id="scoreInput1" name="scoreInput1">
    <br>
    <br>
    <label class="content-title">输入最高分 : </label>
    <input type="text" id="scoreInput2" name="scoreInput2">
    <br>
    <br>
    <input class="btn" type="submit" name="submit" value="查询" />
  </div>
</form>
<%
  stuDao a = new stuDao();
%>
<br>
<h1>新增学生</h1>
<hr>
<input class="btn" type="button" name="submit" value="点击新增学生" onclick="window.location.href='add.jsp';"/>
</body>
</html>

