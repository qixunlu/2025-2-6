package com.QixunQiu.web;

import com.QixunQiu.pojo.Daily;
import com.QixunQiu.pojo.Mental;
import com.QixunQiu.pojo.Older;
import com.QixunQiu.pojo.User;
import com.QixunQiu.service.MentalService;
import com.QixunQiu.service.OlderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/selectMentalServlet")
public class selectMentalServlet extends HttpServlet {
    private OlderService olderService = new OlderService();
    private MentalService mentalService = new MentalService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Older older=olderService.selectOlderById(user.getUserID());
        List<Mental> mentals=mentalService.selectAllMental(older.getAssessmentID());
        PrintWriter writer = response.getWriter();
        if(!mentals.isEmpty()){
            // 登陆成功
            writer.write("登陆成功");
            session.setAttribute("mentals", mentals);
            request.getRequestDispatcher("/mental.jsp").forward(request,response);

        }else {
            // 登陆失败
            writer.write("登陆失败");
            request.getRequestDispatcher("/addMental.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
