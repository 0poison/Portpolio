package kr.co.ezenac.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.ezenac.beans.ContentBean;
import kr.co.ezenac.beans.PageBean;
import kr.co.ezenac.beans.UserBean;
import kr.co.ezenac.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardService;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@GetMapping("/main")
	public String main(@RequestParam("boardInfoIdx") int boardInfoIdx,
			@RequestParam(value = "page", defaultValue = "1") int page, Model model) {

		return "board/main";
	}

	@GetMapping("/read")
	public String read(@RequestParam("boardInfoIdx") int boardInfoIdx, @RequestParam("contentIdx") int contentIdx,
			@RequestParam("page") int page, Model model) {

		model.addAttribute("boardInfoIdx", boardInfoIdx);
		model.addAttribute("contentIdx", contentIdx);

		model.addAttribute("loginUserBean", loginUserBean);
		model.addAttribute("page", page);

		return "board/read";
	}

	@GetMapping("/write")
	public String write(@ModelAttribute("writeContentBean") ContentBean writeContentBean,
			@RequestParam("boardInfoIdx") int boardInfoIdx) {

		writeContentBean.setContentBoardIdx(boardInfoIdx);

		return "board/write";
	}

	@PostMapping("/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeContentBean") ContentBean writeContentBean,
			BindingResult result) {
		if (result.hasErrors()) {
			return "board/write";
		}

		boardService.addContentInfo(writeContentBean);

		return "board/write_success";
	}

	@GetMapping("/modify")
	public String modify(@RequestParam("boardInfoIdx") int boardInfoIdx, @RequestParam("contentIdx") int contentIdx,
			@ModelAttribute("modifyContentBean") ContentBean modifyContentBean, @RequestParam("page") int page,
			Model model) {

		model.addAttribute("boardInfoIdx", boardInfoIdx);
		model.addAttribute("contentIdx", contentIdx);
		model.addAttribute("page", page);

		modifyContentBean.setContentBoardIdx(boardInfoIdx);
		modifyContentBean.setContentIdx(contentIdx);

		return "board/modify";
	}

	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyContentBean") ContentBean modifyContentBean,
			BindingResult result, @RequestParam("page") int page, Model model) {

		model.addAttribute("page", page);

		if (result.hasErrors()) {
			return "board/modify";
		}

		boardService.modifyContentInfo(modifyContentBean);

		return "board/modify_success";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("boardInfoIdx") int boardInfoIdx, @RequestParam("contentIdx") int contentIdx,
			Model model) {

		boardService.deleteContentInfo(contentIdx);

		model.addAttribute("boardInfoIdx", boardInfoIdx);

		return "board/delete";
	}

	@GetMapping("/not_writer")
	public String not_writer() {
		return "board/not_writer";
	}

}
