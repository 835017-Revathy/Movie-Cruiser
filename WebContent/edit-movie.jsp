<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Movie</title>
<script type="text/javascript" src="js/script.js"></script>
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<link rel="icon" href="images/logo.png" />
</head>
<body>
    <c:set var="movie" value="${movie}"></c:set>
    <header> Movie Cruiser <img src="images/logo.png" hspace="22" width="40" height="40">
    <nav> <a href="ShowMovieListAdmin">Movies</a> </nav> </header>
    <h3>Edit Movie</h3>
    <form name="movieForm" action="EditMovie" method="post" autocomplete="off"
        onsubmit="return validateMovieForm()">
        <input type="hidden" name="id" value="${movie.getMovieId()}" />
        <table id="edit-movie">
            <tr>
                <td><label for="title"><b>Title</b></label></td>
            </tr>
            <tr>
                <td><input type="text" name="title" id="title" value="${movie.getTitle()}"
                    size="75"></td>
            </tr>
        </table>
        <table id="edit-movie1">
            <tr>
                <td><label for="boxOffice"><b>Gross ($)</b></label></td>
                <td><label for="active"><b>Active</b></label></td>
                <td><label for="dateofLaunch"><b>Date of Launch</b></label></td>
                <td><label for="genre"><b>Genre</b></label></td>
            </tr>
            <tr>
                <td align="right"><input type="text" name="boxOffice" id="boxOffice"
                    value="${movie.getBoxOffice()}" /></td>
                <td align="right"><c:choose>
                        <c:when test="${movie.isActive()==true}">
                            <input type="radio" name="active" id="active" value="Yes"
                                checked="checked">Yes
                            <input type="radio" name="active" id="active" value="No">No
                        </c:when>
                        <c:otherwise>
                            <input type="radio" name="active" id="active" value="Yes">Yes
                    <input type="radio" name="active" id="active" value="No" checked="checked">No
                        </c:otherwise>
                    </c:choose></td>
                <td align="right"><f:formatDate value="${movie.getDateOfLaunch()}"
                        var="dateOfLaunch" pattern="dd/MM/yyyy"></f:formatDate><input type="text"
                    name="dateOfLaunch" id="dateOfLaunch" value="${dateOfLaunch}"></td>
                <td><select name="genre" id="genre">
                        <option value="${movie.getGenre()}">${movie.getGenre()}</option>
                        <option value="ScienceFiction">Science Fiction</option>
                        <option value="Superhero">Superhero</option>
                        <option value="Romance">Romance</option>
                        <option value="Comedy">Comedy</option>
                        <option value="Thriller">Thriller</option>
                        <option value="Adventure">Adventure</option>
                </select></td>
            </tr>
            <tr>
                <td><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">
                            <input type="checkbox" name="hasTeaser" id="hasTeaser" value="Yes"
                                checked="checked" />
                        </c:when>
                        <c:otherwise>
                            <input type="checkbox" name="hasTeaser" id="hasTeaser" value="No" />
                        </c:otherwise>
                    </c:choose></td>
            </tr>
            <tr>
                <td><input type="submit" value="Save" id="submit"></td>
            </tr>
        </table>
    </form>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>