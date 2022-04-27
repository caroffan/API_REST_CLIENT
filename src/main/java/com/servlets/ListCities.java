package com.servlets;

import beans.City;
import dao.Api;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ListCities", value = "/listCities")
public class ListCities extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Api api = new Api();
        List<City> cities = new ArrayList<City>();
        try {
            cities = api.getApi();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        HttpSession session = request.getSession();
        session.setAttribute("cities", cities);
        this.getServletContext().getRequestDispatcher("/WEB-INF/listCities.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
