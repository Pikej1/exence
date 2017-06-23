package com.exence.zadanie.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.exence.zadanie.model.Result;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(Model model) {
		model.addAttribute("result", new Result());
		return "welcome";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String result(@ModelAttribute("result") @Valid Result result, BindingResult bindingresult) {
		//return "result";
		if(bindingresult.hasErrors())
			return "welcome";
		
		/*RestTemplate restTemplate = new RestTemplate();
		
		return "result";*/
		return "redirect:https://gturnquist-quoters.cfapps.io/api/" + result.getValue();
		
		//return "redirect:/" + result.getValue();
	}
	
	/*@RequestMapping(method = RequestMethod.POST)
	public void result(@ModelAttribute("result") Result result) {
		getRest(result.getValue());
	}*/
	
	
	//POMOC DO OGARNIĘCIA TEGO CAŁEGO BAŁAGANU
	//@RequestMapping(value = "https://gturnquist-quoters.cfapps.io/api/{param}", method = RequestMethod.GET)
	@RequestMapping(value = "/{param}", method = RequestMethod.GET)
	public String getRest(@PathVariable String param, Model model){
		model.addAttribute("result", param);
		return "result";
	}
	
}
