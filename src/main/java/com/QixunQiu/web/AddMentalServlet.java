package com.QixunQiu.web;

import com.QixunQiu.pojo.Mental;
import com.QixunQiu.service.MentalService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/AddMentalServlet")
public class AddMentalServlet extends HttpServlet {
    private MentalService mentalService = new MentalService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String assessmentID=request.getParameter("assessmentID");
        int cognitiveTestScore=Integer.parseInt(request.getParameter("cognitiveTestScore"));
        int aggressiveBehaviorScore=Integer.parseInt(request.getParameter("aggressiveBehaviorScore"));
        int depressiveSymptomsScore=Integer.parseInt(request.getParameter("depressiveSymptomsScore"));

        // 计算总分
        int totalScore = cognitiveTestScore + aggressiveBehaviorScore + depressiveSymptomsScore;

        // 计算精神状态分级
        int mentalStateLevel;
        if (totalScore == 0) {
            mentalStateLevel = 0;
        } else if (totalScore == 1) {
            mentalStateLevel = 1;
        } else if (totalScore >= 2 && totalScore <= 3) {
            mentalStateLevel = 2;
        } else {
            mentalStateLevel = 3;
        }

        Mental mental=new Mental();
        mental.setAssessmentID(assessmentID);
        mental.setCognitiveTestScore(cognitiveTestScore);
        mental.setAggressiveBehaviorScore(aggressiveBehaviorScore);
        mental.setDepressiveSymptomsScore(depressiveSymptomsScore);
        mental.setTotalScore(totalScore);
        mental.setMentalStatusLevel(mentalStateLevel);

        mentalService.add(mental);

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
