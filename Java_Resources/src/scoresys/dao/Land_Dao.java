package scoresys.dao;

import scoresys.javabean.Land;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class Land_Dao {
  public List getall() {
    List<Land> list = new ArrayList<>(); //用于存储数据，类写在javabean里面，记得改一下
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
      String SQL = "SELECT * FROM Land"; // 进行数据库操作
      //5-执行SQL,返回数据
      rs = stmt.executeQuery(SQL);
      //6-遍历
      while (rs.next()) {
        Land temp = new Land();
        temp.setLand_Id(rs.getString(1));
        temp.setFarmer_Id(rs.getString(2));
        temp.setLocation(rs.getString(3));
        temp.setSquare( Float.parseFloat(rs.getString(4)));
        temp.setExpense( Integer.parseInt(rs.getString(5)));
        temp.setLand_status(rs.getString(6));
        temp.setApplication(rs.getString(7));
        list.add(temp);
        //一行多少个值，下标就可以取到多少.
      }
      // request.setAttribute("list", list); //
    } catch (SQLException | ClassNotFoundException e) {
      e.printStackTrace();
    }
    return list;
  }
}
