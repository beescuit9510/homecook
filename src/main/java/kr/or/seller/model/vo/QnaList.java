package kr.or.seller.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QnaList {
	private int qnaNo;
	private int memberNo;
	private int productRefNo;
	private int qnaRefNo;
	private int qnaLevel;
	private int qnaAnswer;
	private String qnaTitle;
	private String qnaContent;
	private String writeDate;

}
