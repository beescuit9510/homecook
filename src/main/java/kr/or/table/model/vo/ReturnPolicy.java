package kr.or.table.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReturnPolicy {

	private int returnPolicyNo;
	private int productNo;
	private String shippingMethod;
	private String shippingcompany;
	private String shippingFee;
	private String shipping_period;
}
