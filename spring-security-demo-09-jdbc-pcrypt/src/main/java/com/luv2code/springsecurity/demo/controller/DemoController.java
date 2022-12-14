package com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {
	
	
	@GetMapping("/")
	public String showHome()
	{
		
		
		return "home";
	}
	
	//add request mapping for /leaders
	
	@GetMapping("/leaders")
	public String showLeadrs()
	{
		
		return "leaders";
	}
	
	@GetMapping("/systems")
	public String showSystems()
	{
		
		return "systems";
	}
	@GetMapping("access-denied")
	public String showAccessDenied()
	{
		
		return "access-denied";
	}

}
