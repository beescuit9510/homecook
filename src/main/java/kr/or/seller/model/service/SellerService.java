package kr.or.seller.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.or.member.model.dao.MemberDao;
import kr.or.seller.model.dao.SellerDao;
import kr.or.table.model.vo.BusinessSellerInfo;
import kr.or.table.model.vo.Member;
import kr.or.table.model.vo.Product;
import kr.or.table.model.vo.PwChangeVO;

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
	public ArrayList<Product> selectProductList(Member m) {
		ArrayList<Product> list = dao.selectProductList(m);
		return list;
	}
	
}
