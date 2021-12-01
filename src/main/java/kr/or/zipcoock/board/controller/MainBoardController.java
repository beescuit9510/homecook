package kr.or.zipcoock.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainBoardController {
	@RequestMapping(value = "/mainboard.do")
	public String callMainboard()
	{
		return "zipcoock/board/mainboard";
	}
	@RequestMapping(value = "/mainboardView.do")
	public String callMainboarView()
	{
		return "zipcoock/board/mainboardView";
	}

}
