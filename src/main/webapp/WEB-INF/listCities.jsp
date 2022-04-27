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
    <style>
        <%@include file="/css/jquery.dynatable.css" %>
    </style>
    <title>Accueil</title>

</head>
<body class="font-sans bg-gray-100">
<%@include file="entete.jsp" %>

<main class="py-4 font-mono">
    <section class="container mx-auto p-6 font-mono">
        <div class="w-full mb-8 rounded-lg shadow-lg">
            <div class="w-full rounded-lg">
                <table id="myTable" class="w-full rounded-lg">
                    <thead class="rounded-t-md">
                    <tr class="text-md font-semibold tracking-wide text-left text-gray-100 bg-gray-800 uppercase border-b border-black">
                        <th >Code INSEE</th>
                        <th >Nom</th>
                        <th >Code Postal</th>
                        <th >Libelle Acheminement</th>
                        <th >Ligne5</th>
                        <th >Latitude</th>
                        <th>Longitude</th>
                    </tr>
                    </thead>
                    <tbody class="bg-white">
                    <c:forEach items="${cities}" var="city" varStatus="status">
                        <tr class="text-gray-700">
                            <c:set var="index" value="${status}" scope="session" />
                            <td ><a href="accueil"> ${city.codeCommune}</a></td>
                            <td ><a href="accueil"> ${city.nomCommune}</a></td>
                            <td ><a href="accueil"> ${city.codePostal}</a></td>
                            <td ><a href="accueil"> ${city.libelleAcheminement}</a></td>
                            <td ><a href="accueil"> ${city.ligne5}</a></td>
                            <td ><a href="accueil"> ${city.latitude}</a></td>
                            <td ><a href="accueil"> ${city.longitude}</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

</main>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>
    <%@include file="/js/jquery.dynatable.js" %>
</script>
<script>
    (function () {
            // initialise les tableaux avec dynatable
            var initDynatable = function (id) {
                $(id).dynatable({
                    features: {
                        paginate: true,
                        sort: true,
                        pushState: false,
                        search: true,
                        recordCount: false,
                        perPageSelect: false
                    },
                    dataset: {
                        perPageDefault: 50,
                    }
                });
            };
            initDynatable('#myTable');
        }
    )();

    $(function () {
        // Code JS
        $(".dynatable-sort-header").css("color", "white");
    });
</script>
</html>
