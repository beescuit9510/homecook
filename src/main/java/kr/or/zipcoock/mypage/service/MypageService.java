package kr.or.zipcoock.mypage.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.zipcoock.mypage.dao.MypageDao;
import kr.or.zipcoock.mypage.vo.DeleteObj1;
import kr.or.zipcoock.mypage.vo.InsertObj;
import kr.or.zipcoock.mypage.vo.MyAddr;
import kr.or.zipcoock.mypage.vo.MyHQna;
import kr.or.zipcoock.mypage.vo.MyLike;
import kr.or.zipcoock.mypage.vo.MyQna;
import kr.or.zipcoock.mypage.vo.MyReview;
import kr.or.zipcoock.mypage.vo.SearchTool;
import kr.or.zipcoock.mypage.vo.UpdateObj1;

@Service
public class MypageService {
	@Autowired
	private MypageDao dao;

	@Transactional
	public int insert(InsertObj obj) {
		return dao.insert(obj);
	}

	@Transactional
	public int update(UpdateObj1 obj) {
		return dao.update(obj);
	}

	// @Pointcut(value="execution(* kr.or..*Service.*Enc(..))")
	// kr.or.. 클래스파일 Service로 끝나고 메소드명 Enc로 끝나는것
	@Transactional
	public int updatePWEnc(UpdateObj1 obj) {
		return dao.update(obj);
	}

	// @Pointcut(value="execution(* kr.or..*Service.*Enc(..))")
	// kr.or.. 클래스파일 Service로 끝나고 메소드명 Enc로 끝나는것
	@Transactional
	public int delete(DeleteObj1 obj) {
		return dao.delete(obj);

	}
	
	
	public void test(SearchTool tool) {
		selectTotal(tool, "address");
		selectTotal(tool, "product_like");
		selectTotal(tool, "homepage_qna");
		selectTotal(tool, "product_review");
		tool.setFilteredPost(dao.selectMyAddrCnt(tool));		
		tool.setFilteredPost(dao.selectMyHQnaCnt(tool));
		tool.setFilteredPost(dao.selectMyLikeCnt(tool));
		tool.setFilteredPost(dao.selectMyQnaCnt(tool));
		tool.setFilteredPost(dao.selectMyReviewCnt(tool));
	}

	public ArrayList<MyAddr> selectMyAddr(SearchTool tool) {
		tool.setFilteredPost(dao.selectMyAddrCnt(tool));
		selectTotal(tool, "address");
		return dao.selectMyAddr(tool);
	}

	public ArrayList<MyHQna> selectMyHQna(SearchTool tool) {
		tool.setFilteredPost(dao.selectMyHQnaCnt(tool));
		selectTotal(tool, "qna");
		return dao.selectMyHQna(tool);
	}

	public ArrayList<MyLike> selectMyLike(SearchTool tool) {
		tool.setFilteredPost(dao.selectMyLikeCnt(tool));
		selectTotal(tool, "product_like");
		return dao.selectMyLike(tool);

	}
	public ArrayList<MyQna> selectMyQna(SearchTool tool) {
		tool.setFilteredPost(dao.selectMyQnaCnt(tool));
		selectTotal(tool, "homepage_qna");
		return dao.selectMyQna(tool);

	}
	public ArrayList<MyReview> selectMyReview(SearchTool tool) {
		tool.setFilteredPost(dao.selectMyReviewCnt(tool));
		selectTotal(tool, "product_review");
		return dao.selectMyReview(tool);

	}

	public void selectTotal(SearchTool tool,String table) {
		HashMap<String, String> map = new HashMap<String,String>();
		map.put("table", table);
		map.put("memberNo", tool.getMemberNo()+"");
		tool.setTotalPost(dao.selectCnt(map));
		
	}
	public void selectList(SearchTool tool) {

		// pagination
		int reqPage = tool.getP();
		int postPerPage = tool.getShow();
		int end = reqPage * postPerPage;
		int start = end - postPerPage + 1;

		tool.setStart(start);
		tool.setEnd(end);

		int total = tool.getFilteredPost();

		int totalPage = total % postPerPage == 0 ? total / postPerPage : total / postPerPage + 1;
		int pageNaviSize = 10;
		int pageNo = ((reqPage - 1) / pageNaviSize) * pageNaviSize + 1;

		tool.setTotalP(totalPage);

		StringBuffer pageNavi = new StringBuffer();

		if (pageNo != 1) {
			tool.setP(pageNo - 1);
			pageNavi.append("<li class='page-item'><a class='page-link' href='" + tool.getURL()
					+ "' tabindex=-1 >Previous</a></li>");
		}
		;

		for (int i = 0; i < pageNaviSize; i++) {
			tool.setP(pageNo);
			if (pageNo == reqPage) {
				pageNavi.append("<li class='page-item active'><a class='page-link' href='" + tool.getURL() + "'>"
						+ tool.getP() + "</a></li>");

			} else {
				pageNavi.append("<li class='page-item'><a class='page-link' href='" + tool.getURL() + "'>" + tool.getP()
						+ "</a></li>");
			}
			pageNo++;

			if (pageNo > totalPage) {
				break;
			}
		}
		if (pageNo < totalPage) {
			tool.setP(pageNo);
			pageNavi.append("<li class='page-item'><a class='page-link' href='" + tool.getURL() + "'>Next</a></li>");
		}

		tool.setPageNavi(pageNavi.toString());
		tool.setP(reqPage);

	}
}
