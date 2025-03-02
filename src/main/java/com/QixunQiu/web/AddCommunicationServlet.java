package com.QixunQiu.web;

import com.QixunQiu.pojo.Communication;
import com.QixunQiu.service.CommunicationService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/AddCommunicationServlet")
public class AddCommunicationServlet extends HttpServlet {
    private CommunicationService communicationService = new CommunicationService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String assessmentID=request.getParameter("assessmentID");
        int consciousnessLevel=Integer.parseInt(request.getParameter("consciousnessLevel"));
        int visionLevel=Integer.parseInt(request.getParameter("visionLevel"));
        int hearingLevel=Integer.parseInt(request.getParameter("hearingLevel"));
        int communicationLevel=Integer.parseInt(request.getParameter("communicationLevel"));

        int overallGrade;
        if (consciousnessLevel == 0 && visionLevel <= 1 && hearingLevel <= 1 && communicationLevel == 0) {
            overallGrade = 0;
        } else if (consciousnessLevel == 0 && (visionLevel == 2 || hearingLevel == 2) || communicationLevel == 1) {
            overallGrade = 1;
        } else if ((consciousnessLevel == 0 && (visionLevel == 3 || hearingLevel == 3) || communicationLevel == 2) ||
                (consciousnessLevel == 1 && visionLevel <= 3 && hearingLevel <= 3 && communicationLevel <= 2)) {
            overallGrade= 2;
        } else {
            overallGrade= 3;
        }

        Communication communication = new Communication();
        communication.setAssessmentID(assessmentID);
        communication.setConsciousnessLevel(consciousnessLevel);
        communication.setVisionLevel(visionLevel);
        communication.setHearingLevel(hearingLevel);
        communication.setCommunicationLevel(communicationLevel);
        communication.setOverallGrade(overallGrade);
        communicationService.add(communication);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
