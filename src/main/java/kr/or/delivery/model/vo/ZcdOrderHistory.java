package kr.or.delivery.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ZcdOrderHistory {
	private int orderNo;
	private int memberNo;
	private int storeNo;
	private String storeName;
	private String orderRequest;
	private String orderState;
	private Date orderTime;
	private String orderAddress;
	private String orderAddress2;
}
