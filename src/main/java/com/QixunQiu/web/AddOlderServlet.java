package com.QixunQiu.web;

import com.QixunQiu.pojo.Older;
import com.QixunQiu.pojo.User;
import com.QixunQiu.service.OlderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet("/AddOlderServlet")
public class AddOlderServlet extends HttpServlet {
    private OlderService olderService = new OlderService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        // 获取表单数据
        String AssessmentID=generateID();
        String AssessmentDate=request.getParameter("评估日期");
        String AssessmentReason=request.getParameter("评估原因");
        String userID = user.getUserID();
        String name = request.getParameter("姓名");
        String gender = request.getParameter("性别");
        String birthDate = request.getParameter("出生日期");
        String idCard = request.getParameter("身份证号");
        String socialSecurityCard = request.getParameter("社保卡号");
        String ethnicity = request.getParameter("民族");
        String educationLevel = request.getParameter("文化程度");
        String religion = request.getParameter("宗教信仰");
        String maritalStatus = request.getParameter("婚姻状况");
        String livingSituation = request.getParameter("居住情况");
        String paymentMethod = request.getParameter("医疗费用支付方式");
        String incomeSource = request.getParameter("经济来源");
        String dementiaLevel = request.getParameter("痴呆");
        String mentalIllness = request.getParameter("精神疾病");
        String chronicDiseases = request.getParameter("慢性疾病");
        String fallIncidents = request.getParameter("跌倒");
        String lostIncidents = request.getParameter("走失");
        String chokingIncidents = request.getParameter("噎食");
        String suicideIncidents = request.getParameter("自杀");
        String otherIncidents = request.getParameter("其他意外事件");

        Older older = new Older();
        older.setAssessmentID(AssessmentID);
        older.setAssessmentDate(AssessmentDate);
        older.setAssessmentReason(Integer.parseInt(AssessmentReason));
        older.setUserID(userID);
        older.setName(name);
        older.setGender(Integer.valueOf(gender));
        older.setBirthDate(birthDate);
        older.setIdCard(idCard);
        older.setSocialSecurityCard(socialSecurityCard);
        older.setEthnicity(ethnicity);
        older.setEducationLevel(Integer.valueOf(educationLevel));
        older.setReligion(religion);
        older.setMaritalStatus(Integer.valueOf(maritalStatus));
        older.setLivingSituation(Integer.valueOf(livingSituation));
        older.setPaymentMethod(paymentMethod);
        older.setIncomeSource(incomeSource);
        older.setDementiaLevel(Integer.valueOf(dementiaLevel));
        older.setMentalIllness(Integer.valueOf(mentalIllness));
        older.setChronicDiseases(chronicDiseases);
        older.setFallIncidents(Integer.valueOf(fallIncidents));
        older.setLostIncidents(Integer.valueOf(lostIncidents));
        older.setChokingIncidents(Integer.valueOf(chokingIncidents));
        older.setSuicideIncidents(Integer.valueOf(suicideIncidents));
        older.setOtherIncidents(otherIncidents);

        olderService.addOlder(older);
        List<Older> olders = olderService.selectOlder(user.getUserID());
        session.setAttribute("olders", olders);
        request.getRequestDispatcher("/older.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    private int sequenceNumber = 1;

    public synchronized String generateID() {
        // 获取当前日期
        Date now = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
        String dateStr = sdf.format(now);

        // 读取或初始化sequenceNumber
        if (sequenceNumber == 1) {
            File file = new File("sequenceNumberHouse.txt");
            if (file.exists()) {
                try {
                    BufferedReader reader = new BufferedReader(new FileReader(file));
                    String line = reader.readLine();
                    sequenceNumber = Integer.parseInt(line);
                    reader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        // 组合房产编号
        String sequenceStr = String.format("%04d", sequenceNumber++);
        String houseID = dateStr + sequenceStr;

        // 更新sequenceNumber到文件
        try {
            BufferedWriter writer = new BufferedWriter(new FileWriter("sequenceNumberHouse.txt"));
            writer.write(String.valueOf(sequenceNumber));
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return houseID;
    }
}


