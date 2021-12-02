package kr.or.zipcoock.mypage.vo;

import java.util.ArrayList;

import kr.or.table.model.vo.Address;
import kr.or.table.model.vo.Qna;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SelectList {
	private ArrayList<Qna> q;
	private ArrayList<Address> addr;
}
