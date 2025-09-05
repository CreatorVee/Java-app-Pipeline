package com.example;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping("/")  // This maps the root URL
    public String home() {
        return "Hello, World!";  // This message will be shown when you visit the root URL
    }
}
