package com.tasteland.application.entity.recipe;


import javax.persistence.*;

@Entity
@Table(name = "food_category")
public class FoodCategory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "food_category_name")
    private String foodCategory;

    public FoodCategory(){}

    public FoodCategory(String foodCategory) {
        this.foodCategory = foodCategory;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFoodCategory() {
        return foodCategory;
    }

    public void setFoodCategory(String foodCategory) {
        this.foodCategory = foodCategory;
    }
}
