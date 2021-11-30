package kr.or.delivery.purchase.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PurchaseController {
	
	@RequestMapping(value="zcdMain.do")
	public String zcdMain() {
		return "delievery/zcdMain";
	}
}
