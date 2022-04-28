<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
		<script src="https://cdn.tailwindcss.com"></script>
        <title>Accueil</title>
    </head>
    <body class="font-sans bg-gray-100">
    <%@include file="entete.jsp"%>

    <main class="py-4 font-mono">
        <div class="px-4">
            <div class="block md:flex justify-between md:-mx-2">
                <div id="liste" class="w-full lg:w-1/3 md:mx-2 mb-4 md:mb-0">
                    <div class="bg-white rounded-lg overflow-hidden shadow relative">
                        <img class="h-56 ml-[25%] object-cover object-center" src="https://zupimages.net/up/22/17/t3ne.png" alt="">
                        <div class="p-4 h-auto md:h-40 lg:h-48">
                            <a href="listCities" class="block text-teal-500 hover:text-teal-600 font-semibold mb-2 text-lg md:text-base lg:text-lg">
                                List of cities in france
                            </a>
                            <div class="text-gray-600 text-sm leading-relaxed block md:text-xs lg:text-sm">
                                Database of cities in France
                            </div>
                        </div>
                    </div>
                </div>
                <div id="distance" class="w-full lg:w-1/3 md:mx-2 mb-4 md:mb-0">
                    <div class="bg-white rounded-lg overflow-hidden shadow relative">
                        <img class="h-56 ml-[25%] object-cover object-center" src="https://zupimages.net/up/22/17/syo8.png" alt="">
                        <div class="p-4 h-auto md:h-40 lg:h-48">
                            <a href="distance" class="block text-teal-500 hover:text-teal-600 font-semibold mb-2 text-lg md:text-base lg:text-lg">
                                Distance between two cities
                            </a>
                            <div class="text-gray-600 text-sm leading-relaxed block md:text-xs lg:text-sm">
                                Select two cities to calculate the distance between them.
                            </div>
                        </div>
                    </div>
                </div>
                <div id="meteo" class="w-full lg:w-1/3 md:mx-2 mb-4 md:mb-0">
                    <div class="bg-white rounded-lg overflow-hidden shadow relative">
                        <img class="h-56 ml-[25%] object-cover object-center" src="https://zupimages.net/up/22/17/ys8i.png" alt="">
                        <div class="p-4 h-auto md:h-40 lg:h-48">
                            <a href="weather" class="block text-teal-500 hover:text-teal-600 font-semibold mb-2 text-lg md:text-base lg:text-lg">
                                Weather of a city
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
 		

	
    </body>
</html>