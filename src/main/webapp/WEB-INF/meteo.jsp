<%@ page import="java.io.PrintWriter" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        <%@include file="/css/entente.css" %>
    </style>
    <title>Weather</title>
</head>
<body class=" bg-gray-200">
<%@include file="entete.jsp" %>

<div class="w-full h-[90vh] flex flex-col justify-center items-center p-10 font-mono">
    <div class="text-2xl bg-gradient-to-r from-teal-500 to-cyan-500 w-2/3 flex justify-around items-center p-8
                rounded-t-md overflow-hidden border-teal-500 border-l-8 shadow-lg"> Weather </div>
    <div class="relative bg-white w-2/3 flex justify-around items-center p-8 rounded-b-md border-teal-500 border-l-8 overflow-hidden shadow-lg">
        <div class="flex flex-col justify-center items-center ">
            <div class="flex flex-col">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="searchBox1">Search a City</label>
                <input type="search" id="searchBox1" class="w-52 border-2 border-teal-500 h-10 rounded-md">
            </div>


            <form method="post" class="flex flex-col justify-center items-center my-2 w-4/5">
                <div class="flex flex-col">
                    <label for="cities1"> Or select it</label>
                    <select id="cities1" name="city1" class="w-52 border-2 border-teal-500 h-10 rounded-md" required>
                        <c:forEach items="${cities}" var="city" varStatus="status">
                            <option value="${status.count}">${city.nomCommune}</option>
                        </c:forEach>
                    </select>
                </div>


                <input value="Send" type="submit"
                       class="my-4  h-10 w-52 border-2 border-teal-500 hover:border-teal-600 bg-teal-500 hover:bg-teal-600 rounded-md ">
            </form>
        </div>
        <div>
            ${weather}
        </div>
    </div>

</div>
</body>
</html>
<script>
    searchBox1 = document.querySelector("#searchBox1");
    cities1 = document.querySelector("#cities1");
    var when = "keyup"; //You can change this to keydown, keypress or change

    searchBox1.addEventListener("keyup", function (e) {
        var text = e.target.value;
        var options = cities1.options;
        for (var i = 0; i < options.length; i++) {
            var option = options[i];
            var optionText = option.text;
            var lowerOptionText = optionText.toLowerCase();
            var lowerText = text.toLowerCase();
            var regex = new RegExp("^" + text, "i");
            var match = optionText.match(regex);
            var contains = lowerOptionText.indexOf(lowerText) != -1;
            if (match || contains) {
                option.selected = true;
                return;
            }
            searchBox1.selectedIndex = 0;
        }
    });
</script>