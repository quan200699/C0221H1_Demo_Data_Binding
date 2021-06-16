package com.codegym.controller;

import com.codegym.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthController {
    @GetMapping("/register")
    public String showRegisterForm(Model model){
        model.addAttribute("user", new User());
        return "index";
    }

    @PostMapping("/register")
    public ModelAndView register(@ModelAttribute(name = "user") User user){
        ModelAndView modelAndView = new ModelAndView("result");
        modelAndView.addObject("user", user);
        return modelAndView;
    }
}
