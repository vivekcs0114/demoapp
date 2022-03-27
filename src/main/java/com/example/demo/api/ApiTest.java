package com.example.demo.api;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiTest {
	@Value("${mydnsname}")
	public String myDnsName;

	@GetMapping("/hello")
	public String sayHello() {
		return "Hello, " + myDnsName;
	}

}
