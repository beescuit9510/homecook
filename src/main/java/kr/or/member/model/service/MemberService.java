package kr.or.member.model.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.or.seller.model.dao.MemberDao;
import kr.or.table.model.vo.BusinessSellerInfo;
import kr.or.table.model.vo.Member;


@Service
public class MemberService {

		@Autowired
		private MemberDao dao;
		
		/*
		 * public Member login2(String memberId, String memberPw) { Member m =
		 * dao.login2(memberId,memberPw); return m; }
		 */
		
		public Member selectOneMember(Member member) {
			Member m = dao.selectOneMember(member);
			return m;
		}

		public BusinessSellerInfo selectOneBusinessNo(BusinessSellerInfo businessSellerInfo) {
			BusinessSellerInfo bsi = dao.selectOneBusinessNo(businessSellerInfo);
			return bsi;
		}
		

		
}
