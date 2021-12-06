package kr.or.delivery.seller.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.delivery.seller.model.dao.DeliverySellerDao;
import kr.or.table.model.vo.Member;

@Service
public class DeliverySellerService {

	@Autowired
	private DeliverySellerDao dao;
	
	public Member selectOneMember(Member member) {
		Member m = dao.selectOneMember(member);
		return m;
	}
	
}
