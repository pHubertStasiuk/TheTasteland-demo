package com.tasteland.application.entity.recipe;


import com.tasteland.application.entity.user.User;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


public class RecipeValidator {

    @NotNull(message = "is required")
    @Size(min = 1, message = "is required")
    private String recipeName;
    @NotNull(message = "is required")
    @Size(min = 1, message = "is required")
    private String recipeDescription;
    @NotNull(message = "is required")
    @Size(min = 1, message = "is required")
    private FoodCategory foodCategory;
    @NotNull(message = "is required")
    @Size(min = 1, message = "is required")
    private Integer preparationTime;
    @NotNull(message = "is required")
    @Size(min = 1, message = "is required")
    private Integer cookingTime;
    @NotNull(message = "is required")
    @Size(min = 1, message = "is required")
    private User recipeAuthor;

    public String getRecipeName() {
        return recipeName;
    }

    public void setRecipeName(String recipeName) {
        this.recipeName = recipeName;
    }

    public String getRecipeDescription() {
        return recipeDescription;
    }

    public void setRecipeDescription(String recipeDescription) {
        this.recipeDescription = recipeDescription;
    }

    public FoodCategory getFoodCategory() {
        return foodCategory;
    }

    public void setFoodCategory(FoodCategory foodCategory) {
        this.foodCategory = foodCategory;
    }

    public Integer getPreparationTime() {
        return preparationTime;
    }

    public void setPreparationTime(Integer preparationTime) {
        this.preparationTime = preparationTime;
    }

    public Integer getCookingTime() {
        return cookingTime;
    }

    public void setCookingTime(Integer cookingTime) {
        this.cookingTime = cookingTime;
    }

    public User getRecipeAuthor() {
        return recipeAuthor;
    }

    public void setRecipeAuthor(User recipeAuthor) {
        this.recipeAuthor = recipeAuthor;
    }
}


