package kr.or.delivery.seller.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.delivery.model.vo.AddMenu;
import kr.or.delivery.model.vo.Menu;
import kr.or.delivery.model.vo.MenuGroup;
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
	
	public String selectOneStoreName2(int storeNo) {
		String sn2 = dao.selectOneStoreName2(storeNo);
		return sn2;
	}

	public String selectOneStorePhone(String storePhone) {
		String sp = dao.selectOneStorePhone(storePhone);
		return sp;
	}
	
	public String selectOneStorePhone2(int storeNo) {
		String sp2 = dao.selectOneStorePhone2(storeNo);
		return sp2;
	}

	@Transactional
	public int addMarket(ZcdStore zs, ArrayList<StoreLogo> list) {
		int result1 = dao.addMarket(zs);
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

	public ArrayList<ZcdStore> selectZcdStoreList(int memberNo) {
		ArrayList<ZcdStore> list = dao.selectZcdStoreList(memberNo);
		return list;
	}

	@Transactional
	public int changeState(ZcdStore zs) {
		int result = dao.changeState(zs);
		return result;
	}

	public ZcdStore selectOneMarket(int storeNo) {
		ZcdStore zs = dao.selectOneMarket(storeNo);
		return zs;
	}

	@Transactional
	public int modifyMarket(ZcdStore zs) {
		int result = dao.modifyMarket(zs);
		return result;
	}
	
	@Transactional
	public int modifyMarket(ZcdStore zs, ArrayList<StoreLogo> list) {
		int result1 = dao.modifyMarket(zs);
		int result = 0;
		if (result1 > 0) {
			for (StoreLogo sl : list) {
				System.out.println("zs.getStoreNo: " + zs.getStoreNo());
				sl.setStoreNo(zs.getStoreNo());
				result += dao.modifyStoreLogo(sl);
			}
		} else {
			return -1;
		}
		return result;
	}

	@Transactional
	public int deleteOneMarket(int storeNo) {
		int result = dao.deleteOneMarket(storeNo);
		return result;
	}

	@Transactional
	public int addMenuGroup(MenuGroup mg) {
		int result = dao.addMenuGroup(mg);
		return result;
	}

	public ArrayList<MenuGroup> selectMenuGroupList(int storeNo) {
		ArrayList<MenuGroup> list = dao.selectMenuGroupList(storeNo);
		return list;
	}

	@Transactional
	public int modifyMenuGroup(MenuGroup mg) {
		int result = dao.modifyMenuGroup(mg);
		return result;
	}

	@Transactional
	public int deleteMenuGroup(int groupNo) {
		int result = dao.deleteMenuGroup(groupNo);
		return result;
	}

	public ArrayList<Menu> selectMenuList(int groupNo) {
		ArrayList<Menu> list = dao.selectMenuList(groupNo);
		return list;
	}

	public String selectOneMenuName(String menuName) {
		String mn = dao.selectOneMenuName(menuName);
		return mn;
	}

	@Transactional
	public int addMenu(Menu menu) {
		int result = dao.addMenu(menu);
		System.out.println("result: " + result);
		if (result > 0) {
			return result;
		} else {
			return -1;
		}
	}

	public String selectGroupName(int groupNo) {
		String groupName = dao.selectGroupName(groupNo);
		return groupName;
	}

	public Menu selectOneMenu(int menuNo) {
		Menu menu = dao.selectOneMenu(menuNo);
		return menu;
	}

	@Transactional
	public int modifyMenu(Menu menu) {
		int result = dao.modifyMenu(menu);
		return result;
	}

	@Transactional
	public int modifyMenu2(Menu menu) {
		int result = dao.modifyMenu2(menu);
		return result;
	}

	@Transactional
	public int deleteMenu(int menuNo) {
		int result = dao.deleteMenu(menuNo);
		return result;
	}

	public ArrayList<AddMenu> selectAddMenuList(int menuNo) {
		ArrayList<AddMenu> list = dao.selectAddMenuList(menuNo);
		return list;
	}
	
}
