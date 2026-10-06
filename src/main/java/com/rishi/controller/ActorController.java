package com.rishi.controller;

import org.hibernate.annotations.DialectOverride.SQLDelete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rishi.model.Actor;
import com.rishi.service.IActorMgmtService;

@Controller

public class ActorController {
	
	@Autowired
	private IActorMgmtService service;
	
	
	@GetMapping("/")
	public String showHome() {
		return "home1";

	}
	
	@GetMapping("/report")
	public String showActorreport(Model model) {
		model.addAttribute("actorList",service.getAllActor());
		
		return "actor_report";
	}
	
@GetMapping("/register")
	public String showActorForm(
			@ModelAttribute("actor") Actor actor) {
		return "register_actor";
	}
	
	@PostMapping("/register")
	public String saveActor(@ModelAttribute ("actor") Actor actor,  Model model) {
		String msg=service.registerActor(actor);
		
		model.addAttribute("resultmsg",msg);
		return "register_actor";
	}
	
	@GetMapping("/edit")
	public String editActor(
			@RequestParam("id") Integer id,
			@ModelAttribute("actor") Actor actor) {
		
		Actor act=service.getActorById(id);
		
		actor.setActid(act.getActid());
		
		actor.setActname(act.getActname());
		actor.setMovieName(act.getMovieName());
		
		actor.setRemueration(act.getRemueration());
		actor.setCategory(act.getCategory());
		return "register_actor";
	
		
	}
	@GetMapping("/delete")
	public String deleteActor(@RequestParam("id")Integer id) {
		service.deleteActor(id);
		
		return "redirect:/report";
	
	
		
	}
			
			
			
	
	

}
