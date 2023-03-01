package kr.co.ezenac.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.ibatis.logging.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.ezenac.beans.UserBean;
import kr.co.ezenac.service.UserService;
import kr.co.ezenac.validator.UserValidator;
import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping({ "/user", "/account" })
@Log4j2
public class UserController {

	@Autowired
	private UserService userService;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@GetMapping("/login")
	public String login(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			@RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {

		model.addAttribute("fail", fail);

		return "user/users/login";
	}

	@PostMapping("/users/login_pro")
	public String loginPro(@Valid @ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			BindingResult result) {
		
//		userService.confirmUser(tempLoginUserBean.getUserPw(), loginUserBean.getUserPw());

		if (result.hasErrors()) {

			return "user/users/login";
		}
		userService.getLoginUserInfo(tempLoginUserBean);

		if (loginUserBean.isUserLogin()) {
			log.info("아이디={}", loginUserBean.getUserId());
			return "user/users/login_success";

		} else {

			return "user/users/login_fail";
		}
	}

	@GetMapping("/join")
	public String join(@ModelAttribute("joinUserBean") UserBean joinUserBean) {

		return "user/users/join";
	}

	@PostMapping("/join_pro")
	public String joinPro(@Valid @ModelAttribute("joinUserBean") UserBean joinUserBean, BindingResult result) {

		if (result.hasErrors()) {

			return "user/users/join";
		}

		userService.addUserInfo(joinUserBean);

		return "user/users/join_success";
	}

	@GetMapping("/modify")
	public String modify(@ModelAttribute("modifyUserBean") UserBean modifyUserBean) {

		userService.getModifyUserInfo(modifyUserBean);

		return "user/users/modify";
	}

	@PostMapping("/modify_pro")
	public String modifyPro(@Valid @ModelAttribute("modifyUserBean") UserBean modifyUserBean, BindingResult result) {

		if (result.hasErrors()) {

			return "user/users/modify";
		}

		userService.modifyUserInfo(modifyUserBean);

		return "user/users/modify_success";
	}

	@GetMapping("/logout")
	public String logout() {

		loginUserBean.setUserLogin(false);

		return "user/users/logout";
	}

	@GetMapping("/not_login")
	public String notLogin() {

		return "user/users/not_login";
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {

		UserValidator validator1 = new UserValidator();
		binder.addValidators(validator1);
	}

	@GetMapping("/search_id")
	public String searchId(@ModelAttribute("SearchUserBean") UserBean serchBean) {

		return "user/users/account/search_id";
	}

	@GetMapping("/search_pw")
	public String searchPw(@ModelAttribute("SearchUserBean") UserBean searchBean) {

		return "user/users/account/search_pw";
	}

	@PostMapping("/search_result_id")
	public String searchResultId(HttpServletRequest request, Model model,
			@RequestParam(required = true, value = "userName") String userName,
			@RequestParam(required = true, value = "userPw") String userPw, UserBean searchBean) {

//		try {
		searchBean.setUserName(userName);
		searchBean.setUserPw(userPw);
		UserBean searchId = userService.idSearch(searchBean);
		model.addAttribute("searchBean", searchId);

//		} catch (Exception e) {
//			System.out.println(e.toString());
//			model.addAttribute("msg", "오류가 발생되었습니다.");
//		}

		return "user/users/account/search_result_id";
	}

	@PostMapping("/search_result_pw")
	public String searchResultPw(HttpServletRequest request, Model model,
			@RequestParam(required = true, value = "userId") String userId,
			@RequestParam(required = true, value = "userName") String userName, UserBean searchBean) {

		searchBean.setUserId(userId);
		searchBean.setUserName(userName);
		UserBean searchPw = userService.pwSearch(searchBean);

		model.addAttribute("searchBean", searchPw);

		return "user/users/account/search_result_pw";
	}

	@GetMapping("/delete")
	public String deleteUser(@ModelAttribute("deleteBean") UserBean deleteBean,
			@RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {

		model.addAttribute("fail", fail);

		userService.getDeleteUserId(deleteBean);

		return "user/users/delete";
	}

	@PostMapping("/delete_success")
	public String deleteSuccess(@Valid @ModelAttribute("deleteBean") UserBean deleteBean, BindingResult result) {

		if (result.hasErrors()) {

			return "user/users/delete";
		}

		boolean isDelete = userService.deleteUser(deleteBean);

		if (isDelete) {

			loginUserBean.setUserLogin(false);

			return "user/users/delete_success";

		} else {

			return "user/users/delete_fail";
		}
	}

	@GetMapping("/myPage")
	public String myPage() {

		return "user/users/myPage";
	}

	@GetMapping("/directions")
	public String directions() {

		return "user/users/directions";
	}

//	@PostMapping("/delete-user")
//	public @ResponseBody boolean delete (@RequestBody UserBean deleteBean) {
//		
//		return userService.deleteUser(deleteBean);
//	}

}
