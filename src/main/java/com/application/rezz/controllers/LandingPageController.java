package com.application.rezz.controllers;

import com.application.rezz.Greeting;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LandingPageController {
    @GetMapping("/hi")
    public String greeting(Model model) {
        model.addAttribute("shit", "Dumbass");
        model.addAttribute("greeting", new Greeting());
        return "home";
    }

    @PostMapping("/hi")
    public String greetingSubmit(@ModelAttribute Greeting greeting, Model model) {
        model.addAttribute("greeting", greeting);
        return "result";
    }
}
