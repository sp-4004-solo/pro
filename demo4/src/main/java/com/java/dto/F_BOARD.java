package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
//프로젝트 제작시 변수 소문자로 변경할것
public class F_BOARD {
	private int f_bno;//게시글 번호
	private int free_seq;//회원일련번
	private String f_btitle;//게시글 제목
	private String f_bcontent;//게시글 내용
	private Timestamp f_bdate;//게시글 작성일
	private int f_hit;//게시글 조회수
	private String user_id;//사용자 아이디
	
}

