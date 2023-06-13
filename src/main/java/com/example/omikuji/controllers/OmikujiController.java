package com.example.omikuji.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/omikuji")
public class OmikujiController {

    @GetMapping
    public String showForm() {
        return "omikuji.jsp";
    }

    @PostMapping("/process")
    public String processForm(String number, String city, String person, String endeavor, String livingThing, String niceMessage, HttpSession session) {
        session.setAttribute("number", number);
        session.setAttribute("city", city);
        session.setAttribute("person", person);
        session.setAttribute("endeavor", endeavor);
        session.setAttribute("livingThing", livingThing);
        session.setAttribute("niceMessage", niceMessage);
        return "redirect:/omikuji/show";
    }


    @GetMapping("/show")
    public String showFortune(HttpSession session, Model model) {
        String name = (String) session.getAttribute("name");
        String question = (String) session.getAttribute("question");
        String fortune = getFortune(); // Implement your own logic to generate a fortune

        model.addAttribute("name", name);
        model.addAttribute("question", question);
        model.addAttribute("fortune", fortune);

        return "show.jsp";
    }

    private String getFortune() {
        // Implement your own logic to generate a fortune
        return "This is your fortune.";
    }
}
