package kr.or.zipcoock.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.table.model.vo.AdminDeal;
import kr.or.table.model.vo.AdminQna;
import kr.or.table.model.vo.AdminRefund;
import kr.or.table.model.vo.Member;
import kr.or.table.model.vo.Qna;
import kr.or.zipcoock.admin.model.dao.AdminDao;

@Service
public class AdminService 
{
	@Autowired
	private AdminDao dao;
	
	public ArrayList<Member> selectAllMember()
	{
		return dao.selectAllMember();
	}

	public ArrayList<AdminQna> selectAllQna() 
	{
		return dao.selectAllQna();
	}

	public ArrayList<AdminDeal> selectAllHomecookDeal() 
	{		
		return dao.selectAllHomecookDeal();
	}

	public ArrayList<AdminRefund> selectAllRefund() {
		// TODO Auto-generated method stub
		return dao.selectAllRefund();
	}

	public Member selectOneMemberInfo(int memberNo) 
	{		
		return dao.selectOneMemberInfo(memberNo);
	}
	
}
