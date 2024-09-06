package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Order_M {
	private int order_no;//주문번호
	private int user_seq;//회원일련번호
	private String drone;//드론아이디
	private int order_price;;//결제금액
	private Timestamp order_date;//주문날짜
	private String card_company;//결제카드회사
	private String order_status;//주문현황
	private String refunt_reason;//환불사유
	private String ricipient_name;//받는분 성함
	private String zone_code;//우편번호
	private String addr;//받는분 주소
	private String order_recipient;//받는분 전화번호
	private String order_request;//배송요청사항
	private int item_count;//주문상품개수
	private String main_product;//대표 상품
	private String main_image;//대표 이미지
	private String reserv;//예약여부
	private String emergency;//긴급여부
	private String status;//판매상태
	
	
	

}
