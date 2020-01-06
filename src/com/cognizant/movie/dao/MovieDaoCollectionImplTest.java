package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

public class MovieDaoCollectionImplTest {
    static MovieDao movieDao = new MovieDaoCollectionImpl();

    public static void main(String[] args) {
        testGetMovieListAdmin();
        testGetMovieListCustomer();
        testModifyMovieList();
        testGetMovieListAdmin();
        testGetMovieById();
    }

    public static void testGetMovieListAdmin() {
        System.out.println("Admin Menu");
        List<Movie> movie = movieDao.getMovieListAdmin();
        System.out.printf("%-10s%-20s%-20s%-10s%-20s%-20s%s\n", "Id ", "Title", "Box Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        for (Movie movie1 : movie) {
            System.out.println(movie1);
        }
    }

    public static void testGetMovieListCustomer() {
        System.out.println("Customer View");
        List<Movie> movieItem = movieDao.getMovieListCustomer();
        System.out.printf("%-10s%-20s%-20s%-10s%-20s%-20s%s\n", "Id ", "Title", "Box Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        for (Movie movie2 : movieItem) {
            System.out.println(movie2);
        }
    }

    public static void testModifyMovieList() {
        System.out.println("Modify Movie List");
        Movie movieItem = new Movie(1, "Twilight", 2787965087L, true,
                DateUtil.convertToDate("15/03/2017"), "Romance", false);
        movieDao.modifyMovieList(movieItem);
    }

    public static void testGetMovieById() {
        System.out.println("Get Movie List");
        System.out.printf("%-10s%-20s%-20s%-10s%-20s%-20s%s\n", "Id ", "Title", "Box Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        Movie movieItem = movieDao.getMovieById(1);
        System.out.println(movieItem);
    }

}
