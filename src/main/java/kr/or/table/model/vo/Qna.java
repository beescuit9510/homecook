package kr.or.table.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Qna {
	private int qnaNo;
	private int memberNo;
	private int qnaRefNo;
	private String qnaTitle;
	private String writeDate;
	private String qnaContent;
	private int qnaLevel;
	private int productRefNo;

}
