package kr.or.seller.model.dao;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;

import kr.or.table.model.vo.BusinessSellerInfo;
import kr.or.table.model.vo.Member;


@Repository
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Member selectOneMember(Member member) {
		
		return (Member)sqlSession.selectOne("member.selectOneMember",member);
		}

	public BusinessSellerInfo selectOneBusinessNo(BusinessSellerInfo businessSellerInfo) {
		
		return (BusinessSellerInfo)sqlSession.selectOne("businessSellerInfo.selectOneBusinessNo",businessSellerInfo);
	}
}