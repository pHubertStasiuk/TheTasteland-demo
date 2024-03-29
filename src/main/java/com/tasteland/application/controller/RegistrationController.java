package com.tasteland.application.controller;


import com.tasteland.application.entity.user.User;
import com.tasteland.application.entity.user.UserValidator;
import com.tasteland.application.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.logging.Logger;

@Controller
@RequestMapping("/register")
public class RegistrationController {
	
    @Autowired
    private UserService userService;
	
    private Logger logger = Logger.getLogger(getClass().getName());
    
	@InitBinder
	public void initUserRequest(WebDataBinder dataBinder) {
		
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}	
	
	@GetMapping("/showRegistrationForm")
	public String showMyLoginPage(Model theModel) {
		
		theModel.addAttribute("user", new UserValidator());
		
		return "registration-form";
	}

	@PostMapping("/processRegistrationForm")
	public String processRegistrationForm(
				@Valid @ModelAttribute("user") UserValidator user,
				BindingResult theBindingResult, 
				Model theModel) {
		
		String userName = user.getUserName();
		logger.info("Processing registration form for: " + userName);
		// form validation
		 if (theBindingResult.hasErrors()){
			 return "registration";
	        }

		// check the database if user already exists
        User existing = userService.findByUserName(userName);
        if (existing != null){
        	theModel.addAttribute("user", new UserValidator());
			theModel.addAttribute("registrationError", "User name already exists.");

			logger.warning("User name already exists.");
        	return "registration";
        }
     // create user account        						
        userService.save(user);
        logger.info("Successfully created user: " + userName);
        
        return "registration-confirmation";		
	}
}
