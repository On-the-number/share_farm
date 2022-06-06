<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Insert title here</title>
  <style>
      /*mes-send*/
      .mes-send {
          padding: .65em;
          border: 1px solid #ccc;
          -webkit-border-radius: 5px;
          -moz-border-radius: 5px;
          border-radius: 5px;
          width: 520px;
      }
      .form-group { padding: 1.25em; }
      .form-group label { vertical-align: top; }
      .mes-send input[type="text"],
      .content-title {
          text-align:center;
          margin-left:auto;
          margin-right:auto;

          font-size: 2em;
          color: blue;
          font-weight: normal;
      }
      .mes-send input { height: 2em; }
      .btn{
          margin-left: 2.50em;
          padding: 2px;
          border: none;
          -webkit-border-radius: 0.5em;
          -moz-border-radius: 0.5em;
          border-radius: 0.5em;
          width: 38%;
          font-size: 12pt;
          color: #fff;
          background-color: #66f;
          cursor: pointer;
      }
  </style>
</head>
<script>
  function judge() {
    var a = document.getElementById("q1");
    var b =  document.getElementById("a1");
    var res = eval(a.value);
    if(res == b.value){
      alert("correct");
      document.getElementById("ans_a4").value = "AC";
    }
    else {
      alert("wrong!!!");
      document.getElementById("ans_a4").value = "WA";
    }
    var frm = document.getElementById("frm1");
    frm.submit();
  }
  function find() {
    var a2 = document.getElementById("q2");
    var b2 = document.getElementById("a2");
    var c2 = document.getElementById("a3");
    if(a2.value == null || b2.value == null || c2.value == null || a2.value == "" || b2.value == "" || c2.value == "") {
      alert("这是第一个题啦，没有上一题了");
    } else{
      alert("上一个题目为 ： " + a2.value + "\n正确答案为：" + b2.value + "\n你的状态为 :" + c2.value);
    }
    var frm = document.getElementById("frm1");
    frm.submit();
  }
</script>
<body>
<%
  String question = request.getParameter("question");
  String answer = request.getParameter("answer");
  session.setAttribute("question", question);
  session.setAttribute("answer", answer);
  String ans = request.getParameter("ans");
  session.setAttribute("ans", ans);
  String status = request.getParameter("status");
  session.setAttribute("status", status);
  String[] questions={"1-2","3-5","6*7","8*9","3*12","5*20", "5*20", "1+2", "3+4", "6+7"};
  int n=(int)(10*Math.random());//生成0-5的数
  String s = questions[n];
%>
<section class="mes-send">
  <h1 class="content-title">欢迎进入小学数学题测验系统</h1>
  <form action="" method="post" name="form" id = "frm1">
    <div class="form-group">
      <label for="q1">题目：</label>
      <input type="text" id="q1" name="question" readonly="readonly" value=<%=s %> >
    </div>
    <div class="form-group">
      <label for="a1">答案：</label>
      <input type="text" name="answer" id="a1" value="">
    </div>
    <input type="hidden" name="ans" id="ans_a3" value="">
    <input type="hidden" name="status" id="ans_a4" value="">
    <input type = "button" onclick = " judge()" value = "提交答案" class = "btn"/>
    <input type = "button" onclick = "find()" value = "查看上一题" class = "btn"/>
    <input type="hidden" id="q2" value = <%=session.getAttribute("question") %> />
    <input type="hidden" id="a2" value = <%=session.getAttribute("ans") %> />
    <input type="hidden" id="a3" value = <%=session.getAttribute("status") %>  />
  </form>
</section>
<script>
  document.getElementById("ans_a3").value = eval(<%=s%>);
</script>
</body>
</html>