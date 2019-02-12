package com.tasteland.application.service;

import com.tasteland.application.entity.recipe.FoodCategory;
import com.tasteland.application.entity.recipe.Recipe;
import com.tasteland.application.entity.recipe.RecipeValidator;

public interface RecipeService {

    Recipe findRecipeByName(String theRecipeName);
    FoodCategory findCategoryByName(String categoryName);
    void save(RecipeValidator recipe);
    void save(FoodCategory category);
}
