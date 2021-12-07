package kr.or.seller.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.seller.model.service.SellerService;
import kr.or.table.model.vo.BusinessSellerInfo;
import kr.or.table.model.vo.Member;
import kr.or.table.model.vo.PwChangeVO;

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
	
	@RequestMapping(value="/zipsellerMypage.do")
	public String sellerMypage(Member member, Model model, HttpSession session) {
		Member m = (Member)session.getAttribute("m");
		
		BusinessSellerInfo bsi = service.selectOneSmember(m.getMemberNo());
		String email = bsi.getEmail();
				String[] useremail = email.split("@");
		 model.addAttribute("bsi", bsi);
		 model.addAttribute("email1", useremail[0]);
		 model.addAttribute("email2", useremail[1]);
		 
		return "zipcoock/seller/mypage/mypage";
	}
	@RequestMapping(value="/updateSellerMember.do")
	public String updateSellerMember(BusinessSellerInfo businessSellerInfo, Model model, HttpSession session, String email1, String email2) {
		businessSellerInfo.setEmail(email1 + "@" + email2);
		System.out.println(businessSellerInfo);
		int result = service.updateSellerMember(businessSellerInfo);
		
		System.out.println(result);
		 if(result>0) {
 			 model.addAttribute("msg","회원정보수정성공");
 		 }else {
 			 model.addAttribute("msg","회원정보수정실패");
 		 }
 		model.addAttribute("loc","/");
 		 return "zipcoock/common/msg";
	}

	@RequestMapping(value="/PwChange.do")
	public String PwChange(PwChangeVO pwVO, Model model) {
		System.out.println(pwVO);
		int result  = service.sellerChangePw(pwVO);// 이떄 암호화 실행 그래서 service에 memberType만 보내짐 해결방안 1. service 2번 호출해서 newpw와 oldpw 각각 m에 넣어보냄
		System.out.println(result);
		if(result == -1) {
			 model.addAttribute("msg","비밀번호가 틀립니다.");
			 
		 }else if(result == 0){
				 
				 model.addAttribute("msg","비밀번호 변경 실패.");
			 }else {
				 model.addAttribute("msg","비밀번호 변경 성공.");
			 }
		 
		model.addAttribute("loc","/");
		return "zipcoock/common/msg";
		
	}
}
