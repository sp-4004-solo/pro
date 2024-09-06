package com.java.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.F_BOARD;
import com.java.dto.F_BOARD_COMENT;
import com.java.dto.PageDto;




@Mapper
public interface FreeMapper {

	ArrayList<F_BOARD> selectFreeAll(F_BOARD fb);

	void insertOne(F_BOARD fb);

	void deleteOne(int f_bno);

	int selectListcount();

	ArrayList<F_BOARD> selectAllFBoard(PageDto pageDto);
	
	F_BOARD selectOneFBoard(int f_bno);

	F_BOARD selectPrevFBoard(int f_bno);

	F_BOARD selectNextFBoard(int f_bno);

//	F_BOARD_COMENT insertCommentOne(F_BOARD_COMENT fCdto);

	ArrayList<F_BOARD_COMENT> selectComAll(int f_bno);

	F_BOARD selectOne(int f_bno);

	void updateOne(F_BOARD board);



	

	
	

	

	

	

	


	

	
}
