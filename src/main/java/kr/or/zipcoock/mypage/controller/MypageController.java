package kr.or.zipcoock.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.table.model.vo.ProductLike;
import kr.or.zipcoock.mypage.service.MypageService;
import kr.or.zipcoock.mypage.vo.DeleteObj1;
import kr.or.zipcoock.mypage.vo.InsertObj;
import kr.or.zipcoock.mypage.vo.SelectList;
import kr.or.zipcoock.mypage.vo.UpdateObj1;

@Controller
public class MypageController {
	@Autowired
	MypageService service;

	
//	addr / qna / hp /r / like
	@RequestMapping(value = "/insert.do")
	public String insert(InsertObj obj) {

		service.insert(obj);

		return "redirect:/";
	}

//	 m / pwM 
//	 addr / qna / hp /r / like
	@RequestMapping(value = "/update.do")
	public String update(UpdateObj1 obj) {

		service.update(obj);

		return "redirect:/";
	}

//	m 
//	addr / qna / hp /r + (review_img) / like
	@RequestMapping(value = "/delete.do")
	public String delete(DeleteObj1 obj) {

		service.delete(obj);

		return obj.getUrl();

	}

	@RequestMapping(value = "/selectList.do")
	public String selectList(SelectList list) {
		
		service.selectList(list);
		
		return "redirect:/";
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/deleteLike.do")
	public void deleteLike(ProductLike like) {
		DeleteObj1 obj = new DeleteObj1();
		obj.setLike(like);
		service.delete(obj);
	}
	@ResponseBody
	@RequestMapping(value = "/insertLike.do")
	public void insertLike(ProductLike like) {
		InsertObj obj = new InsertObj();
		obj.setLike(like);
		service.insert(obj);
	}

// review_img 등록/수정

}

//<hr/>
//addr
//<form action="/insert.do">
//	<input type="text" name="addr.memberNo" value="4"/>
//	<input type="text" name="addr.receiverName" value="receiverName"/>
//	<input type="text" name="addr.receiverPhone" value="receiverPhone"/>
//	<input type="text" name="addr.addr" value="addr"/>
//	<button type="submit">제출</button>
//</form>
//<hr/>
//qna
//<form action="/insert.do">
//	<input type="text" name="q.memberNo" value="4"/>
//	<input type="text" name="q.productRefNo" value="1"/>
//	<input type="text" name="q.qnaTitle" value="qnaTitle"/>
//	<input type="text" name="q.qnaContent" value="qnaContent"/>
//	<button type="submit">제출</button>
//</form>
//<hr/>
//hq
//<form action="/insert.do">
//	<input type="text" name="hq.memberNo" value="4"/>
//	<input type="text" name="hq.qnaTitle" value="qnaTitle"/>
//	<input type="text" name="hq.qnaContent" value="qnaContent"/>
//	<button type="submit">제출</button>
//</form>
//<hr/>
//r
//<form action="/insert.do">
//	<input type="text" name="r.memberNo" value="4"/>
//	<input type="text" name="r.star" value="5"/>
//	<input type="text" name="r.reviewContent" value="리뷰내용"/>
//	<input type="text" name="r.productNo" value="1"/>
//	<button type="submit">제출</button>
//</form>
//<hr/>
//like
//<form action="/insert.do">
//	<input type="text" name="like.memberNo" value="4"/>
//	<input type="text" name="like.productNo" value="1"/>
//	<button type="submit">제출</button>
//</form>
//
//<br/>
//update
//<hr/>
//m
//<form action="/update.do">
//	<input type="text" name="m.memberNo" value="4"/>
//	<input type="text" name="m.memberId" value="rmemberId"/>
//	<input type="text" name="m.memberName" value="member_name"/>
//	<input type="text" name="m.memberPhone" value="memberPhone"/>
//	<button type="submit">제출</button>
//</form>
//pwM
//<form action="/update.do">
//	<input type="text" name="pwM.memberNo" value="4"/>
//	<input type="text" name="pwM.memberPw" value="pwM"/>
//	<button type="submit">제출</button>
//</form>
//<hr/>
//addr
//<form action="/update.do">
//	<input type="text" name="addr.memberNo" value="4"/>
//	<input type="text" name="addr.receiverName" value="receiverName1234"/>
//	<input type="text" name="addr.receiverPhone" value="receiverPhone1234"/>
//	<input type="text" name="addr.addr" value="addr"/>
//	<input type="text" name="addr.addrNo" value="2"/>
//	<button type="submit">제출</button>
//</form>
//<hr/>
//Q
//<form action="/update.do">
//	<input type="text" name="q.memberNo" value="4"/>
//	<input type="text" name="q.qnaNo" value="1"/>
//	<input type="text" name="q.qnaTitle" value="qnaTitle1234"/>
//	<input type="text" name="q.qnaContent" value="qnaContent1234"/>
//	<button type="submit">제출</button>
//</form>
//<hr/>
//hq
//<form action="/update.do">
//	<input type="text" name="hq.memberNo" value="4"/>
//	<input type="text" name="hq.qnaNo" value="1"/>
//	<input type="text" name="hq.qnaTitle" value="qnaTitle1234"/>
//	<input type="text" name="hq.qnaContent" value="qnaContent1234"/>
//	<button type="submit">제출</button>
//</form>
//<hr/>
//r
//<form action="/update.do">
//	<input type="text" name="r.reviewNo" value="10"/>
//	<input type="text" name="r.memberNo" value="4"/>
//	<input type="text" name="r.star" value="3"/>
//	<input type="text" name="r.reviewContent" value="리뷰내용1234"/>
//	<button type="submit">제출</button>
//</form>
//<hr/>
//like
//<form action="/update.do">
//	<input type="text" name="r.memberNo" value="4"/>
//	<input type="text" name="r.productNo" value="1"/>
//	<button type="submit">제출</button>
//</form>
//<br/>
//delete
//<hr/>
//m
//<form action="/delete.do">
//	<input type="text" name="m.memberNo" value="5"/>
//	<input type="text" name="m.memberId" value="rmemberId"/>
//	<button type="submit">제출</button>
//</form>
//addr
//<form action="/delete.do">
//	<input type="text" name="addr.memberNo" value="4"/>
//	<input type="text" name="addr.addrNo" value="2"/>
//	<button type="submit">제출</button>
//</form>
//<hr/>
//Q
//<form action="/delete.do">
//	<input type="text" name="q.memberNo" value="4"/>
//	<input type="text" name="q.qnaNo" value="1"/>
//	<button type="submit">제출</button>
//</form>
//<hr/>
//hq
//<form action="/delete.do">
//	<input type="text" name="hq.memberNo" value="4"/>
//	<input type="text" name="hq.qnaNo" value="1"/>
//	<button type="submit">제출</button>
//</form>
//<hr/>
//r
//<form action="/delete.do">
//	<input type="text" name="r.memberNo" value="4"/>
//	<input type="text" name="r.reviewNo" value="1"/>
//	<button type="submit">제출</button>
//</form>
//<hr/>
//like
//<form action="/delete.do">
//	<input type="text" name="like.memberNo" value="4"/>
//	<input type="text" name="like.productNo" value="1"/>
//	<button type="submit">제출</button>
//</form>
//
