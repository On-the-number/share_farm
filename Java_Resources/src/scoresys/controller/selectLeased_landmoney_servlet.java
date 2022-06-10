package scoresys.controller;

import scoresys.javabean.Leased_land;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class selectLeased_landmoney
 */
@WebServlet("/selectLeased_landmoney")
public class selectLeased_landmoney_servlet extends HttpServlet {
//        // TODO Auto-generated constructor stub
@Override
public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Leased_land> list = new ArrayList<Leased_land>(); //

        request.getParameter("");//获取前面前面界面name的值
        String url = "jdbc:sqlserver://localhost:1433;databaseName=Shared_Farm";//sa身份连接
        Connection con = null;  //会话连接
        Statement stmt = null;  //用于执行静态SQL语句并返回其生成的结果的对象。
        ResultSet rs = null;  //数据库结果集的数据表
        try {
        //1-注册驱动器,驱动管理器类加载SQLServerDriver类的静态方法，如果没有添加这个驱动，则创建这个驱动
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        System.out.println("load    1!!!!");
        //2-与数据源获得连接
        con = DriverManager.getConnection(url, "sa", ""); // 数据库密码与姓名
        System.out.println("load    2!!!!");
        //3-创建一个Statement对象，用于将SQL语句发送到数据库
        stmt = con.createStatement();
        //4- SQL语句
        String SQL = "SELECT * FROM Leased_land "; // 进行数据库操作
        //5-执行SQL,返回数据
        rs = stmt.executeQuery(SQL);
        //6-遍历
        while (rs.next()) {
       Leased_land temp = new Leased_land();
        System.out.println(rs.getString(1) + "," + rs.getString(3) + "," + rs.getString(4));//查看投诉人的相关信息 投诉编号 投诉者姓名 投诉者电话
        list.add(temp);
        //一行多少个值，下标就可以取到多少.
        }
        // request.setAttribute("list", list); //
        request.setAttribute("lard", list); // 现在跳转到下一个界面还是存在的
        request.getRequestDispatcher("/Farm _Transaction _Management/pages/jiaoyiguanli/jiaoyiguanli.jsp").forward(request, response);//返回管理员首页
        } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
        }
        }

@Override
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
        }

}