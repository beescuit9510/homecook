package kr.or.delivery.model.vo;

import lombok.Data;

@Data
public class ZcdCart {

	private int cartNo;
	private int memberNo;
	private int storeNo;
	private int menuNo;
	private int menuAllprice;
	private int amount;
	private String addmenuInfo1;
	private String addmenuInfo2;
	
}
