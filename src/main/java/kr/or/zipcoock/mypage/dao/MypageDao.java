package kr.or.zipcoock.mypage.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.zipcoock.mypage.vo.InsertObj;

@Repository
public class MypageDao {
	
	@Autowired
	private SqlSession sqlSession;

	public int insert(InsertObj insertobj) {
		return sqlSession.insert("mypage.insert",insertobj);
	}
}
