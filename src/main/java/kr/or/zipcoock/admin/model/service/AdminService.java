package kr.or.zipcoock.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.table.model.vo.Member;
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
	
}
