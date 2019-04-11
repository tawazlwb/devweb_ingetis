package com.ikheiry.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ikheiry.gestion.commerciale.Employee;

/**
 * Servlet implementation class Choix
 */
@WebServlet("/employes")
public class EmployesCRUD extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private int size;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployesCRUD() {
        super();
        this.size = 10;
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // chercher
        if (request.getParameterMap().containsKey("submit")
                && request.getParameter("submit").toString().equals("chercher")) {
            if (request.getParameterMap().containsKey("employeeID")
                    && !request.getParameter("employeeID").toString().equals("")) {
                // appel db
                Employee employee = new Employee(Integer.parseInt(request.getParameter("employeeID")));
                employee.chercher();
                request.setAttribute("employee", employee);
            }
        }
        // modifier
        else if (request.getParameterMap().containsKey("submit")
                && request.getParameter("submit").toString().equals("modifier")) {
            if (request.getParameterMap().containsKey("employeeID")
                    && request.getParameterMap().containsKey("firstName")
                    && request.getParameterMap().containsKey("lastName")
                    && !request.getParameter("employeeID").toString().equals("")
                    && !request.getParameter("firstName").toString().equals("")
                    && !request.getParameter("lastName").toString().equals("")) {
                // appel db
                Employee employee = new Employee(Integer.parseInt(request.getParameter("employeeID")));
                employee.setFirstName(request.getParameter("firstName").toString());
                employee.setLastName(request.getParameter("lastName").toString());
                employee.update();
                request.setAttribute("employee", employee);
            }
        }
        // ajouter
        else if (request.getParameterMap().containsKey("submit")
                && request.getParameter("submit").toString().equals("ajouter")) {
            if (request.getParameterMap().containsKey("firstName")
                    && request.getParameterMap().containsKey("lastName")
                    && !request.getParameter("firstName").toString().equals("")
                    && !request.getParameter("lastName").toString().equals("")) {
                // appel db
                Employee employee = new Employee();
                employee.setFirstName(request.getParameter("firstName").toString());
                employee.setLastName(request.getParameter("lastName").toString());
                employee.insert();
                request.setAttribute("employee", employee);
            }
        }
        // supprimer
        else if (request.getParameterMap().containsKey("submit")
                && request.getParameter("submit").toString().equals("supprimer")) {
            if (request.getParameterMap().containsKey("employeeID")
                    && !request.getParameter("employeeID").toString().equals("")) {
                // appel db
                Employee employee = new Employee(Integer.parseInt(request.getParameter("employeeID")));
                employee.delete();
                request.setAttribute("employee", new Employee());
            }
        }
        
        // pagination
        Employee employee = new Employee();
        employee.count();
        request.setAttribute("count", employee.getCount());
        
        // Current page
        int page = 0;
        if(request.getParameterMap().containsKey("currentPage")) {
            page = Integer.parseInt(request.getParameter("currentPage"));
        }
        request.setAttribute("currentPage", page);
        
        // list employes
        employee.getEmployes((page) * this.size, this.size);
        request.setAttribute("employes", employee.getEmployes());
        
        

        RequestDispatcher view = request.getRequestDispatcher("Page12_gererEmployes.jsp");
        view.forward(request, response);
    }
}
