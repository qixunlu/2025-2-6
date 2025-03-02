package com.QixunQiu.web;

import com.QixunQiu.pojo.User;
import com.QixunQiu.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String userID = request.getParameter("userID");
        String password = request.getParameter("password");
        User user = new User();
        user.setPassword(password);
        user.setUserID(userID);
        userService.addUser(user);
        request.getRequestDispatcher("/login.html").forward(request, response);

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
