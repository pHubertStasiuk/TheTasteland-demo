package com.tasteland.application.dao;

import com.tasteland.application.entity.recipe.FoodCategory;
import com.tasteland.application.entity.recipe.Recipe;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RecipeDAOImpl implements RecipeDAO {


    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public Recipe findRecipeByName(String theRecipeName) {
        Session session = sessionFactory.getCurrentSession();
        Query<Recipe> query = session.createQuery("from recipe where recipe_name=:recipeName", Recipe.class);
        query.setParameter("recipeName", theRecipeName);
        Recipe recipe = null;
        try {
            recipe = query.getSingleResult();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return recipe;
    }

    @Override
    public FoodCategory findCategoryByName(String categoryName) {
        Session session = sessionFactory.getCurrentSession();
        Query<FoodCategory> query = session.createQuery("from food_category where food_category_name=:categoryName", FoodCategory.class);
        query.setParameter("categoryName", categoryName);
        FoodCategory foodCategory = null;
        try {
            foodCategory = query.getSingleResult();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return foodCategory;
    }

    @Override
    public void save(Recipe recipe) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(recipe);
    }

    @Override
    public void save(FoodCategory category) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(category);
    }
}
