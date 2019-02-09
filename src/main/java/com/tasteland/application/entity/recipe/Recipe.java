package com.tasteland.application.entity.recipe;

import com.tasteland.application.entity.user.User;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "recipe")
public class Recipe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name="recipe_name")
    private String recipeName;
    @Column(name = "recipe_description")
    private String recipeDescription;
    @OneToOne
    @JoinColumn(name="food_category_id")
    private FoodCategory foodCategory;
    @Column(name = "preparation_time")
    private Integer preparationTime;
    @Column(name = "cooking_time")
    private Integer cookingTime;
    @Column(name = "publication_date")
    private final LocalDateTime publicationDate = LocalDateTime.now();
    @ManyToOne(optional = false)
    @JoinColumn(name="user_id")
    private User recipeAuthor;


    public Recipe(){}

    public Recipe(String recipeName, String recipeDescription, FoodCategory foodCategory, Integer preparationTime, Integer cookingTime, User recipeAuthor) {
        this.recipeName = recipeName;
        this.recipeDescription = recipeDescription;
        this.foodCategory = foodCategory;
        this.preparationTime = preparationTime;
        this.cookingTime = cookingTime;
        this.recipeAuthor = recipeAuthor;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

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

    public LocalDateTime getPublicationDate() {
        return publicationDate;
    }

    public User getRecipeAuthor() {
        return recipeAuthor;
    }

    public void setRecipeAuthor(User recipeAuthor) {
        this.recipeAuthor = recipeAuthor;
    }

    @Override
    public String toString() {
        return "Recipe{" +
                "id=" + id +
                ", recipeName='" + recipeName + '\'' +
                ", recipeDescription='" + recipeDescription + '\'' +
                ", foodCategory=" + foodCategory +
                ", preparationTime=" + preparationTime +
                ", cookingTime=" + cookingTime +
                ", publicationDate=" + publicationDate +
                ", recipeAuthor=" + recipeAuthor +
                '}';
    }
}


