package kr.or.seller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SellerController {

	@RequestMapping(value = "/sellerMypage.do")
	public String sellerMypage()
	{
		return "zipcoock/seller/sellerMypage";
	}
	@RequestMapping(value = "productMgr.do")
	public String productMgr()
	{
		return "zipcoock/seller/productMgr";
	}
	@RequestMapping(value = "sellerInfo.do")
	public String sellerInfo()
	{
		return "zipcoock/seller/sellerInfo";
	}
	@RequestMapping(value = "sellerQNA.do")
	public String sellerQNA()
	{
		return "zipcoock/seller/sellerQNA";
	}
	
}
