package kr.or.zipcoock.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.table.model.vo.ProductReview;
import kr.or.zipcoock.mypage.service.MypageService;
import kr.or.zipcoock.mypage.vo.InsertObj;

public class MypageController {
	@Autowired
	MypageService service;

	@RequestMapping(value="/insertReview.do")
	public String insertReview(ProductReview review) {
		
		InsertObj obj = new InsertObj();
		obj.setReview(review);
		
		service.insert(obj);
		
		return "redirect:/";
	}
	
//	@RequestMapping(value="/insertAddress.do")
//	public String insertAddress(Address addr) {
//		return "/i";
//	}
//	@RequestMapping(value="/insertQna.do")
//	public String insertQna(Qna qna) {
//		return "/i";
//	}
//	@RequestMapping(value="/insertHomepageQna.do")
//	public String insertHomepageQna(HomepageQna qna) {
//		return "/i";
//	}
//	
//	
//	@RequestMapping(value="/insertLike.do")
//	public String insertLike(ProductLike like) {
//		return "/i";
//	}


}

//	Address addr = new Address();
//	addr.setAddr("강남");
//	addr.setMemberNo(4);		
//	addr.setReceiverName("ㅎㅅㅎ");		
//	addr.setReceiverPhone("01022228888");
//	InsertObj obj = new InsertObj();
//	obj.setAddress(addr);
//	System.out.println(insertA(obj));