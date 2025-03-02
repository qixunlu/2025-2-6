package com.QixunQiu.web;

import com.QixunQiu.pojo.Communication;
import com.QixunQiu.pojo.Older;
import com.QixunQiu.pojo.Social;
import com.QixunQiu.pojo.User;
import com.QixunQiu.service.OlderService;
import com.QixunQiu.service.SocialService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/selectSocialServlet")
public class selectSocialServlet extends HttpServlet {
    private OlderService olderService = new OlderService();
    private SocialService socialService = new SocialService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Older older=olderService.selectOlderById(user.getUserID());
        List<Social> socialList=socialService.selectSocial(older.getAssessmentID());
        PrintWriter writer = response.getWriter();
        if(!socialList.isEmpty()){
            // 登陆成功
            writer.write("登陆成功");
            System.out.println(socialList);
            session.setAttribute("socialList", socialList);
            request.getRequestDispatcher("/social.jsp").forward(request,response);

        }else {
            // 登陆失败
            writer.write("登陆失败");
            request.getRequestDispatcher("/addSocial.jsp").forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
