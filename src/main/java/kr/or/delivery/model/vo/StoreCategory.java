package kr.or.delivery.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StoreCategory {
	private int ctNo;
	private int memberNo;
	private String ct1;
	private String ct2;
	private String filename;
	private String filepath;
}
