package kr.or.delivery.seller.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.table.model.vo.Member;

@Repository
public class DeliverySellerDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public Member selectOneMember(Member member) {
		return (Member)sqlSession.selectOne("zcdseller.selectOneMember", member);
	}

}
