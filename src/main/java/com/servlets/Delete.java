package com.servlets;

import dao.Api;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Delete", value = "/delete")
public class Delete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Api api = new Api();
        String codeINSEE = request.getParameter("codeINSEE");
        try {
            api.deleteApi(codeINSEE);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        HttpSession session = request.getSession();
        session.setAttribute("alertDelete", "The city have been deleted");
        response.sendRedirect(request.getContextPath() + "/listCities");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
