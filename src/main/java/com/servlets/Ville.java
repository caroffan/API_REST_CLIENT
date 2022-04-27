package com.servlets;

import beans.City;
import dao.Api;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Ville", value = "/ville")
public class Ville extends HttpServlet {
    static Api api = new Api();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<City> cities = new ArrayList<City>();
        try {
            cities = api.getApi();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        HttpSession session = request.getSession();
        int index = Integer.parseInt(request.getParameter("index"))-1;
        City city = cities.get(index);
        session.setAttribute("city", city);
        this.getServletContext().getRequestDispatcher("/WEB-INF/ville.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        City city = (City) request.getSession().getAttribute("city");
        city.setNomCommune(request.getParameter("nomCommune"));
        city.setCodePostal(request.getParameter("codePostal"));
        city.setLibelleAcheminement(request.getParameter("libelleAcheminement"));
        city.setLigne5(request.getParameter("ligne5"));
        city.setLatitude(request.getParameter("latitude"));
        city.setLongitude(request.getParameter("longitude"));

        try {
            api.updateApi(city);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        response.sendRedirect(request.getContextPath() + "/listCities");
    }
}
