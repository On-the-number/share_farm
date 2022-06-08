<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>codefun</title>
    <link rel="stylesheet" href="../../index.css" />
    <link rel="stylesheet" href="./LogIn.css" />
  </head>

  <body>
    <div style="
  display: flex;
  flex-direction: row;
  align-items: center;
  padding: 10px;
  
  position: absolute;
  width: 553px;
  height: 52px;
  left: 460px;
  top: 119px;
  
  background: linear-gradient(180deg, rgba(24, 32, 79, 0.4) 0%, rgba(24, 32, 79, 0.25) 100%);
  border: 0.5px solid rgba(0, 0, 0, 0.3);
  box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(40px);
  
  border-radius: 30px;
  display:none;" id="showError">
      <div class="CountentWrapper"
        style="display:grid;grid-template-columns: auto auto;gap:10px;align-items: center;justify-items: center;">
        <img src="./Icon.svg" alt="">
        <div id="textError" style="color:red;font-family: 'SF Pro Text';
        font-style: normal;
        font-weight: 400;
        font-size: 15px;
        line-height: 130%;
        text-align: center;">账号/密码错误</div>
      </div>
    </div>
    <div class="justify-between page">
      <div class="flex-col group">
        <div class="flex-col items-start group_15 view-dL5R0iFd">
          <span class="text_1 Text">Log In...</span><br />
          <span class="text_1 Text">全国范围的共享农庄</span>
          <span class="text_2 Text">全产业链运营服务平台</span>
        </div>
        <div class="flex-col items-start group_2">
          <div class="flex-row group_17">
            <span class="text_3">Welcome</span>
            <span class="text_4">back! Please login to your account.</span>
          </div>
        </div>
        <div class="flex-col items-start group_16">
          <div class="flex-row section_1">
            <img
              src="https://project-user-resource-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16529306943396518005.png"
              class="image_1" />
            <input type="text" class="text_5 text_6" placeholder="请输入账号" id="account"></input>
          </div>
          <div class="flex-row section_1 view_1">
            <img
              src="https://project-user-resource-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16529306943399257711.png"
              class="image_1" />
            <input class="text_5 text_6" type="password" placeholder="请输入密码" id="pwd"></input>
          </div>
        </div>
        <div class="flex-row group_4">
          <!-- href -->
          <a href="" class="flex-col group_5">
            <div class="flex-row view-315XDzH1">
              <span class="text_9 forget">忘掉密码?</span>
            </div>
          </a>
          <div>
            <select class="flex-row section_2 view-POKTESgX" id="judge">
              <option>管理员登陆</option>
              <option>消费者登录</option>
            </select>
          </div>
        </div>
        <div class="flex-row group_7">
          <button class="flex-col items-center text-wrapper view-PpVUiiue" onclick="onsubmit_login()">
            <span class="text_11" name="test">登录</span>
          </button>
          <!-- button -->
          <a href="/Registration/pages/Modal_as_Page/Modal_as_Page.jsp">
            <button class="flex-col items-center text-wrapper_1 view-mhXv1fEN">
              <span class="text_12">注册</span>
            </button>
          </a>
        </div>
      </div>
      <div class="flex-col section_3">
        <div class="flex-col items-center group_8">
          <div class="flex-row group_9">
            <!-- href -->
            <a href="/Home/pages/shouye/shouye.jsp" class="text_13 ButtonHover">主页</a>
            <div class="flex-row group_10">
              <a href="/About_Us/pages/MacBook_Pro_14_1/AboutUs.jsp" class="text_14 ButtonHover">关于我们</a>
              <div class="flex-row group_11">
                <!-- href -->
                <a href="" class="text_15 ButtonHover">新闻消息</a>
                <a href="" class="text_16 ButtonHover">价格</a>
              </div>
            </div>
          </div>
        </div>
        <img
          src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266504e5a7e3f03106ffb8e/6274b8cb3051170011fb085d/16527963987939193108.png"
          class="image_7 picture image-jjq67nzE" />
      </div>
    </div>
    <script>
      function onsubmit_login() {
        var input_account = document.getElementById("account");
        var input_pwd = document.getElementById("pwd");
        var Error = document.getElementById("showError");
        var textError = document.getElementById("textError");
        // 正则表达式//  [1-9]\d{3,8}

        if (/[1-9]\d{4,10}/.test(input_account.value)) {
          var judge = document.getElementById("judge");
          console.log(judge.value);
          if (/[a-z0-9A-Z]{6,14}/.test(input_pwd.value)) {
            if (input_pwd.value != "12345678") {
              Error.style.display = "flex";
              textError.innerHTML = "账号/密码错误";
              setTimeout(() => {
                Error.style.display = "none";
              }, 2000);
              return false;
            }
            if (judge.value == "管理员登陆") {
              window.location.href = "/Administrator_interface/pages/guanliyuanjiemian/guanliyuanjiemian.jsp"
            } else {
              window.location.href = "/User_Home_Page/pages/user.jsp";
            }
            return true;
          } else {
            Error.style.display = "flex";
            textError.innerHTML = "密码格式错误,格式必须为长度为6到14的字母与数字";
            setTimeout(() => {
              Error.style.display = "none";
            }, 2000);
            return false;
          }
          return true;
        } else {
          Error.style.display = "flex";
          textError.innerHTML = "账号格式错误, 格式必须为4到10的数字";
          setTimeout(() => {
            Error.style.display = "none";
          }, 2000);
          return false;
        }
      }
    </script>
  </body>

  </html>