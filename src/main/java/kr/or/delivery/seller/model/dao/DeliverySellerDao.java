package kr.or.delivery.seller.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.delivery.model.vo.StoreLogo;
import kr.or.delivery.model.vo.ZcdStore;
import kr.or.table.model.vo.Member;

@Repository
public class DeliverySellerDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public Member selectOneMember(Member member) {
		return (Member)sqlSession.selectOne("zcdseller.selectOneMember", member);
	}

	public String selectOneStoreName(String storeName) {
		return sqlSession.selectOne("zcdseller.selectOneStoreName", storeName);
	}

	public String selectOneStorePhone(String storePhone) {
		return sqlSession.selectOne("zcdseller.selectOneStorePhone", storePhone);
	}

	public int addMarket(ZcdStore zs) {
		return sqlSession.insert("zcdseller.addMarket", zs);
	}

	public int insertStoreLogo(StoreLogo sl) {
		return sqlSession.insert("zcdseller.insertStoreLogo", sl);
	}

}
