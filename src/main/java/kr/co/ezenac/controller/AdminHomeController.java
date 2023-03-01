package kr.co.ezenac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminHomeController {

	@GetMapping(value = "/admin")
	public String home() {
		return "redirect:/admin/login";

	}
}
