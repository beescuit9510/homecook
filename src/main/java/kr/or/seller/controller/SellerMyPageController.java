package kr.or.seller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SellerMyPageController {

	@RequestMapping(value = "/sellerMypage.do")
	public String sellerMypage()
	{
		return "zipcoock/sellerMypage/SellerMypage";
	}
	
}
