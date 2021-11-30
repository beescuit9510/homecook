package kr.or.table.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Pruduct_Img 
{
	private int productImgNo;
	private String fileName;
	private String filePath;
	private int productNo;
	private String mainImg;
}
