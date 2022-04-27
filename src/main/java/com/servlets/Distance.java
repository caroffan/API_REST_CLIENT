package com.servlets;

import beans.City;
import dao.Api;
import service.Calcule;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Distance", value = "/distance")
public class Distance extends HttpServlet {
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
        this.getServletContext().getRequestDispatcher("/WEB-INF/distance.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String city1 = request.getParameter("city1");
        String city2 = request.getParameter("city2");
        HttpSession session = request.getSession();
        List<City> cities = (List<City>) session.getAttribute("cities");
        Calcule calcule = new Calcule();

        double distance = calcule.calculeDistanceBetweenCities(cities, city1, city2);

        request.setAttribute("distance", distance);
        this.getServletContext().getRequestDispatcher("/WEB-INF/distance.jsp").forward(request, response);
    }
}
