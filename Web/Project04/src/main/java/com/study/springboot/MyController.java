package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

	@RequestMapping("/")
	public String root(Model model)
	{
		String str = "나상하";
		model.addAttribute("item", str);
		
		return "home"; 
	}
	
}
