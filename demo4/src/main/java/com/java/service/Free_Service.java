package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.java.dto.F_BOARD;
import com.java.dto.F_BOARD_COMENT;
import com.java.dto.PageDto;




public interface Free_Service {

	ArrayList<F_BOARD> selectFreeAll(F_BOARD fb);

	void insertOne(F_BOARD fb);

	void deleteOne(int f_bno);

	HashMap<String, Object> selectAllFBoard(PageDto pageDto);

//	F_BOARD_COMENT insertCommentOne(F_BOARD_COMENT fCdto);

	HashMap<String, Object> selectOneFBoard(int f_bno, PageDto pageDto);

	F_BOARD selectOne(int f_bno);

	void updateOne(F_BOARD board);

	
	
	

	

	
	






	

}
