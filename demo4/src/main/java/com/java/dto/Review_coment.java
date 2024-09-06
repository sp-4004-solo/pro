package com.java.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Review_coment {
	public int review_comment_no;//댓글 번호
	public int review_no;//후기 번호
	public int user_seq2;//회원일련번호
	public int review_content;//댓글 내용
	
}

