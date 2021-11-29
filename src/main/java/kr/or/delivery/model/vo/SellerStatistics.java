package kr.or.delivery.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SellerStatistics {
	private int sstatisNo;
	private int memberNo;
	private int sdayStatistics;
	private int smonthStatistics;
}
