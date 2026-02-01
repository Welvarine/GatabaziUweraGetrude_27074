package com.example.servlets;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RedirectServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String query = request.getParameter("query");
        
        if (query != null && !query.trim().isEmpty()) {
            String encodedQuery = URLEncoder.encode(query, "UTF-8");
            String googleSearchURL = "https://www.google.com/search?q=" + encodedQuery;
            response.sendRedirect(googleSearchURL);
        } else {
            response.sendRedirect("https://www.google.com");
        }
    }
}