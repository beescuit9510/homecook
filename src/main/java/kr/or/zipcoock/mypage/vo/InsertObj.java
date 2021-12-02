package kr.or.zipcoock.mypage.vo;

import kr.or.table.model.vo.Address;
import kr.or.table.model.vo.HomepageQna;
import kr.or.table.model.vo.ProductLike;
import kr.or.table.model.vo.ProductReview;
import kr.or.table.model.vo.Qna;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InsertObj {
	private Qna qna;
	private ProductReview review;
	private Address address;
	private HomepageQna hQna;
	private ProductLike like;
	
	
}
