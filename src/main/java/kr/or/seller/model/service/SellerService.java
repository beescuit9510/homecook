package kr.or.seller.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.member.model.dao.MemberDao;
import kr.or.seller.model.dao.SellerDao;
import kr.or.seller.model.vo.SellerProductPageData;
import kr.or.table.model.vo.BusinessSellerInfo;
import kr.or.table.model.vo.Member;
import kr.or.table.model.vo.Product;
import kr.or.table.model.vo.ProductImg;
import kr.or.table.model.vo.PwChangeVO;
import kr.or.table.model.vo.ReturnPolicy;
import kr.or.table.model.vo.ShippingInfo;

@Service
public class SellerService {
	@Autowired
	private SellerDao dao;
	@Autowired
	private MemberDao mdao;
	
	public BusinessSellerInfo selectOneSmember(int memberNo) {
		BusinessSellerInfo bsi = dao.selectOneSmember(memberNo);
		return bsi;
	}
	public int updateSellerMember(BusinessSellerInfo businessSellerInfo) {
		int result = dao.updateSellerMember(businessSellerInfo);
		
		return result;
	}
	
	public int sellerChangePw(PwChangeVO pc) {
		Member m = new Member(); // 멤버객체를 매개변수로하기때문에 생성
		m.setMemberId(pc.getMemberId());
		m.setMemberPw(pc.getOldPassword());
		Member member = mdao.selectOneMember(m);
		if(member == null) {
			return -1;
		}else {
			m.setMemberPw(pc.getNewPassword());
			return mdao.updatePW(m);
		}
	}

	public SellerProductPageData selectProductList(Member m, int reqPage) {
		//한페이지당 게시물 수 : 10개
				int numPerPage = 10;
				//시작 번호, 끝번호
				int end = reqPage*numPerPage;
				int start = end - numPerPage + 1;
				Map<Object, Object> pagedata = new HashMap<Object, Object>();
				pagedata.put("start", start);
				pagedata.put("end", end);
				pagedata.put("m", m);
				//값 가져오기
				
				ArrayList<Product> pList = dao.selectProductList(pagedata);
				//전체 게시물의 수
				int totalCount = dao.selectTotalCount(m);
				int totalPage = 0;
				if(totalCount%numPerPage == 0) {
					totalPage = totalCount/numPerPage;
				}else {
					totalPage = totalCount/numPerPage+1;
				}
				int pageNaviSize = 5;
				int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
				String pageNavi = "<ul class='pagination pagination-sm' style='display: inline-block;'>";
				//이전버튼
				if(pageNo != 1) {
					pageNavi += "<li class='page-item'>";
					pageNavi += "<a class='page-link' style='color:#9ac6e8; text-align: center' href='/productList.do?reqPage="+(pageNo-1)+"'>";
					pageNavi += "&lt;</a></li>";		//&lit;는 < (html에서 태그 열때 쓰이는거라 문자로 쓸땐 이렇게 씀)
				}
				//페이지숫자
				for(int i=0;i<pageNaviSize;i++) {
					if(pageNo==reqPage) {
						pageNavi += "<li class='page-item active'>";
						pageNavi += "<a class='page-link' style='Background-color:#9ac6e8; text-align: center' href='/productList.do?reqPage="+pageNo+"'>";
						pageNavi += pageNo+"</a></li>";
					}else {
						pageNavi += "<li class='page-item'>";
						pageNavi += "<a class='page-link' style='color:#9ac6e8'  href='/productList.do?reqPage="+pageNo+"'>";
						pageNavi += pageNo+"</a></li>";
					}
					pageNo++;
					if(pageNo>totalPage) {
						break;
					}
				}
				//다음버튼
				if(pageNo <= totalPage) {
					pageNavi += "<li class='page-item'>";
					pageNavi += "<a class='page-link' style='color:#9ac6e8'  href='/productList.do?reqPage="+pageNo+"'>";
					pageNavi += "&gt;</a></li>";
				}
				pageNavi +="</ul>";
				
				SellerProductPageData sppd = new SellerProductPageData(pList, pageNavi, start);
				
			
				return sppd;
			}
	@Transactional
	public int productInsert(Product product, ShippingInfo shippingInfo, ProductImg productImg,
			ReturnPolicy returnPolicy) {
		/*
		 * int result1 = dao.insertProduct(product); int result2 =
		 * dao.insertShippingInfo(shippingInfo); int result3 =
		 * dao.insertProductImg(productImg); int result4 =
		 * dao.insertReturnPolicy(returnPolicy);
		 */
		return 0;
	}
	}
	

