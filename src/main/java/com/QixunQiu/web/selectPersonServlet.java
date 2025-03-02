package com.QixunQiu.web;

import com.QixunQiu.pojo.Older;
import com.QixunQiu.pojo.Person;
import com.QixunQiu.pojo.User;
import com.QixunQiu.service.PersonService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/selectPersonServlet")
public class selectPersonServlet extends HttpServlet {
    private PersonService personService = new PersonService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        List<Person> persons= personService.selectPerson(user.getUserID());
        PrintWriter writer = response.getWriter();
        if(!persons.isEmpty()){
            // 登陆成功
            writer.write("登陆成功");
            session.setAttribute("persons", persons);
            request.getRequestDispatcher("/person.jsp").forward(request,response);

        }else {
            // 登陆失败
            writer.write("登陆失败");
            request.getRequestDispatcher("/addPerson.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
