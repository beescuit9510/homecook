package kr.or.delivery.seller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DeliverySellerController {

	@RequestMapping(value = "/manageMarket.do")
	public String manageMarket()
	{
		return "delivery/seller/manageMarket";
	}
	
	@RequestMapping(value = "/addMarket.do")
	public String addMarket()
	{
		return "delivery/seller/addMarket";
	}
	
	@RequestMapping(value = "/manageMenu.do")
	public String manageMenu()
	{
		return "delivery/seller/manageMenu";
	}
	
}
