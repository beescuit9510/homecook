package kr.or.seller.model.vo;

import java.util.ArrayList;


import kr.or.table.model.vo.Product;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SellerSaleManage {
	private int rnum;
	private int paymentInfoCode;
	private String paymentMethod;
	private int price;
	private String orderDate;
	private String isDelevered;
	
}
