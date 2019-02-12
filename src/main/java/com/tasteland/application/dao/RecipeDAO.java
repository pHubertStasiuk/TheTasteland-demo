package com.tasteland.application.dao;

import com.tasteland.application.entity.recipe.FoodCategory;
import com.tasteland.application.entity.recipe.Recipe;

public interface RecipeDAO {

    Recipe findRecipeByName(String theRecipeName);

    FoodCategory findCategoryByName(String categoryName);

    void save(Recipe recipe);

    void save(FoodCategory category);
}
