<%--<%@ page import="scoresys.dao.Land_Dao" %>--%>
<%--<%@ page import="scoresys.javabean.Land" %>--%>
<%--<%@ page import="java.util.List" %>--%>
<%--<%@ page import="java.util.ArrayList" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %><!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>codefun</title>
    <link rel="stylesheet" href="../../index.css" />
    <link rel="stylesheet" href="./style.css" />
  </head>
  <body>
<%--    <%--%>
<%--      Land_Dao tmp = new Land_Dao();--%>
<%--      List<Land> list = tmp.getall();--%>
<%--      if(list.size() != 0) {--%>
<%--        System.out.println(list.get(0).getFarmer_Id());--%>
<%--      }--%>
<%--    %>--%>
    <div class="flex-row page">
      <div class="flex-col section_1">
        <div class="flex-row group lmain">
          <img
            src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348020911822092.png"
            class="image"
          />
          <span class="text">Mine&amp;Shine</span>
        </div>
        <a href="/User_Home_Page/pages/user.jsp" class="flex-row group_1 lmain">
          <img
            src="https://project-user-resource-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348065708770896.png"
            class="image_1"
          />
          <span class="text_1">主页</span>
        </a>
        <a href="/Wallets/home.jsp" class="flex-row group_2 lmain">
          <img
            src="https://project-user-resource-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348065709696552.png"
            class="image_2"
          />
          <span class="text_2">钱包</span>
        </a>
        <a href="/Leased_land/pages/home/yichuzutudiliebiao.jsp" class="flex-row group_3">
          <img
            src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348037780037404.png"
            class="image_3"
          />
          <span class="text_3">已出租土地</span>
        </a>
        <a href="/Land_Management/pages/home/Land_Management.jsp" class="flex-row group_4 view_1 lmain">
          <img
            src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348039012374700.png"
            class="image_4"
          />
          <span class="text_4">土地管理</span>
        </a>
        <a href="/Farm _Transaction _Management/pages/jiaoyiguanli/jiaoyiguanli.jsp" class="flex-row group view_2 lmain">
          <img
            src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348039071178399.png"
            class="image_5"
          />
          <span class="text_5">农庄交易管理</span>
        </a>
        <a href="/Personal_Information/pages/gerenxinxi/gerenxinxi.jsp" class="flex-row group_4 view_3 lmain">
          <img
            src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348038638098587.png"
            class="image_6"
          />
          <span class="text_6">个人信息</span>
        </a>
        <a href="/Release_Land/pages/fabutudi/fabutudi.jsp" class="flex-row group_5 lmain">
          <img
            src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348040145607040.png"
            class="image_7"
          />
          <span class="text_7">发布土地</span>
        </a>
        <a href="" class="flex-row group view_4 lmain">
          <img
            src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348020911234160.png"
            class="image_8"
          />
          <span class="text_8">消息留言</span>
        </a>
        <span class="text_9">登录设备</span>
        <div class="flex-row group_6">
          <div class="flex-row group_7">
            <div class="flex-col items-center image-wrapper">
              <img
                src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348040410860642.png"
                class="image_9"
              />
            </div>
            <div class="flex-col group_8">
              <span class="text_10">Computer</span>
              <div class="flex-row group_9">
                <img
                  src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348020914390518.png"
                  class="image_10"
                />
                <span class="text_11">Active</span>
              </div>
            </div>
          </div>
          <img
            src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348020915333984.png"
            class="image_11"
          />
        </div>
      </div>
      <div class="flex-col group_10">
        <div class="flex-col group_11">
          <span class="text_12 text_13">Search</span>
          <div class="justify-between group_12">
            <span class="text_12 text_14">已出租土地列表</span>
            <div class="flex-row group_13">
              <div class="flex-row group_14">
                <img
                  src="https://project-user-resource-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348065705177567.png"
                  class="image_12"
                />
                <img
                  src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348020917427972.png"
                  class="image_13"
                />
              </div>
              <input placeholder="点击进行搜索" class="section_2" />
              <button>
                <img
                  src="https://project-user-resource-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348065709477401.png"
                  class="image_14"
                />
              </button>
            </div>
          </div>
        </div>
        <div class="flex-col section_3">
          <div class="flex-row group_15">
            <input class="flex-row section_4" placeholder="搜索订单编号" />
            <button class="search">
              <img
                src="https://codefun-proj-user-res-1256085488.cos.ap-guangzhou.myqcloud.com/6266510d5a7e3f0310700f1e/6274b8cb3051170011fb085d/16535348020911781469.png"
                class="image_15"
              />
            </button>
          </div>
          <div class="flex-col group_17">
            <div class="flex-col section_5">
              <div class="justify-evenly">
                <div class="flex-col items-start text-wrapper">
                  <span class="text_17">订单编号</span>
                </div>
                <div class="flex-col items-start text-wrapper_1">
                  <span class="text_19">时间</span>
                </div>
                <div class="flex-col items-start text-wrapper">
                  <span class="text_17">消费者id</span>
                </div>
                <div class="flex-col items-start text-wrapper_2">
                  <span class="text_21">状态</span>
                </div>
              </div>
              <div class="flex-col">
                <div class="justify-evenly">
                  <div class="flex-col items-start text-wrapper_3">
                    <span class="text_22">#1006H</span>
                  </div>
                  <div class="flex-col items-start section_6">
                    <span class="text_24">02 Jun 2021</span>
                    <span class="text_26">17:32</span>
                  </div>
                  <div class="flex-col items-start text-wrapper_4">
                    <span class="text_28">Darlene Robertson</span>
                  </div>
                  <div class="flex-col items-start section_7">
                    <div class="flex-col items-center text-wrapper_5">
                      <span class="text_30">Delivererd</span>
                    </div>
                  </div>
                </div>
                <div class="justify-evenly">
                  <div class="flex-col items-start text-wrapper_3">
                    <span class="text_22">#1006H</span>
                  </div>
                  <div class="flex-col items-start section_6">
                    <span class="text_24">02 Jun 2021</span>
                    <span class="text_26">17:32</span>
                  </div>
                  <div class="flex-col items-start text-wrapper_4">
                    <span class="text_28">Darlene Robertson</span>
                  </div>
                  <div class="flex-col items-start section_7">
                    <div class="flex-col items-center text-wrapper_5">
                      <span class="text_30">Delivererd</span>
                    </div>
                  </div>
                </div>
                <div class="justify-evenly">
                  <div class="flex-col items-start text-wrapper_3">
                    <span class="text_22">#1006H</span>
                  </div>
                  <div class="flex-col items-start section_6">
                    <span class="text_24">02 Jun 2021</span>
                    <span class="text_26">17:32</span>
                  </div>
                  <div class="flex-col items-start text-wrapper_4">
                    <span class="text_28">Darlene Robertson</span>
                  </div>
                  <div class="flex-col items-start section_7">
                    <div class="flex-col items-center text-wrapper_5">
                      <span class="text_30">Delivererd</span>
                    </div>
                  </div>
                </div>
                <div class="justify-evenly">
                  <div class="flex-col items-start text-wrapper_3">
                    <span class="text_22">#1006H</span>
                  </div>
                  <div class="flex-col items-start section_6">
                    <span class="text_24">02 Jun 2021</span>
                    <span class="text_26">17:32</span>
                  </div>
                  <div class="flex-col items-start text-wrapper_4">
                    <span class="text_28">Darlene Robertson</span>
                  </div>
                  <div class="flex-col items-start section_7">
                    <div class="flex-col items-center text-wrapper_5">
                      <span class="text_30">Delivererd</span>
                    </div>
                  </div>
                </div>
                <div class="justify-evenly">
                  <div class="flex-col items-start text-wrapper_3">
                    <span class="text_22">#1006H</span>
                  </div>
                  <div class="flex-col items-start section_6">
                    <span class="text_24">02 Jun 2021</span>
                    <span class="text_26">17:32</span>
                  </div>
                  <div class="flex-col items-start text-wrapper_4">
                    <span class="text_28">Darlene Robertson</span>
                  </div>
                  <div class="flex-col items-start section_7">
                    <div class="flex-col items-center text-wrapper_5">
                      <span class="text_30">Delivererd</span>
                    </div>
                  </div>
                </div>
                <div class="justify-evenly">
                  <div class="flex-col items-start text-wrapper_3">
                    <span class="text_22">#1006H</span>
                  </div>
                  <div class="flex-col items-start section_6">
                    <span class="text_24">02 Jun 2021</span>
                    <span class="text_26">17:32</span>
                  </div>
                  <div class="flex-col items-start text-wrapper_4">
                    <span class="text_28">Darlene Robertson</span>
                  </div>
                  <div class="flex-col items-start section_7">
                    <div class="flex-col items-center text-wrapper_5">
                      <span class="text_30">Delivererd</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="justify-evenly">
                <div class="flex-col items-start text-wrapper_3">
                  <span class="text_22">#1006H</span>
                </div>
                <div class="flex-col items-start section_6">
                  <span class="text_24">02 Jun 2021</span>
                  <span class="text_26">17:32</span>
                </div>
                <div class="flex-col items-start text-wrapper_4">
                  <span class="text_28">Darlene Robertson</span>
                </div>
                <div class="flex-col items-start section_7">
                  <div class="flex-col items-center text-wrapper_5">
                    <span class="text_30">Delivererd</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
