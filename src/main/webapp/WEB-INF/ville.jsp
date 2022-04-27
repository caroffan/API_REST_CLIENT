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
    <title>City</title>

</head>
<body class="bg-gray-100">
<%@include file="entete.jsp" %>

<main class="py-4 font-mono">
    <form method="post" class="w-full h-[80vh] flex flex-col justify-around items-center ">
        <label>nom Commune :
            <input type="text" name="nomCommune" value="${city.nomCommune}" class="w-52 border-2 border-teal-500 h-10 rounded-md">
        </label>
        <label>code Postale :
            <input type="text" name="codePostal" value="${city.codePostal}" class="w-52 border-2 border-teal-500 h-10 rounded-md">
        </label>
        <label>Libelle Acheminement :
            <input type="text" name="libelleAcheminement" value="${city.libelleAcheminement}" class="w-52 border-2 border-teal-500 h-10 rounded-md">
        </label>
        <label>Ligne 5 :
            <input type="text" name="ligne5" value="${city.ligne5}" class="w-52 border-2 border-teal-500 h-10 rounded-md">
        </label>
        <label>latitude :
            <input type="text" name="latitude" value="${city.latitude}" class="w-52 border-2 border-teal-500 h-10 rounded-md">
        </label>
        <label>longitude :
            <input type="text" name="longitude" value="${city.longitude}" class="w-52 border-2 border-teal-500 h-10 rounded-md">
        </label>
        <input value="Send" type="submit" class="my-4  h-10 w-52 border-2 border-teal-500 hover:border-teal-600 bg-teal-500 hover:bg-teal-600 rounded-md ">
    </form>
</main>

</body>
</html>
