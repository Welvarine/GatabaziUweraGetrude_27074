package com.example.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
       
        response.setContentType("text/html");
        
      
        PrintWriter out = response.getWriter();
        
      
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
      
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Login Response</title>");
        out.println("<style>");
        out.println("body { font-family: Arial, sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); }");
        out.println(".message-container { background: white; padding: 40px; border-radius: 10px; box-shadow: 0 10px 25px rgba(0,0,0,0.2); text-align: center; }");
        out.println("h2 { color: #383838; margin-bottom: 20px; }");
        out.println(".weak { color: #52302d; }");
        out.println(".strong { color: #1b2c22; }");
        out.println("a { display: inline-block; margin-top: 20px; color: #fefff7; text-decoration: none; }");
        out.println("a:hover { text-decoration: underline; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div class='message-container'>");
        
      
        if (password != null && password.length() < 8) {
            out.println("<h2 class='weak'>Hello " + username + ", your password is weak. Try a strong one.</h2>");
        } else {
            out.println("<h2 class='strong'>Welcome " + username + "</h2>");
        }
        
        out.println("<a href='Login.html'>Back to Login</a>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
        
        out.close();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        response.sendRedirect(request.getContextPath() + "/Login.html");
    }
}