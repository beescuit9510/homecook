package kr.or.delivery.purchase.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.delivery.model.vo.ZcdCart;
import kr.or.delivery.model.vo.updatePw;
import kr.or.delivery.model.vo.ZcdCartVo;
import kr.or.delivery.purchase.service.DeliveryBuyerService;
import kr.or.table.model.vo.Member;

@Controller
public class DeliveryBuyerController {
	@Autowired
	private DeliveryBuyerService service;
	
	@RequestMapping(value="zcdMain.do")
	public String zcdMain() {
		return "delivery/buyer/zcdMain";
	}
	
	@RequestMapping(value="zcdMypage.do")
	public String zcdMypage() {
		return "delivery/buyer/mypage";
	}
	
	@RequestMapping(value="zcdMyCoupon.do")
	public String zcdMyCoupon() {
		return "delivery/buyer/mypage/myCoupon";
	}
	
	@RequestMapping(value="zcdBookmarks.do")
	public String zcdBookmarks() {
		return "delivery/buyer/mypage/bookmarks";
	}
	
	@RequestMapping(value="zcdMyReview.do")
	public String zcdMyReview() {
		return "delivery/buyer/mypage/myReview";
	}
	
	@RequestMapping(value="zcdMyQnA.do")
	public String zcdMyQnA() {
		return "delivery/buyer/mypage/myQnA";
	}
	
	@RequestMapping(value="zcdFindResult.do")
	public String zcdFindResult() {
		return "delivery/buyer/findResult";
	}
	
	@RequestMapping(value="zcdCart.do")
	public String zcdCart(HttpSession session, Model model) {
		Member m=(Member)session.getAttribute("m");
		ArrayList<ZcdCartVo> list=service.selectOneCart(m.getMemberNo());
		System.out.println(m.getMemberNo());
		model.addAttribute("zcv", list);
		return "delivery/buyer/zcdCart";
	}
	
	@RequestMapping(value="zcdOrderList.do")
	public String zcdOrderList() {
		return "delivery/buyer/orderList";
	}

	@RequestMapping(value = "updatePhone.do")
	public String updatePhone(Member m, Model model) {
		int result=service.updatePhone(m);
		if(result>0) {
			model.addAttribute("msg", "전화번호 변경 완료");
		}else {
			model.addAttribute("msg", "전화번호 변경 실패");
		}
		model.addAttribute("loc", "/zcdMypage.do");
		return "common/msg";
	}
	
	@RequestMapping(value = "updatePw.do") 
	public String updatePw(updatePw up, Model model) {
		int result=service.updatePw(up);
		if(result==-1) {
			model.addAttribute("msg", "기존 비밀번호를 확인하세요.");
		}else if(result==1) {
			model.addAttribute("msg","비밀번호 변경 완료");
		}else {
			model.addAttribute("msg","비밀번호 변경 실패");
		}
		model.addAttribute("loc", "/zcdMypage.do");
		return "common/msg";
	}
}
