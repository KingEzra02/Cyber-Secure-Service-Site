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
public class LogInServlet extends HttpServlet {


    @EJB
    private UsersFacadeLocal bc;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       RequestDispatcher disp = request.getRequestDispatcher("logIn.html");
       disp.forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");
        
        Users user = bc.findUserByEmail(email);
        if ( user != null && pwd.equals(user.getPwd())) {
            // Login successful, forward to the user profile page
            RequestDispatcher disp = request.getRequestDispatcher("userProfile.html");
            request.setAttribute("user", user);
            disp.forward(request, response);
        } else {
            // Login failed, forward to the wrong logins page
            RequestDispatcher disp = request.getRequestDispatcher("wrongLogins.jsp");
            disp.forward(request, response);
        }
    }

}
