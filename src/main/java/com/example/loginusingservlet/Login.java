package com.example.loginusingservlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");

        if(uname.equals("admin") && pass.equals("admin"))
        {
            HttpSession session = request.getSession();
            session.setAttribute("uname",uname);
            response.sendRedirect("welcome.jsp");
        }
        else
        {
            response.sendRedirect("index.jsp");
        }
    }
}
