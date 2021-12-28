package kr.or.delivery.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ZcdReview {
	
	private int reviewNo;
	private int storeNo;
	private int memberNo;
	private int orderNo;
	private String storeName;
	private Date reviewDate;
	private String reviewContent;
	private String reviewState;

}
