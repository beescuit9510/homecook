package kr.or.seller.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.table.model.vo.BusinessSellerInfo;
@Repository
public class SellerDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	
	public BusinessSellerInfo selectOneSmember(int memberNo) {
		return sqlSession.selectOne("businessSellerInfo.selectOneSmember",memberNo);
		
	}


	public int updateSellerMember(BusinessSellerInfo businessSellerInfo) {
		
		return sqlSession.update("businessSellerInfo.updateSellerMember",businessSellerInfo);
	}
}
