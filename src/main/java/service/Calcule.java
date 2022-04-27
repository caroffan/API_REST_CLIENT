package service;

import beans.City;

import java.util.ArrayList;
import java.util.List;

import static java.lang.Double.parseDouble;
import static java.lang.Integer.parseInt;

public class Calcule {

    private static final double r2d = 180.0D / 3.141592653589793D;
    private static final double d2r = 3.141592653589793D / 180.0D;
    private static final double d2km = 111189.57696D * r2d;

    public double calculeDistanceBetweenCities(List<City> cities, String city1, String city2) {
        int indexCity1 = parseInt(city1)-1;
        int indexCity2 = parseInt(city2)-1;
        double x = parseDouble(cities.get(indexCity1).getLatitude()) * d2r;
        double y = parseDouble(cities.get(indexCity2).getLatitude()) * d2r;
        double ln1 = parseDouble(cities.get(indexCity1).getLongitude());
        double ln2 = parseDouble(cities.get(indexCity2).getLongitude());

        return Math.acos( Math.sin(x) * Math.sin(y) + Math.cos(x) * Math.cos(y) * Math.cos(d2r * (ln1 - ln2))) * d2km;
    }
}
