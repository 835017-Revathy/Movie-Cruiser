package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;

public class FavoriteDaoCollectionImplTest {
    static FavoriteDao favoriteDao = new FavoriteDaoCollectionImpl();

    public static void main(String[] args) {
        testAddFavorites();
        testGetAllFavorites();
        testRemoveFavorites();
        testGetAllFavorites();
    }

    public static void testAddFavorites() {
        System.out.println("Movies added into favorites");
        favoriteDao.addFavoritesById(1, 2); // 1 is userId & 2 is MovieId
        favoriteDao.addFavoritesById(1, 3); //// 1 is userId & 3 is MovieId
    }

    public static void testGetAllFavorites() {
        try {
            System.out.println("Retriving all the movies from the favorite");
            List<Movie> list = favoriteDao.getAllFavorites(1).getFavoriteList();
            System.out.printf("%-10s%-24s%-18s%-11s%-20s%-17s%s\n", "Id ", "Title", "Box Office",
                    "Active", "Date of Launch", "Genre", "Has Teaser");
            for (Movie movie : list) {
                System.out.println(movie);
            }
            System.out.println(
                    "No. of Favorites: " + favoriteDao.getAllFavorites(1).getNoOfFavorites());
        } catch (FavoriteEmptyException e) {
            System.err.println(e);
        }

    }

    public static void testRemoveFavorites() {
        System.out.println("Remove Favorite");
        favoriteDao.removeFavoritesById(1, 3);
    }

}
