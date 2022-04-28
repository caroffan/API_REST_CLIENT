package com.servlets;

import beans.City;
import dao.Api;
import dao.WeatherApi;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import static java.lang.Integer.parseInt;

@WebServlet(name = "Weather", value = "/weather")
public class Weather extends HttpServlet {
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
        this.getServletContext().getRequestDispatcher("/WEB-INF/meteo.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String city1 = request.getParameter("city1");
        HttpSession session = request.getSession();
        List<City> cities = (List<City>) session.getAttribute("cities");
        int indexCity1 = parseInt(city1)-1;
        City city = cities.get(indexCity1);

        WeatherApi weatherApi = new WeatherApi();
        String weather = null;
        try {
            weather = weatherApi.getWeather(city.getLatitude(), city.getLongitude());
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        request.setAttribute("weather", weather);
        this.getServletContext().getRequestDispatcher("/WEB-INF/meteo.jsp").forward(request, response);

    }
}
