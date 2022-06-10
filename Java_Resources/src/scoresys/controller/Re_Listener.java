package scoresys.controller;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.util.Date;

@WebListener
public class Re_Listener implements HttpSessionListener,ServletContextListener {

    public void Listener() {
    }
    //监听application销毁事件--即服务器关闭
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("application销毁~~~~~~~~");

    }
    //监听application创建事件--即服务器开启
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("application创建~~~~~~~~");
        int sessionCount = 0;//服务器开启的时候，定义变量用于统计在线人数，保存起来
        ServletContext application = sce.getServletContext();
        application.setAttribute("sessionCount", sessionCount);//这里记得改成别的，然后多加几个
    }

    //监听session创建事件--即有人登陆成功，进入项目主页面,则在线人数+1
    @Override
    public void sessionCreated(HttpSessionEvent hse) {
        System.out.println("登陆成功"+hse.getSession().getId()+"创建时间："+new Date());
        ServletContext application = hse.getSession().getServletContext();
        int session = (int)application.getAttribute("sessionCount");

        application.setAttribute("sessionCount", ++session);
        System.out.println("当前在线用户数为："+application.getAttribute("session"));
    }
    //监听session销毁事件--销毁有很多种方式：强制销毁、自动过期等，无所谓什么方式，只要session销毁就可以监听到
    @Override
    public void sessionDestroyed(HttpSessionEvent hse) {
        System.out.println("退出成功"+hse.getSession().getId()+"退出时间："+new Date());
        ServletContext application = hse.getSession().getServletContext();
        int session = (int)application.getAttribute("session"); //这里记得改成别的，然后多加几个

        application.setAttribute("session", --session);//这里记得改成别的，然后多加几个
        System.out.println("当前在线用户数为："+application.getAttribute("sessionCount"));//这里记得改成别的，然后多加几个
    }


}


