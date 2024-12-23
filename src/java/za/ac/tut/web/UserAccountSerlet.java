/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entities.Users;
import za.ac.tut.entities.UsersFacadeLocal;

/**
 *
 * @author ezram
 */
public class UserAccountSerlet extends HttpServlet {


    @EJB
    private UsersFacadeLocal bc;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      String names = request.getParameter("name");
      String email = request.getParameter("email");
      String organization = request.getParameter("org");
      String pwd = request.getParameter("pwd");
      String cellNum = request.getParameter("cellNum");
      String country = request.getParameter("country");
      
      Users organiz = new Users(names, email, organization, cellNum, country, pwd);
      bc.create(organiz);
      
      RequestDispatcher disp = request.getRequestDispatcher("message.jsp");
      disp.forward(request, response);
      
    }

}
