package kr.co.ezenac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViewController {
	/*
	 * 
	 * 해당클래스의 상단어노테이션이 @Controller일경우 아래 goHome()메서드의 리턴타입이 스트링이면 리턴된 값앞에 /WEB-INF/를
	 * 붙이고 뒤에다가 .jsp 를 붙인다!
	 */

	@GetMapping("/views/**")
	public void goPage() {
	}

}
