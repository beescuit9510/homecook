package kr.or.zipcoock.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainBoardController {
	@RequestMapping(value = "/mainboard.do")
	public String call_MainPage()
	{
		return "zipcoock/board/mainboard";
	}

}
