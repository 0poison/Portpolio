package kr.co.ezenac.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import kr.co.ezenac.service.UserService;

@RestController
public class RestApiController {

	@Autowired
	private UserService userService;

	@GetMapping("/user/checkUserIdExist/{userId}")
	public String checkUserIdExist(@PathVariable String userId) {

		boolean chk = userService.checkuserIdExist(userId);

		return chk + "";
	}
}
