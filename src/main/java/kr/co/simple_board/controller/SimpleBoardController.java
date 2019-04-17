package kr.co.simple_board.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SimpleBoardController {

	@RequestMapping(value="/index.do",method=GET)
	public String simpleBoard() {
		return "board";
	}
}
