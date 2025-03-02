package com.QixunQiu.web;

import com.QixunQiu.pojo.Older;
import com.QixunQiu.pojo.User;
import com.QixunQiu.service.OlderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/selectOlderServlet")
public class selectOlderServlet extends HttpServlet {
    private OlderService olderService = new OlderService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        List<Older> olders = olderService.selectOlder(user.getUserID());
        System.out.println(olders);
        PrintWriter writer = response.getWriter();
        //3. 判断olders释放为null
        if(!olders.isEmpty()){
            // 登陆成功
            writer.write("登陆成功");
            session.setAttribute("olders", olders);
            request.getRequestDispatcher("/older.jsp").forward(request,response);

        }else {
            // 登陆失败
            writer.write("登陆失败");
            request.getRequestDispatcher("/addOlder.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
