package kr.or.zipcoock.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.table.model.vo.Member;
import kr.or.zipcoock.admin.model.service.AdminService;



@Controller
public class AdminController 
{
	@Autowired
	private AdminService service;
	

	@RequestMapping(value = "/getAllMemberList.do")
	@ResponseBody
	public ArrayList<Member> get_AllMemberList()
	{		
		return service.selectAllMember();
	}
}
