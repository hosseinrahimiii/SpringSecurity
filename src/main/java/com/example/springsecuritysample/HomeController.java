package com.example.springsecuritysample;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String hello() {
        return "home";
    }

    @GetMapping("/managers")
    public String managers() {
        return "managers";
    }

    @GetMapping("/systems")
    public String systems() {
        return "systems";
    }
}
