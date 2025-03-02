package com.QixunQiu.web;

import com.QixunQiu.pojo.Communication;
import com.QixunQiu.pojo.Daily;
import com.QixunQiu.pojo.Older;
import com.QixunQiu.pojo.User;
import com.QixunQiu.service.CommunicationService;
import com.QixunQiu.service.OlderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/selectCommunicationServlet")
public class selectCommunicationServlet extends HttpServlet {
    private OlderService olderService = new OlderService();
    private CommunicationService communicationService = new CommunicationService();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Older older=olderService.selectOlderById(user.getUserID());
        List<Communication> communicationList=communicationService.select(older.getAssessmentID());
        PrintWriter writer = response.getWriter();
        if(!communicationList.isEmpty()){
            // 登陆成功
            writer.write("登陆成功");
            System.out.println(communicationList);
            session.setAttribute("communicationList", communicationList);
            request.getRequestDispatcher("/communication.jsp").forward(request,response);

        }else {
            // 登陆失败
            writer.write("登陆失败");
            request.getRequestDispatcher("/addCommunication.jsp").forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
