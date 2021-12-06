package kr.or.delivery.purchase.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PurchaseController {
	
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
}
