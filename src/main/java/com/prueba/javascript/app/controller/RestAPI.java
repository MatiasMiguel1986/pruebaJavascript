package com.prueba.javascript.app.controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.prueba.javascript.app.model.Pelicula;
 
 
@RestController
@RequestMapping("/form/api/customer")
public class RestAPI {
 
	@PostMapping(value = "/save")
	public String postCustomer(@RequestBody Pelicula pelicula) {
		
//		String fullName = customer.getFirstname() + " " + customer.getLastname();
		
		return "Hello " + "matias" + "!" + " (Message from SpringBoot Server)";
	}
}