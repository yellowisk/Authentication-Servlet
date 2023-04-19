package br.ifsp.webapp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import br.ifsp.webapp.Person;
import br.ifsp.webapp.Authentication;
import java.util.ArrayList;

@WebServlet(name = "segundoServlet", value="/verifies")
public class Servlet extends HttpServlet {
    
    Person p = new Person();
    Authentication a = new Authentication();
    ArrayList<Person> people = new ArrayList<Person>();
    ArrayList<Authentication> user = new ArrayList<>();
    String message = "";
    int i = 0;


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        // super.doPost(req, resp);


        String name = req.getParameter("name");
        String sex = req.getParameter("sex");

        String password = req.getParameter("password");
        HttpSession session = req.getSession();
                    
                    p.setName(name);
                    a.setUser(name);
                    p.setSex(sex);
                    a.setPassword(password);
                    people.add(i, p);
                    a.setPerson(p);
                    user.add(i, a);

        session.setAttribute("message", message);
        resp.sendRedirect("./authenticate.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        
        String name = req.getParameter("name");
        String password = req.getParameter("password");

        for (int j = 0; j < user.size(); j++) {
            if (password.equals(user.get(j).getPassword()) && name.equals(user.get(j).getUser())) {
                    if (people.contains(user.get(j).getPerson())) {
                        message = "User authenticated";
                    } else {
                        message = "User doesn't belong to person";
                    } 
                } else {
                    message = "User unexistent";
                }
        }

        session.setAttribute("message", message);
        resp.sendRedirect("./status.jsp");
    }
    
}