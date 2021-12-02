package kr.or.zipcoock.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.zipcoock.mypage.dao.MypageDao;

@Service
public class MypageService {
	@Autowired
	private MypageDao dao;
}
