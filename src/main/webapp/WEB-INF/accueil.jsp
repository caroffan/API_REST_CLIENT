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
                            <div class="relative mt-2 lg:absolute bottom-0 mb-4 md:hidden lg:block">
                                <a class="inline bg-gray-300 py-1 px-2 rounded-full text-xs lowercase text-gray-700" href="#">#something</a>
                                <a class="inline bg-gray-300 py-1 px-2 rounded-full text-xs lowercase text-gray-700" href="#">#sky</a>
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
                        <img class="h-56 w-full object-cover object-center" src="https://images.unsplash.com/photo-1467238307002-480ffdd260f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60" alt="">
                        <div class="p-4 h-auto md:h-40 lg:h-48">
                            <a href="#" class="block text-blue-500 hover:text-blue-600 font-semibold mb-2 text-lg md:text-base lg:text-lg">
                                Walking through a forest in the afternoon
                            </a>
                            <div class="text-gray-600 text-sm leading-relaxed block md:text-xs lg:text-sm">
                                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Commodi nemo magni saepe cumque error quia quae sint ducimus, maiores doloremque.
                            </div>
                            <div class="relative mt-2 lg:absolute bottom-0 mb-4 md:hidden lg:block">
                                <a class="inline bg-gray-300 py-1 px-2 rounded-full text-xs lowercase text-gray-700" href="#">#forest</a>
                                <a class="inline bg-gray-300 py-1 px-2 rounded-full text-xs lowercase text-gray-700" href="#">#walk</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
 		

	
    </body>
</html>