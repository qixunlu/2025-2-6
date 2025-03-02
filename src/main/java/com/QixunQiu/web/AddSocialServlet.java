package com.QixunQiu.web;

import com.QixunQiu.pojo.Social;
import com.QixunQiu.service.SocialService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/AddSocialServlet")
public class AddSocialServlet extends HttpServlet {
    private SocialService socialService = new SocialService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String assessmentID=request.getParameter("assessmentID");
        int lifeAbility=Integer.parseInt(request.getParameter("lifeAbility"));
        int workAbility=Integer.parseInt(request.getParameter("workAbility"));
        int timeSpaceOrientation=Integer.parseInt(request.getParameter("timeSpaceOrientation"));
        int personOrientation=Integer.parseInt(request.getParameter("personOrientation"));
        int socialInteractionAbility=Integer.parseInt(request.getParameter("socialInteractionAbility"));

        // 计算总分
        int totalScore = lifeAbility + workAbility + timeSpaceOrientation + personOrientation
                + socialInteractionAbility;

        // 计算社会参与分级
        int participationGrade;
        if (totalScore >= 0 && totalScore <= 2) {
            participationGrade = 0;
        } else if (totalScore >= 3 && totalScore <= 7) {
            participationGrade = 1;
        } else if (totalScore >= 8 && totalScore <= 13) {
            participationGrade = 2;
        } else {
            participationGrade = 3;
        }

        Social social = new Social();
        social.setAssessmentID(assessmentID);
        social.setLifeAbility(lifeAbility);
        social.setWorkAbility(workAbility);
        social.setTimeSpaceOrientation(timeSpaceOrientation);
        social.setPersonOrientation(personOrientation);
        social.setSocialInteractionAbility(socialInteractionAbility);
        social.setTotalScore(totalScore);
        social.setParticipationGrade(participationGrade);

        socialService.add(social);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
