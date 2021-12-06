package kr.or.seller.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.seller.model.service.SellerService;
import kr.or.table.model.vo.BusinessSellerInfo;
import kr.or.table.model.vo.Member;

@Controller
public class SellerController {
@Autowired
private SellerService service;
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
	@RequestMapping(value = "statistics.do")
	public String statistics() {
	return "zipcoock/seller/statistics";
}
	@RequestMapping(value="/sellerInfoFrm.do")
	public String sellerInfoFrm(Member member, Model model, HttpSession session) {
		Member m = (Member)session.getAttribute("m");
		BusinessSellerInfo bsi = service.selectOneSmember(m.getMemberNo()); 
		 model.addAttribute("bsi", bsi);
		 System.out.println(bsi);
		 
		return "zipcoock/seller/mypage/sellerInfoFrm";
	}
	
	
}
