package kr.or.delivery.seller.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DeliverySellerController {

	@RequestMapping(value = "/manageMarket.do")
	public String deliverySeller()
	{
		return "delivery/seller/manageMarket";
	}
	
}
