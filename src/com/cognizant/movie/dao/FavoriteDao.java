package com.cognizant.movie.dao;

import com.cognizant.movie.model.Favorite;

public interface FavoriteDao {
    public void addFavoritesById(long userId, long movieId);

    public Favorite getAllFavorites(long userId) throws FavoriteEmptyException;

    public void removeFavoritesById(long userId, long movieId);

}
