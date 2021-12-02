package kr.or.zipcoock.mypage.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.zipcoock.mypage.vo.DeleteObj1;
import kr.or.zipcoock.mypage.vo.InsertObj;
import kr.or.zipcoock.mypage.vo.UpdateObj1;

@Repository
public class MypageDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insert(InsertObj obj) {
		return sqlSession.insert("mypage.insert",obj);	
	}
	
	public int update(UpdateObj1 obj) {
		return sqlSession.update("mypage.update",obj);	
	}
	
	public int delete(DeleteObj1 obj) {
		return sqlSession.delete("mypage.delete",obj);	
	}

	public int selectCnt(Map<String, Object> map) {
		return sqlSession.selectOne("mypage.selectCnt",map);	
	}
}
