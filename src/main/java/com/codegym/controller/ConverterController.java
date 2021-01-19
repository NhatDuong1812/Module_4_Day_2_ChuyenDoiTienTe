package com.codegym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/converter")
public class ConverterController {
    @GetMapping
    public String converter() {
        System.out.println("Spring Converter");
        return "index";
    }

    @PostMapping
    public String save(
            @RequestParam(name = "usd", required = true) double usd,
            @RequestParam(name = "vnd", required = true) double vnd,
            Model model) {
        double result = usd * vnd;
        model.addAttribute("result", result);
        return "index";
    }
}