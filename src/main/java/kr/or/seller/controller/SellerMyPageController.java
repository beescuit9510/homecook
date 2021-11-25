package kr.or.seller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SellerMyPageController {

	@RequestMapping(value = "/sellerMypage.do")
	public String sellerMypage()
	{
		return "zipcoock/sellerMypage/sellerMypage";
	}
	@RequestMapping(value = "productMgr.do")
	public String productMgr()
	{
		return "zipcoock/sellerMypage/productMgr";
	}
	@RequestMapping(value = "sellerInfo.do")
	public String sellerInfo()
	{
		return "zipcoock/sellerMypage/sellerInfo";
	}
	@RequestMapping(value = "sellerQNA.do")
	public String sellerQNA()
	{
		return "zipcoock/sellerMypage/sellerQNA";
	}
	
}
