package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
 
@RestController
@RequestMapping("/demoo")

public class DemoSpring {
 
	@GetMapping
	public String getName() {
		return "Hello Jay";
	}
}