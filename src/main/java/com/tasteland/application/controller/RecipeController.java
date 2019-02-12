package com.tasteland.application.controller;


import com.tasteland.application.entity.recipe.FoodCategory;
import com.tasteland.application.entity.recipe.Recipe;
import com.tasteland.application.entity.recipe.RecipeValidator;
import com.tasteland.application.entity.user.User;
import com.tasteland.application.entity.user.UserValidator;
import com.tasteland.application.service.RecipeService;
import com.tasteland.application.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.time.LocalDate;

@Controller
@RequestMapping("/recipe")
public class RecipeController {


    @Autowired
    private RecipeService recipeService;

    @Autowired
    private UserService userService;

    @InitBinder
    public void initRecipeRequest(WebDataBinder webDataBinder) {
        StringTrimmerEditor trimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, trimmerEditor);
    }


    @GetMapping("/showFavouriteRecipes")
    public String showFavouriteRecipes(Principal principal){


        User user = userService.findByUserName("Adm");
        FoodCategory foodCategory = recipeService.findCategoryByName("Breakfast");
        RecipeValidator recipe = new RecipeValidator();
        recipe.setRecipeName("MyTestRecipe");
        recipe.setRecipeDescription("It's a really tasty dish!");
        recipe.setRecipeAuthor(user);
        recipe.setPreparationTime(50);
        recipe.setCookingTime(80);
        recipe.setFoodCategory(foodCategory);
        recipeService.save(recipe);
        return "recipe-favourite";
    }


    @GetMapping("/showRecipeForm")

    public String showRecipeForm(Principal principal, Model model) {
//        String userName = principal.getName();
//        System.out.println(userName);
        model.addAttribute("date", LocalDate.now());
        model.addAttribute("userName", "John");
        model.addAttribute("recipe", new RecipeValidator());
        return "recipe-form";
    }

    @PostMapping("/processRecipeForm")
    public String processRecipeForm(@Valid @ModelAttribute UserValidator userValidator,
                                    BindingResult bindingResult, Model model){

        if(bindingResult.hasErrors()) {
            return "recipe-form";
        }
        return null;
    }

    @GetMapping("/showCard")
    public String showCard(){
        return "card";
    }
}
