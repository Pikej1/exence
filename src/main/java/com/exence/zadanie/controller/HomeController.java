package com.exence.zadanie.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.exence.zadanie.model.Quote;
import com.exence.zadanie.model.Result;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(Model model) {
		model.addAttribute("result", new Result());
		return "welcome";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String result(@ModelAttribute("result") @Valid Result result, BindingResult bindingresult, Model model) {

		if(bindingresult.hasErrors())
			return "welcome";
		
		RestTemplate restTemplate = new RestTemplate();
		Quote quote = restTemplate.getForObject("http://gturnquist-quoters.cfapps.io/api/{param}", Quote.class, result.getValue());

		model.addAttribute("quote", quote);
		return "result";
	}
}
