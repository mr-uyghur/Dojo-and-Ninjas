package com.ali.DojoAndNinjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ali.DojoAndNinjas.models.Dojo;
import com.ali.DojoAndNinjas.models.Ninja;
import com.ali.DojoAndNinjas.services.DojoService;
import com.ali.DojoAndNinjas.services.NinjaService;



@Controller
public class MainController {
	
	@Autowired
	private DojoService dojoService;
	
	@Autowired
	private NinjaService ninjaService;
	
	@GetMapping("/")
	public String allDojos( Model model) {
		model.addAttribute("dojos", dojoService.allDojos());
		return "index.jsp";
	}

	@GetMapping("createDojo")
	public String createPage ( @ModelAttribute("dojo") Dojo dojo) {
		return "newdojo.jsp";
	}
	
	@PostMapping("/createDojo")
	public String createDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "newDojo.jsp";
		}
		dojoService.save(dojo);
		return "redirect:/";
	}
	
	@GetMapping("createNinja")
	public String createNinjaPage ( @ModelAttribute("ninja") Ninja ninja, Model model) {
		model.addAttribute("dojos", dojoService.allDojos());
		return "newNinjas.jsp";
	}
	
	@PostMapping("/createNinja")
	public String createNinja( @Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {
		if(result.hasErrors()) {
			return "newNinjas.jsp";
		} 
		ninjaService.save(ninja);
		return "redirect:/";
	}
	
	@RequestMapping("dojos/{id}")
	public String showDojos( @PathVariable("id") Long id, Model model) {
//		model.addAttribute("dojos", dojoService.findById(id));
		Dojo dojo = dojoService.findById(id);
		model.addAttribute("dojo", dojo);
		return "dojos.jsp";
	}
	

	

	
	
}
