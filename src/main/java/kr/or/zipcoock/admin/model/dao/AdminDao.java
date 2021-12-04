package kr.or.zipcoock.admin.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.table.model.vo.Member;

@Repository
public class AdminDao 
{
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Member> selectAllMember() 
	{
		List<Member> list = sqlSession.selectList("admin.get_memberList");
		return (ArrayList<Member>)list;
	}

}
