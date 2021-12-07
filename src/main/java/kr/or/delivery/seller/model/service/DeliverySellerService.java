package kr.or.delivery.seller.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.delivery.model.vo.StoreLogo;
import kr.or.delivery.model.vo.ZcdStore;
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

	public String selectOneStoreName(String storeName) {
		String sn = dao.selectOneStoreName(storeName);
		return sn;
	}

	public String selectOneStorePhone(String storePhone) {
		String sp = dao.selectOneStorePhone(storePhone);
		return sp;
	}

	@Transactional
	public int addMarket(ZcdStore zs, ArrayList<StoreLogo> list) {
		System.out.println("insert 전: " + zs.getStoreNo());
		int result1 = dao.addMarket(zs);
		System.out.println("insert 후: " + zs.getStoreNo());
		System.out.println("result1: " + result1);
		int result = 0;
		if (result1 > 0) {
			for (StoreLogo sl : list) {
				System.out.println("zs.getStoreNo: " + zs.getStoreNo());
				sl.setStoreNo(zs.getStoreNo());
				result += dao.insertStoreLogo(sl);
			}
		} else {
			return -1;
		}
		return result;
	}
	
}
