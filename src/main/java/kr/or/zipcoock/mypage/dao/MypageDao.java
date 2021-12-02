package kr.or.zipcoock.mypage.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.zipcoock.mypage.vo.InsertObj;

@Repository
public class MypageDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insert(InsertObj obj) {
		return sqlSession.insert("mypage.insert",obj);	
	}
}
