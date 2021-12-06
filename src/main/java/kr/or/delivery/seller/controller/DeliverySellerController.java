package kr.or.delivery.seller.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.delivery.seller.model.service.DeliverySellerService;
import kr.or.table.model.vo.Member;

@Controller
public class DeliverySellerController {

	@Autowired
	private DeliverySellerService service;
	
	@RequestMapping(value="/zcdSellerloginFrm.do")
	public String zcdSellerloginFrm() {
		return "delivery/seller/zcdSellerLoginFrm";
	}
	
	@RequestMapping(value="/zcdSellerlogin.do")
	public String zcdSellerlogin(Member member, HttpSession session, Model model) {
		Member m = service.selectOneMember(member);
		if(m != null) {
			session.setAttribute("m", m);
			model.addAttribute("msg","로그인 성공");
			model.addAttribute("loc", "/manageMarketFrm.do");
		}else {
			model.addAttribute("msg","아이디 또는 비밀번호를 확인하세요");
			model.addAttribute("loc", "/");
		}
		return "zipcoock/common/msg";
	}
	
	@RequestMapping(value = "/manageMarketFrm.do")
	public String manageMarketFrm()
	{
		return "delivery/seller/manageMarketFrm";
	}
	
	@RequestMapping(value = "/addMarketFrm.do")
	public String addMarketFrm()
	{
		return "delivery/seller/addMarketFrm";
	}
	
	@RequestMapping(value = "/manageMenuFrm.do")
	public String manageMenuFrm()
	{
		return "delivery/seller/manageMenuFrm";
	}
	
}
