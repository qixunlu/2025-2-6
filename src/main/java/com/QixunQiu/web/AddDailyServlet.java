package com.QixunQiu.web;

import com.QixunQiu.pojo.Daily;
import com.QixunQiu.service.DailyService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/AddDailyServlet")
public class AddDailyServlet extends HttpServlet {
    private DailyService dailyService = new DailyService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String assessmentID=request.getParameter("assessmentID");
        int  eating= Integer.parseInt(request.getParameter("eating"));
        int bathing= Integer.parseInt(request.getParameter("bathing"));
        int grooming= Integer.parseInt(request.getParameter("grooming"));
        int dressing= Integer.parseInt(request.getParameter("dressing"));
        int bowelControl= Integer.parseInt(request.getParameter("bowelControl"));
        int bladderControl= Integer.parseInt(request.getParameter("bladderControl"));
        int toileting= Integer.parseInt(request.getParameter("toileting"));
        int bedChairTransfer= Integer.parseInt(request.getParameter("bedChairTransfer"));
        int walking= Integer.parseInt(request.getParameter("walking"));
        int stairs= Integer.parseInt(request.getParameter("stairs"));

        // 计算总分
        int totalScore = eating + bathing + grooming + dressing +
                bowelControl + bladderControl + toileting +
                bedChairTransfer + walking + stairs;

        // 计算分级
        int activityLevel;
        if (totalScore == 100) {
            activityLevel = 0;
        } else if (totalScore >= 65 && totalScore <= 95) {
            activityLevel = 1;
        } else if (totalScore >= 45 && totalScore <= 60) {
            activityLevel = 2;
        } else {
            activityLevel = 3;
        }

        Daily daily=new Daily();
        daily.setAssessmentID(assessmentID);
        daily.setEating(eating);
        daily.setBathing(bathing);
        daily.setGrooming(grooming);
        daily.setDressing(dressing);
        daily.setBowelControl(bowelControl);
        daily.setBladderControl(bladderControl);
        daily.setToileting(toileting);
        daily.setBedChairTransfer(bedChairTransfer);
        daily.setWalking(walking);
        daily.setStairs(stairs);
        daily.setTotalScore(totalScore);
        daily.setActivityLevel(activityLevel);

        dailyService.addDaily(daily);
        response.sendRedirect("daily.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
