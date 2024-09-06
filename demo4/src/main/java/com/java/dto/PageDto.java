package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
//프로젝트 제작시 변수 소문자로 변경할것
public class PageDto {
	private int page = 1; 
	private int listCount;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int startRow;
	private int endRow;
	private int rowPerPage=5;//기본적으로 표시할 페이지수 
	private int numberingPerPage = 5;//한개의 페이지에 몇개를 보여줄지 여부
	
}

