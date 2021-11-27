package kr.or.zipcoock.cart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {
	@RequestMapping(value="/cart.do")
	public String callCartFrm()
	{
		return "zipcoock/cart/cartFrm";
	}

}
