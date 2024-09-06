package com.java.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor

public class Product {
	private int p_num;//상품고유번호
	private String product;//상품고유번호
	private String daily_product_category;//생활용품 카테고리
	private String name;//상품이름
	private String company;//상품제조사
	private int price;//상품가격 
	private int stock;//상품재고
	private String bookmark;//상품찜하기
	private String basket;//장바구니
	private String image;// 상품이미지
	private String howuse;//상품사용방법
	private String description;//상품설명
	private String medical_precautions;//주의사항
	private String side_effects;//부작용(이상반응)
	private String medical_storage;//보관방법
	private String medical_becareful;//주의할 약과음식
	private String row_material;
	

	
	
}


