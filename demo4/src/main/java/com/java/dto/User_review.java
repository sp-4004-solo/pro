package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class User_review {
	private int review_no;//후기넘버
	private int user_seq2;//회원일련번호
	private String user_id;//사용자 아이디
	private String review_title;//후기 제목
	private String area;//지역 카테고리
	private String review_content;//후기 내용
	private String review_image;//지역 이미지
	private Timestamp review_date;//후기 작성날짜
	private String review_hit;//후기 조회수
	private String review_likes;//후기 좋아요
}

