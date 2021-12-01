package kr.or.seller.model.dao;


import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;

import kr.or.table.model.vo.Member;


@Repository
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Member selectOneMember(Member member) {
		
		return (Member)sqlSession.selectOne("member.selectOneMember",member);
		}
}