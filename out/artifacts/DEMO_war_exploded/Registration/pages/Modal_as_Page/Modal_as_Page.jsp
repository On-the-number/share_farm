<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>codefun</title>
    <link rel="stylesheet" href="../../index.css" />
    <link rel="stylesheet" href="./Modal_as_Page.css" />
    <script type="text/javascript" src="./Modal_as_Page.js"></script>
  </head>

  <body>
    <div style="display: flex;
    flex-direction: row;
    align-items: center;
    padding: 10px;
    z-index: 100000;
    position: absolute;
    width: 353px;
    height: 52px;
    left: 560px;
    top: 150px;
    
    background: linear-gradient(180deg, rgba(24, 32, 79, 0.4) 0%, rgba(24, 32, 79, 0.25) 100%);
    border: 0.5px solid rgba(0, 0, 0, 0.3);
    box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.25);
    backdrop-filter: blur(40px);
    border-radius: 30px;
    display:none;
    transition: 10s cubic-bezier(0.075, 0.82, 0.165, 1);" id="showError">
      <div class="CountentWrapper"
        style="display:grid;grid-template-columns: auto auto;gap:10px;align-items: center;justify-items: center;">
        <img src="./Circle Icon Heart.svg" alt="">
        <div id="textError" style="color:lightblue;font-family: 'SF Pro Text';
        font-style: normal;
        font-weight: 400;
        font-size: 15px;
        line-height: 130%;
        text-align: center;">注册成功</div>
      </div>
    </div>
    <script>
      function showSignIn() {
        var Error = document.getElementById("showError");
        var textError = document.getElementById("textError");
        Error.style.display = "flex";
        setTimeout(() => {
          Error.style.display = "none";
          window.location.href="/Login/pages/LogIn/LogIn.jsp";
        }, 2000);
      }
    </script>
    <div class="flex-col page">
      <div class="flex-col items-center section_1">
        <img
          src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16529638214180901831.png"
          class="image" />
        <div class="flex-row section_2">
          <a href="/Home/pages/shouye/shouye.jsp" class="flex-col items-center section_3 bottom">
            <div class="flex-row group">
              <img
                src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266504e5a7e3f03106ffb8e/6274b8cb3051170011fb085d/16525173532537933514.png"
                class="image_1" />
              <span class="text text_1">首页</span>
            </div>
          </a>
          <a href="" class="flex-row group_1 bottom">
            <img
              src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266504e5a7e3f03106ffb8e/6274b8cb3051170011fb085d/16525173519589616246.png"
              class="image_1" />
            <span class="text text_2">农庄交易</span>
          </a>
          <a href="" class="flex-row group_2 bottom">
            <img
              src="https://project-user-resource-1256085488.cos.ap-guangzhou.myqcloud.com/6266504e5a7e3f03106ffb8e/6274b8cb3051170011fb085d/16527133342684748614.png"
              class="image_4" />
            <span class="text text_4">新闻公告</span>
          </a>
          <a href="" class="flex-row group_11 bottom">
            <img
              src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266504e5a7e3f03106ffb8e/6274b8cb3051170011fb085d/16525173524698910076.png"
              class="image_1" />
            <span class="text text_15">个人信息</span>
          </a>
        </div>
      </div>
      <img
        src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16529638214187371209.png"
        class="image_6" />
      <img
        src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16529638214187277200.png"
        class="image_7" />
      <div class="section_4">
        <!--*-->
      </div>
      <img
        src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16529638214189469699.png"
        class="image_8" />
      <div class="justify-between section_5">
        <img src="../../Cover.svg" class="flex-col group_3 view-gokJcyw9" />
        <div class="flex-col group_4">
          <span class="text_6">注册用户</span>
          <div class="flex-col items-start group_5">
            <span class="text_7">让所有热爱生活的人</span>
            <span class="text_8">安享“回归淳朴”的美好共享农庄生活。</span>
          </div>
          <div class="flex-col group_6">
            <div class="flex-row items-center section_8">
              <img
                src="https://project-user-resource-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16529306943396518005.png"
                class="image_11" />
              <input class="flex-row group_7 view_3" id="userName" placeholder="请输入邮箱" />
            </div>
            <div class="flex-col group_6">
              <div class="flex-row items-center section_8">
                <img
                  src="https://project-user-resource-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16529306943399257711.png"
                  class="image_11" />
                <input class="flex-row group_7 view_3" type="password" id="passWord" placeholder="请输密码" />
              </div>
            </div>
          </div>
          <button onclick="showSignIn()" id="SignIn" class="flex-col items-center text-wrapper view-lpqp2X1q">
            <span class="text_11">注册</span>
          </button>
          <span class="text_12" style="cursor: default">注册用户即代表您同意
            <a href="/Privacy_Policy/pages/PrivacyPolicy/PrivacyPolicy.jsp" class="inlineText">隐私政策</a>
            和
            <a href="/Privacy_Policy/pages/PrivacyPolicy/PrivacyPolicy.jsp" class="inlineText">安全协议
            </a>
          </span>
          <div class="flex-col group_8">
            <div class="divider">
              <!--*-->
            </div>
            <div class="group_9">
              <span class="text_13">已经有一个账户?</span>
              <a href="/Login/pages/LogIn/LogIn.jsp">
                <span class="text_14 text-BG2F1jhg">点击登录</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>

  </html>