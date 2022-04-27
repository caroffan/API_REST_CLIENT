package dao;

import beans.City;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.List;

public class Api {

    private static final String API_URL = "http://localhost:8181/villes";

    private static final HttpClient httpClient = HttpClient.newBuilder()
            .version(HttpClient.Version.HTTP_2)
            .build();

    public List<City> getApi() throws IOException, InterruptedException {
        HttpRequest request = HttpRequest.newBuilder()
                .GET()
                .uri(URI.create(API_URL))
                .setHeader("User-Agent", "Java 11 HttpClient Bot")
                .build();

        HttpResponse<String> response = httpClient.send(request, HttpResponse.BodyHandlers.ofString());



        String citiesJSON = response.body();
        JSONArray jsonArray = new JSONArray(citiesJSON);
        ObjectMapper mapper = new ObjectMapper();
        List<City> cities = mapper.readValue(citiesJSON, new TypeReference<List<City>>(){});
        return cities;

    }

    public String updateApi(City city) throws IOException, InterruptedException {
        ObjectMapper mapper = new ObjectMapper();
        //Converting the Object to JSONString
        String requestBody = mapper.writeValueAsString(city);

        System.out.println(requestBody);
        HttpRequest request = HttpRequest.newBuilder()
                .PUT(HttpRequest.BodyPublishers.ofString(requestBody))
                .uri(URI.create(API_URL+"/"+city.getCodeCommune()))
                .build();

        HttpResponse<String> response = httpClient.send(request, HttpResponse.BodyHandlers.ofString());
        System.out.println(response.body());
        return response.body();
    }
}
