package kr.or.zipcoock.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.table.model.vo.Address;
import kr.or.zipcoock.mypage.dao.MypageDao;
import kr.or.zipcoock.mypage.vo.InsertObj;

@Service
public class MypageService {
	@Autowired
	private MypageDao dao;

	public int insert(InsertObj obj) {
		return dao.insert(obj);
	} 
}

