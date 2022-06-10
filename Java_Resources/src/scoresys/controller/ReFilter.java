package scoresys.controller;
import scoresys.model.Farmer;
import scoresys.model.Customer;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

// urlPatterns = "/*"  表示把所有的都拦截下来
@WebFilter(filterName = "/ReFilter" ,urlPatterns = "/*")
public class ReFilter implements Filter{
    private static final Set<String> ALLOWED_PATHS = Collections.unmodifiableSet(new HashSet<>(Arrays.asList("","/Registration_User" ,"/Registration/pages/Modal_as_Page/Modal_as_Page.jsp")));
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //System.out.println("login filter...");
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpSession session = req.getSession(); // 强制类型转换
//        Student student = (Student) session.getAttribute("login"); // 强制类型转换
        Cus cus = (Cus) session.getAttribute("Registration" ); //
        System.out.println(req.getContextPath()); // 拿到一个工程名
        // 把工程名拿走                            // 避免除了出现 / 的符号或者 \ \\ 之类的符号 都去掉
        String path = req.getRequestURI().substring(req.getContextPath().length()).replaceAll("[/]+$","");
        System.out.println(path);
        boolean allowedPath = ALLOWED_PATHS.contains(path) || (path.endsWith(".css") || path.endsWith(".html")); // 如果不加后面这两句话，css样式表也会被过滤掉

        if(cus == null && !allowedPath) {
            servletRequest.getRequestDispatcher("/error1.jsp").forward(servletRequest, servletResponse);
        } else {
//            System.out.println("login filter...?success");
            filterChain.doFilter(servletRequest,servletResponse); // 让它通过
        }
    }
}
