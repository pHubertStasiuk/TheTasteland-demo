package com.tasteland.application.service;

import com.tasteland.application.dao.RecipeDAO;
import com.tasteland.application.entity.recipe.FoodCategory;
import com.tasteland.application.entity.recipe.Recipe;
import com.tasteland.application.entity.recipe.RecipeValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class RecipeServiceImpl implements RecipeService {


    @Autowired
    private RecipeDAO recipeDAO;

    @Override
    @Transactional
    public Recipe findRecipeByName(String theRecipeName) {
        return recipeDAO.findRecipeByName(theRecipeName);
    }


    @Override
    @Transactional
    public FoodCategory findCategoryByName(String categoryName) {
        return recipeDAO.findCategoryByName(categoryName);
    }

    @Override
    @Transactional
    public void save(RecipeValidator recipeValidator) {
        Recipe recipe = new Recipe();
        recipe.setRecipeName(recipeValidator.getRecipeName());
        recipe.setRecipeDescription(recipeValidator.getRecipeDescription());
        recipe.setCookingTime(recipe.getCookingTime());
        recipe.setFoodCategory(recipeValidator.getFoodCategory());
        recipe.setPreparationTime(recipeValidator.getPreparationTime());
        recipe.setRecipeAuthor(recipeValidator.getRecipeAuthor());
        recipeDAO.save(recipe);
    }

    @Override
    @Transactional
    public void save(FoodCategory category) {
        recipeDAO.save(category);
    }
}
