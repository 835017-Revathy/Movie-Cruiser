<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Menu</title>

<link rel="stylesheet" type="text/css" href="styles/style.css" />
<link rel="icon" href="images/logo.png" />
</head>
<body>
    <header> Movie Cruiser <img src="images/logo.png" hspace="22" width="40" height="40">
    <nav> <a href="ShowMovieListCustomer">Movies</a> <a id="favorite" href="ShowFavorite">Favorites</a>
    </nav> </header>
    <h2>Movies</h2>
    <c:if test="${addFavoriteStatus==true }">
        <p id="favorite-status">
            <b>Movie Added to Favorites Sucessfully</b>
        </p>
    </c:if>
    <table id="movie-list">
        <col width="150px">
        <col width="110px">
        <col width="130px">
        <col width="100px">
        <col width="150px">
        <tr>
            <th align="left">Title</th>
            <th align="right">Box Office</th>
            <th align="center">Genre</th>
            <th align="center">Has Teaser</th>
            <th align="center">Action</th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${movie.getTitle()}</td>
                <td align="right"><f:formatNumber type="currency" groupingUsed="true"
                        minFractionDigits="0" value="${movie.getBoxOffice()}"></f:formatNumber></td>
                <td align="center">${movie.getGenre()}</td>
                <td align="center"><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="center"><a href="AddToFavorite?movieId=${movie.getMovieId()}">Add
                        To Favorite</td>
            </tr>
        </c:forEach>
    </table>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>