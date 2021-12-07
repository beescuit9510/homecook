package kr.or.seller.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.table.model.vo.BusinessSellerInfo;
import kr.or.table.model.vo.Member;
import kr.or.table.model.vo.Product;
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

	public ArrayList<Product> selectProductList(Member m) {
		List<Product> list = sqlSession.selectList("product.selectProductList",m);
		return (ArrayList<Product>)list;
	}
}
