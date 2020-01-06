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
        System.out.println("Products added into cart");
        favoriteDao.addFavoritesById(1, 2); // 1 is userId & 2 is MenuItemid
        favoriteDao.addFavoritesById(1, 3); //// 1 is userId & 3 is MenuItemid
    }

    public static void testGetAllFavorites() {
        try {
            System.out.println("Retriving all the items from the cart");
            List<Movie> list = favoriteDao.getAllFavorites(1).getFavoriteList();
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
        System.out.println("Remove Cart");
        favoriteDao.removeFavoritesById(1, 3);
    }

}
