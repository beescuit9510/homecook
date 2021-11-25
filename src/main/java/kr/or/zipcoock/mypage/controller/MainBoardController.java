package kr.or.zipcoock.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainBoardController {
	@RequestMapping(value = "/mypage.do")
	public String call_MainPage()
	{
		return "zipcoock/mypage/receipt";
	}

}
