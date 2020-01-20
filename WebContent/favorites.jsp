<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Favorites</title>

<link rel="stylesheet" type="text/css" href="styles/style.css" />
<link rel="icon" href="images/logo.png" />
</head>
<body>
    <header> Movie Cruiser<img src="images/logo.png" hspace="22" width="40" height="40">
    <nav> <a href="ShowMovieListCustomer">Movies</a> <a id="favorite" href="ShowFavorite">Favorites</a>
    </nav> </header>
    <h1 id="heading">Favorites</h1>
    <c:if test="${removeFavoriteStatus==true }">
        <p id="favorite-status" align="center">
            <b>Movies removed from favorites sucessfully</b>
        </p>
    </c:if>
    <table id="favorite-menu">
        <col width="170px"/>
        <tr>
            <th align="left">Title</th>
            <th align="right">Box Office</th>
            <th align="center">Genre</th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${movie.getTitle()}</td>
                <td align="right"><f:formatNumber type="currency" minFractionDigits="0"
                        value="${movie.getBoxOffice()}"></f:formatNumber></td>
                <td align="center">${movie.getGenre()}</td>
                <td align="center"><a href="RemoveFavorite?movieId=${movie.getMovieId()}">Delete
                </a></td>
            </tr>
        </c:forEach>
        <tr>
            <td><b>No.Of Favorites:</b> &nbsp; ${favorite.getNoOfFavorites()}</td>
        </tr>
    </table>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>