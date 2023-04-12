package org.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello-world")
public class HelloWorldController{
	
	@GetMapping
	public String helloWorld() {
		return "hello world!";
	}
	@GetMapping("/bsm")
	public String bsm() {
		return "Mentalidade de crescimento\n"+"persistencia\n"+"responsabilidade pessoal\n"+"comunicação\n"+"orientação ao detalhe\n"+"proatividade\n"+"trabalho em equipe\n";
	}
	@GetMapping("/objAprendizagem")
	public String objAprendizagem() {
		return "aprender mySQL\n"+"aprender spring\n";
	}
}
