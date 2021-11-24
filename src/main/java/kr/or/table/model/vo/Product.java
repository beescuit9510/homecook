package kr.or.table.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
	private int productNo;
	private int memberNo;
	private String modelName;
	private String productDetail;
	private int stock;
	private String howToUse;
	private String precautions;
	private String expirationDate;
	private String capacity;
	private String orign;//country of origin 
	private String matufacturer;
	private String managerContact;
	private String consumerCounselingContact;
	private int productCategory;
	private int boardCategory;
}
