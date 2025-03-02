package com.QixunQiu.web;

import com.QixunQiu.pojo.Person;
import com.QixunQiu.pojo.User;
import com.QixunQiu.service.PersonService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/AddPersonServlet")
public class AddPersonServlet extends HttpServlet {
    private PersonService personService = new PersonService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String userID = user.getUserID();
        String olderID = request.getParameter("olderID");
        String providerName = request.getParameter("providerName");
        String relationship= request.getParameter("relationship");
        String otherRelationship= request.getParameter("otherRelationship");
        String contactName= request.getParameter("contactName");
        String contactPhone= request.getParameter("contactPhone");

        Person person = new Person();
        person.setUserID(userID);
        person.setOlderID(olderID);
        person.setProviderName(providerName);
        person.setRelationship(Integer.valueOf(relationship));
        person.setOtherRelationship(otherRelationship);
        person.setContactName(contactName);
        person.setContactPhone(contactPhone);

        personService.addPerson(person);
        List<Person> persons= personService.selectPerson(user.getUserID());
        session.setAttribute("persons", persons);
        request.getRequestDispatcher("/person.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
