package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
//프로젝트 제작시 변수 소문자로 변경할것
public class F_BOARD_COMENT {
	private int board_comment_no;//댓글 번호
	private int f_bno;//게시글 번호
	private int user_seq;//회원일련번호
	private String c_content;//댓글 내용
	private String c_pw;//비밀번호
	
}
