package scoresys.controller;

import scoresys.javabean.Land;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/fabutudi_deleteland")


public class Land_Delete_Servlet extends HttpServlet {

    //        // TODO Auto-generated constructor stub
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Land> list = new ArrayList<>(); //用于存储数据，类写在javabean里面，记得改一下
        List<Land> list1 = new ArrayList<>();
        List<Land> list2 = new ArrayList<>();
        List<Land> list3 = new ArrayList<>();
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
            String SQL = "delete FROM Land where Expense<100"; // 进行数据库操作
            //5-执行SQL,返回数据
            rs = stmt.executeQuery(SQL);
            //6-遍历
            while (rs.next()) {
                Land temp = new Land();
                System.out.println(rs.getString(1) + "," + rs.getString(2));
                list.add(temp);
                //一行多少个值，下标就可以取到多少.
            }
            while (rs.next()) {
                Land temp = new Land();
                System.out.println(rs.getString(1) + "," + rs.getString(2));
                list1.add(temp);
                //一行多少个值，下标就可以取到多少.
            }
            while (rs.next()) {
                Land temp = new Land();
                System.out.println(rs.getString(1) + "," + rs.getString(2));
                list2.add(temp);
                //一行多少个值，下标就可以取到多少.
            }
            while (rs.next()) {
                Land temp = new Land();
                System.out.println(rs.getString(1) + "," + rs.getString(2));
                list3.add(temp);
                //一行多少个值，下标就可以取到多少.
            }
            // request.setAttribute("list", list); //
            request.setAttribute("lard", list); // 现在跳转到下一个界面还是存在的
            request.setAttribute("lard", list1);
            request.setAttribute("lard", list2);
            request.setAttribute("lard", list3);
            //Release_Land/pages/fabutudi/fabutudi.jsp
            request.getRequestDispatcher("/User_Home_Page/pages/user.jsp").forward(request, response);
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
