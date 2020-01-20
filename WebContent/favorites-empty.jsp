<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Favorites Empty</title>

<link rel="stylesheet" type="text/css" href="styles/style.css" />
<link rel="icon" href="images/logo.png" />
</head>
<body>
    <header> Movie Cruiser<img src="images/logo.png" hspace="22" width="40" height="40">
    <nav> <a href="ShowMovieListCustomer">Movies</a> <a id="favorite" href="ShowFavorite">Favorites</a>
    </nav> </header>
    <h1 id="heading">
        <b>Favorites</b>
    </h1>
    <p id="favorite-empty">
        <b>No items in Favorites. Use 'Add to Favorite' option in</b> <a
            href="ShowMovieListCustomer"> Movie List</a><b>.</b>
    </p>
    <footer> Copyright &copy; 2019 </footer>
</body>
</html>