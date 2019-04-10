package com.ikheiry.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Choix
 */
@WebServlet("/Choix")
public class Choix extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Choix() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // response.getWriter().append("Served at: ").append(request.getContextPath());
        // response.sendRedirect(request.getContextPath() + "/mvc");
        String choix = request.getParameter("choix").toString();
        if (choix.equals("www.google.com")) {
            response.sendRedirect("http://" + choix);
        }else {
            response.getWriter().append("error");
        }
    }
}
