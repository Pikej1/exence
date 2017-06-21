package com.exence.zadanie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.exence.zadanie.model.Result;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(Model model) {
		model.addAttribute("result", new Result());
		return "welcome";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String result(@ModelAttribute("result") Result result) {
		return "result";
	}
	
}
