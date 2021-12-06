package kr.or.seller.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.member.model.dao.MemberDao;
import kr.or.seller.model.dao.SellerDao;
import kr.or.table.model.vo.BusinessSellerInfo;
import kr.or.table.model.vo.Member;
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
	
	public Member checkPwEnc(PwChangeVO pwVO) {
		Member m = mdao.selectOneMemberPW(pwVO);
		return m;
	}
	public int updatePwEnc(PwChangeVO pwVO) {
		int result = mdao.updatePW(pwVO);
		return result;
	}
}
