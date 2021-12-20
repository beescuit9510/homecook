package kr.or.delivery.seller.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.delivery.model.vo.AddMenu;
import kr.or.delivery.model.vo.Menu;
import kr.or.delivery.model.vo.MenuGroup;
import kr.or.delivery.model.vo.StoreLogo;
import kr.or.delivery.model.vo.ZcdStore;
import kr.or.delivery.seller.model.service.DeliverySellerService;
import kr.or.table.model.vo.Member;

@Controller
public class DeliverySellerController {

	@Autowired
	private DeliverySellerService service;
	
	@RequestMapping(value="/zcdSellerloginFrm.do")
	public String zcdSellerloginFrm() {
		return "delivery/seller/zcdSellerLoginFrm";
	}
	
	/* 딜리버리 판매자 임시 로그인 */
	@RequestMapping(value="/zcdSellerlogin.do")
	public String zcdSellerlogin(Member member, HttpSession session, Model model) {
		Member m = service.selectOneMember(member);
		if(m != null) {
			session.setAttribute("m", m);
			ArrayList<ZcdStore> list = service.selectZcdStoreList(m.getMemberNo());
			model.addAttribute("list", list);
			return "delivery/seller/manageMarketFrm";
		} else {
			model.addAttribute("msg","아이디 또는 비밀번호를 확인하세요");
			model.addAttribute("loc", "/");
			return "zipcoock/common/msg";
		}
	}
	
	@RequestMapping(value="/manageMarketFrm.do")
	public String manageMarketFrm(Member member, HttpSession session, Model model) {
		Member m = (Member)session.getAttribute("m");
		ArrayList<ZcdStore> list = service.selectZcdStoreList(m.getMemberNo());
		model.addAttribute("list", list);
		return "delivery/seller/manageMarketFrm";
	}
	
	@RequestMapping(value="/addMarketFrm.do")
	public String addMarketFrm() {
		return "delivery/seller/addMarketFrm";
	}
	
	@RequestMapping(value="/manageMenuFrm.do")
	public String manageMenuFrm(Member member, HttpSession session, Model model) {
		Member m = (Member)session.getAttribute("m");
		ArrayList<ZcdStore> list = service.selectZcdStoreList(m.getMemberNo());
		model.addAttribute("list", list);
		return "delivery/seller/manageMenuFrm";
	}
	
	@RequestMapping(value="/storeNameCheck.do")
	@ResponseBody
	public int storeNameCheck(String storeName) {
		String sn = service.selectOneStoreName(storeName);
		if (sn == null) {
			return 0;
		} else {
			return 1;
		}
	}
	
	@RequestMapping(value="/storeNameCheck2.do")
	@ResponseBody
	public int storeNameCheck2(String storeName, int storeNo) {
		String sn1 = service.selectOneStoreName(storeName);
		String sn2 = service.selectOneStoreName2(storeNo);
		if (sn1 == null) {
			return 0;
		} else if (sn1.equals(sn2)) {
			return 0;
		} else {
			return 1;
		}
	}
	
	@RequestMapping(value="/storePhoneCheck.do")
	@ResponseBody
	public int storePhoneCheck(String storePhone) {
		String sp = service.selectOneStorePhone(storePhone);
		if (sp == null) {
			return 0;
		} else {
			return 1;
		}
	}
	
	@RequestMapping(value="/storePhoneCheck2.do")
	@ResponseBody
	public int storePhoneCheck2(String storePhone, int storeNo) {
		String sp1 = service.selectOneStorePhone(storePhone);
		String sp2 = service.selectOneStorePhone2(storeNo);
		if (sp1 == null) {
			return 0;
		} else if (sp1.equals(sp2)) {
			return 0;
		} else {
			return 1;
		}
	}
	
	@RequestMapping(value="/addMarket.do")
	public String addMarket(ZcdStore zs, MultipartFile[] files, HttpServletRequest request, Model model) {
		// 파일목록을 저장할 List
		ArrayList<StoreLogo> list = new ArrayList<StoreLogo>();
		if (files[0].isEmpty()) {
			// 첨부파일이 없는 경우
		} else {
			// 첨부파일이 있는 경우
			String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/zcdSeller/");
			// 반복문을 이용해서 파일 처리(파일업로드)
			for (MultipartFile file : files) {
				// 사용자가 올린 파일명
				String filename = file.getOriginalFilename(); // 치킨_로고.png
				String onlyFilename = filename.substring(0, filename.indexOf(".")); // 치킨_로고
				String extention = filename.substring(filename.indexOf(".")); // .png
				String filepath = null;
				// 파일명 중복 시 숫자를 붙이는 코드
				int count = 0;
				while (true) {
					if (count == 0) {
						filepath = onlyFilename + extention; // 치킨_로고.png
					} else {
						filepath = onlyFilename + "_" + count + extention; // 치킨_로고_1.png
					}
					File checkFile = new File(savePath + filepath); // /resources/upload/zcdSeller/치킨_로고.png
					if (!checkFile.exists()) {
						break;
					}
					count++;
				}
				// 파일명 중복처리가 끝나면 파일 업로드
				try {
					// 중복처리가 끝난 파일명(filepath)으로 파일을 업로드
					FileOutputStream fos = new FileOutputStream(new File(savePath + filepath));
					// 업로드 속도 증가를 위한 보조스트림
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					// 파일 업로드
					byte[] bytes = file.getBytes();
					bos.write(bytes);
					bos.close();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				StoreLogo sl = new StoreLogo();
				sl.setFilename(filename);
				sl.setFilepath(savePath);
				list.add(sl);
			}
		}
		int result = service.addMarket(zs, list);
		if (result == -1 || result != list.size()) {
			model.addAttribute("msg", "매장이 등록되지 않았습니다.");
			model.addAttribute("loc", "/manageMarketFrm.do");
		} else {
			model.addAttribute("msg", "매장이 등록되었습니다.");
			model.addAttribute("loc", "/manageMarketFrm.do");
		}
		return "zipcoock/common/msg";
	}
	
	@RequestMapping(value="/changeState.do")
	@ResponseBody
	public int changeState(ZcdStore zs, Model model) {
		int result = service.changeState(zs);
		if (result > 0) {
			return 0;
		} else {
			return 1;
		}
	}
	
	@RequestMapping(value="/selectOneMarket.do")
	public String selectOneMarket(int storeNo, Model model) {
		ZcdStore zs = service.selectOneMarket(storeNo);
		model.addAttribute("zs", zs);
		return "delivery/seller/selectOneMarketFrm";
	}
	
	@RequestMapping(value="/modifyMarket.do")
	public String modifyMarket(ZcdStore zs, int status, MultipartFile[] files, HttpServletRequest request, Model model) {
		// 파일목록을 저장할 List
		ArrayList<StoreLogo> list = new ArrayList<StoreLogo>();
		if (files[0].isEmpty()) {
			// 첨부파일이 없는 경우
			
		} else {
			// 첨부파일이 있는 경우
			String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/zcdSeller/");
			// 반복문을 이용해서 파일 처리(파일업로드)
			for (MultipartFile file : files) {
				// 사용자가 올린 파일명
				String filename = file.getOriginalFilename(); // 치킨_로고.png
				String onlyFilename = filename.substring(0, filename.indexOf(".")); // 치킨_로고
				String extention = filename.substring(filename.indexOf(".")); // .png
				String filepath = null;
				// 파일명 중복 시 숫자를 붙이는 코드
				int count = 0;
				while (true) {
					if (count == 0) {
						filepath = onlyFilename + extention; // 치킨_로고.png
					} else {
						filepath = onlyFilename + "_" + count + extention; // 치킨_로고_1.png
					}
					File checkFile = new File(savePath + filepath); // /resources/upload/zcdSeller/치킨_로고.png
					if (!checkFile.exists()) {
						break;
					}
					count++;
				}
				// 파일명 중복처리가 끝나면 파일 업로드
				try {
					// 중복처리가 끝난 파일명(filepath)으로 파일을 업로드
					FileOutputStream fos = new FileOutputStream(new File(savePath + filepath));
					// 업로드 속도 증가를 위한 보조스트림
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					// 파일 업로드
					byte[] bytes = file.getBytes();
					bos.write(bytes);
					bos.close();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				StoreLogo sl = new StoreLogo();
				sl.setFilename(filename);
				sl.setFilepath(savePath);
				list.add(sl);
			}
		}
		int result = 0;
		if (status == 1) {
			result = service.modifyMarket(zs);
		} else if (status == 2) {
			result = service.modifyMarket(zs, list);
		}
		if (result == -1) {
			model.addAttribute("msg", "매장 정보가 변경되지 않았습니다.");
			model.addAttribute("loc", "/manageMarketFrm.do");
		} else {
			model.addAttribute("msg", "매장 정보가 변경되었습니다.");
			model.addAttribute("loc", "/manageMarketFrm.do");
		}
		return "zipcoock/common/msg";
	}
	
	@RequestMapping(value="/deleteOneMarket.do")
	public String deleteOneMarket(int storeNo, Model model) {
		int result = service.deleteOneMarket(storeNo);
		if (result > 0) {
			model.addAttribute("msg","매장 정보가 삭제되었습니다.");
			model.addAttribute("loc", "/manageMarketFrm.do");
		} else {
			model.addAttribute("msg","매장 정보가 삭제되지 않았습니다.");
			model.addAttribute("loc", "/manageMarketFrm.do");
		}
		return "zipcoock/common/msg";
	}
	
	@RequestMapping(value="/addMenuGroupFrm.do")
	public String addMenuGroupFrm(int storeNo, HttpSession session, Model model) {
		ArrayList<MenuGroup> list = service.selectMenuGroupList(storeNo);
		model.addAttribute("list", list);
		model.addAttribute("storeNo", storeNo);
		return "delivery/seller/addMenuGroupFrm";
	}
	
	@RequestMapping(value="/addMenuGroup.do")
	public String addMenuGroup(MenuGroup mg, Model model) {
		int result = service.addMenuGroup(mg);
		if (result > 0) {
			model.addAttribute("msg","메뉴그룹이 등록되었습니다.");
			model.addAttribute("loc", "/addMenuGroupFrm.do?storeNo=" + mg.getStoreNo());
		} else {
			model.addAttribute("msg","메뉴그룹이 등록되지 않았습니다.");
			model.addAttribute("loc", "/addMenuGroupFrm.do?storeNo=" + mg.getStoreNo());
		}
		return "zipcoock/common/msg";
	}
	
	/*
	@RequestMapping(value="/modifyMenuGroup.do")
	public String modifyMenuGroup(MenuGroup mg, Model model) {
		int result = service.modifyMenuGroup(mg);
		if (result > 0) {
			model.addAttribute("msg","메뉴그룹이 변경되었습니다.");
			model.addAttribute("loc", "/addMenuGroupFrm.do?storeNo=" + mg.getStoreNo());
		} else {
			model.addAttribute("msg","메뉴그룹이 변경되지 않았습니다.");
			model.addAttribute("loc", "/addMenuGroupFrm.do?storeNo=" + mg.getStoreNo());
		}
		return "zipcoock/common/msg";
	}
	*/
	
	@RequestMapping(value="/deleteMenuGroup.do")
	public String deleteMenuGroup(MenuGroup mg, Model model) {
		int result = service.deleteMenuGroup(mg.getGroupNo());
		if (result > 0) {
			model.addAttribute("msg","메뉴그룹이 삭제되었습니다.");
			model.addAttribute("loc", "/addMenuGroupFrm.do?storeNo=" + mg.getStoreNo());
		} else {
			model.addAttribute("msg","메뉴그룹이 삭제되지 않았습니다.");
			model.addAttribute("loc", "/addMenuGroupFrm.do?storeNo=" + mg.getStoreNo());
		}
		return "zipcoock/common/msg";
	}
	
	@RequestMapping(value="/addMenuFrm.do")
	public String addMenuFrm(int groupNo, int storeNo, HttpSession session, Model model) {
		ArrayList<Menu> list = service.selectMenuList(groupNo);
		String groupName = service.selectGroupName(groupNo);
		model.addAttribute("groupNo", groupNo);
		model.addAttribute("storeNo", storeNo);
		model.addAttribute("groupName", groupName);
		model.addAttribute("list", list);
		return "delivery/seller/addMenuFrm";
	}
	
	@RequestMapping(value="/enrollMenuFrm.do")
	public String enrollMenuFrm(int groupNo, int storeNo, Model model) {
		String groupName = service.selectGroupName(groupNo);
		model.addAttribute("groupNo", groupNo);
		model.addAttribute("storeNo", storeNo);
		model.addAttribute("groupName", groupName);
		return "delivery/seller/enrollMenuFrm";
	}
	
	@RequestMapping(value="/menuNameCheck.do")
	@ResponseBody
	public int menuNameCheck(String menuName) {
		String mn = service.selectOneMenuName(menuName);
		if (mn == null) {
			return 0;
		} else {
			return 1;
		}
	}
	
	@RequestMapping(value="/addMenu.do")
	public String addMenu(Menu menu, int storeNo, MultipartFile[] files, HttpServletRequest request, Model model) {
		if (files[0].isEmpty()) {
			// 첨부파일이 없는 경우
		} else {
			// 첨부파일이 있는 경우
			String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/zcdSeller/");
			// 반복문을 이용해서 파일 처리(파일업로드)
			for (MultipartFile file : files) {
				// 사용자가 올린 파일명
				String filename = file.getOriginalFilename(); // 치킨_로고.png
				String onlyFilename = filename.substring(0, filename.indexOf(".")); // 치킨_로고
				String extention = filename.substring(filename.indexOf(".")); // .png
				String filepath = null;
				// 파일명 중복 시 숫자를 붙이는 코드
				int count = 0;
				while (true) {
					if (count == 0) {
						filepath = onlyFilename + extention; // 치킨_로고.png
					} else {
						filepath = onlyFilename + "_" + count + extention; // 치킨_로고_1.png
					}
					File checkFile = new File(savePath + filepath); // /resources/upload/zcdSeller/치킨_로고.png
					if (!checkFile.exists()) {
						break;
					}
					count++;
				}
				// 파일명 중복처리가 끝나면 파일 업로드
				try {
					// 중복처리가 끝난 파일명(filepath)으로 파일을 업로드
					FileOutputStream fos = new FileOutputStream(new File(savePath + filepath));
					// 업로드 속도 증가를 위한 보조스트림
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					// 파일 업로드
					byte[] bytes = file.getBytes();
					bos.write(bytes);
					bos.close();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				menu.setFilename(filename);
				menu.setFilepath(savePath);
			}
		}
		int result = service.addMenu(menu);
		if (result == -1) {
			model.addAttribute("msg", "메뉴가 등록되지 않았습니다.");
			model.addAttribute("loc", "/addMenuFrm.do?groupNo=" + menu.getGroupNo() + "&storeNo=" + storeNo);
		} else {
			model.addAttribute("msg", "메뉴가 등록되었습니다.");
			model.addAttribute("loc", "/addMenuFrm.do?groupNo=" + menu.getGroupNo() + "&storeNo=" + storeNo);
		}
		return "zipcoock/common/msg";
	}
	
	@RequestMapping(value="/selectOneMenu.do")
	public String selectOneMenu(int menuNo, int groupNo, int storeNo, Model model) {
		Menu menu = service.selectOneMenu(menuNo);
		String groupName = service.selectGroupName(groupNo);		
		model.addAttribute("menu", menu);
		model.addAttribute("storeNo", storeNo);
		model.addAttribute("groupNo", groupNo);
		model.addAttribute("groupName", groupName);
		return "delivery/seller/selectOneMenuFrm";
	}
	
	@RequestMapping(value="/modifyMenu.do")
	public String modifyMenu(Menu menu, int status, int storeNo, MultipartFile[] files, HttpServletRequest request, Model model) {
		if (files[0].isEmpty()) {
			// 첨부파일이 없는 경우
			System.out.println("menuname: " + menu.getMenuName());
			System.out.println("menucontent: " + menu.getMenuContent());
			System.out.println("menuprice: " + menu.getMenuPrice());
			System.out.println("status: " + status);
		} else {
			// 첨부파일이 있는 경우
			String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/zcdSeller/");
			// 반복문을 이용해서 파일 처리(파일업로드)
			for (MultipartFile file : files) {
				// 사용자가 올린 파일명
				String filename = file.getOriginalFilename(); // 치킨_로고.png
				String onlyFilename = filename.substring(0, filename.indexOf(".")); // 치킨_로고
				String extention = filename.substring(filename.indexOf(".")); // .png
				String filepath = null;
				// 파일명 중복 시 숫자를 붙이는 코드
				int count = 0;
				while (true) {
					if (count == 0) {
						filepath = onlyFilename + extention; // 치킨_로고.png
					} else {
						filepath = onlyFilename + "_" + count + extention; // 치킨_로고_1.png
					}
					File checkFile = new File(savePath + filepath); // /resources/upload/zcdSeller/치킨_로고.png
					if (!checkFile.exists()) {
						break;
					}
					count++;
				}
				// 파일명 중복처리가 끝나면 파일 업로드
				try {
					// 중복처리가 끝난 파일명(filepath)으로 파일을 업로드
					FileOutputStream fos = new FileOutputStream(new File(savePath + filepath));
					// 업로드 속도 증가를 위한 보조스트림
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					// 파일 업로드
					byte[] bytes = file.getBytes();
					bos.write(bytes);
					bos.close();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				menu.setFilename(filename);
				menu.setFilepath(savePath);
			}
		}
		int result = 0;
		if (status == 1) {
			result = service.modifyMenu(menu);
		} else if (status == 2) {
			result = service.modifyMenu2(menu);
		}
		if (result == -1) {
			model.addAttribute("msg", "메뉴가 변경되지 않았습니다.");
			model.addAttribute("loc", "/addMenuFrm.do?groupNo=" + menu.getGroupNo() + "&storeNo=" + storeNo);
		} else {
			model.addAttribute("msg", "메뉴가 변경되었습니다.");
			model.addAttribute("loc", "/addMenuFrm.do?groupNo=" + menu.getGroupNo() + "&storeNo=" + storeNo);
		}
		return "zipcoock/common/msg";
	}
	
	@RequestMapping(value="/deleteMenu.do")
	public String deleteOneMenu(int menuNo, int groupNo, int storeNo, Model model) {
		int result = service.deleteMenu(menuNo);
		if (result > 0) {
			model.addAttribute("msg","해당 메뉴가 삭제되었습니다.");
			model.addAttribute("loc", "/addMenuFrm.do?storeNo=" + storeNo + "&groupNo=" + groupNo);
		} else {
			model.addAttribute("msg","해당 메뉴가 삭제되지 않았습니다.");
			model.addAttribute("loc", "/addMenuFrm.do?storeNo=" + storeNo + "&groupNo=" + groupNo);
		}
		return "zipcoock/common/msg";
	}
	
	@RequestMapping(value="/addOptionFrm.do")
	public String addOptionFrm(int menuNo, int groupNo, int storeNo, String menuName, Model model) {
		ArrayList<AddMenu> list = service.selectAddMenuList(menuNo);
		String groupName = service.selectGroupName(groupNo);
		model.addAttribute("storeNo", storeNo);
		model.addAttribute("groupNo", groupNo);
		model.addAttribute("groupName", groupName);
		model.addAttribute("menuNo", menuNo);
		model.addAttribute("menuName", menuName);
		model.addAttribute("list", list);
		return "delivery/seller/addOptionFrm";
	}
	
	@RequestMapping(value="/deleteOption.do")
	public String deleteOption(int addmenuNo, int menuNo, int groupNo, int storeNo, String menuName, Model model) {
		int result = service.deleteOption(addmenuNo);
		if (result > 0) {
			model.addAttribute("msg","해당 선택메뉴가 삭제되었습니다.");
			model.addAttribute("loc", "/addOptionFrm.do?menuNo=" + menuNo + "&storeNo=" + storeNo + "&groupNo=" + groupNo + "&menuName=" + menuName);
		} else {
			model.addAttribute("msg","해당 선택메뉴가 삭제되지 않았습니다.");
			model.addAttribute("loc", "/addOptionFrm.do?menuNo=" + menuNo + "&storeNo=" + storeNo + "&groupNo=" + groupNo + "&menuName=" + menuName);
		}
		return "zipcoock/common/msg";
	}
	
	@RequestMapping(value="/addMenuOption.do")
	public String addMenuOption(AddMenu addmenu, int groupNo, int storeNo, String menuName, Model model) {
		int result = service.addMenuOption(addmenu);
		if (result > 0) {
			model.addAttribute("msg","선택메뉴가 등록되었습니다.");
			model.addAttribute("loc", "/addOptionFrm.do?menuNo=" + addmenu.getMenuNo() + "&storeNo=" + storeNo + "&groupNo=" + groupNo + "&menuName=" + menuName);
		} else {
			model.addAttribute("msg","선택메뉴가 등록되지 않았습니다.");
			model.addAttribute("loc", "/addOptionFrm.do?menuNo=" + addmenu.getMenuNo() + "&storeNo=" + storeNo + "&groupNo=" + groupNo + "&menuName=" + menuName);
		}
		return "zipcoock/common/msg";
	}
	
	@RequestMapping(value="/marketView.do")
	public String marketView(int storeNo, int memberNo, HttpSession session, Model model) {
		ZcdStore zs = service.selectOneMarket(storeNo);
		String businessNo = service.selectBusinessNo(memberNo);
		String sellerName = service.selectSellerName(memberNo);
		ArrayList<MenuGroup> menuGrouplist = service.selectGroupList(storeNo);
		ArrayList<Menu> menulist = service.selectAllMenuList();
		/*
		for (int i=0; i<menuGrouplist.size(); i++) {
			int groupNo = menuGrouplist.get(i).getGroupNo();
			System.out.println(groupNo);
			ArrayList<Menu> menulist = service.selectMenuList(groupNo);
		}
		*/

		model.addAttribute("zs", zs);
		model.addAttribute("businessNo", businessNo);
		model.addAttribute("sellerName", sellerName);
		model.addAttribute("menuGrouplist", menuGrouplist);
		model.addAttribute("menulist", menulist);
		return "delivery/seller/marketView";
	}
	
	@RequestMapping(value="/menuPopup.do", method = RequestMethod.GET)
	public String popupGet(Model model, @RequestParam(value="menuNo", defaultValue="") int menuNo) throws Exception {
		Menu menu = service.selectOneMenu(menuNo);
		model.addAttribute("menu", menu);
		return "delivery/seller/menuPopup";
	}
	
}
