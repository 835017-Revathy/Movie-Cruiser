function edit() {
    var titleEdit = document.forms["editmovie"]["title"].value;
    var boxOffice = document.forms["editmovie"]["boxOffice"].value;
    var dateLaunch = document.forms["editmovie"]["dateofLaunch"].value;
    var genre = document.getElementById("genre");
    if (titleEdit == "") {
        alert("Title is required.");
        return false;
    } else if ((titleEdit.length < 2) || (titleEdit.length > 100)) {
        alert("Title should have 2 to 100 characters.");
        return false;
    } else if (boxOffice == "") {
        alert("Box Office is required.");
        return false;
    } else if (isNaN(boxOffice)) {
        alert("Box Office has to be a number.");
        return false;
    } else if (dateLaunch == "") {
        alert("Date of Launch is required.");
        return false;
    } else if (genre.value == "") {
        alert("Select one genre");
        return false;
    }
}