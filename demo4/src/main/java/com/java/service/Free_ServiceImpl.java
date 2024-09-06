package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.F_BOARD;
import com.java.dto.F_BOARD_COMENT;
import com.java.dto.PageDto;
import com.java.mapper.FreeMapper;

@Service
public class Free_ServiceImpl implements Free_Service{
	
	@Autowired FreeMapper freeMapper;

	@Override
	public ArrayList<F_BOARD> selectFreeAll(F_BOARD fb) {
		ArrayList<F_BOARD> list = freeMapper.selectFreeAll(fb);
		return list;
	}

	@Override
	public void deleteOne(int f_bno) {
		freeMapper.deleteOne(f_bno);
		
	}
	
	@Override
	public void insertOne(F_BOARD fb) {
		freeMapper.insertOne(fb);
	}
	
	
	// 댓글작성
	@Override
	public HashMap<String, Object> selectAllFBoard(PageDto pageDto) {
		HashMap<String, Object> map = new HashMap<>();
		pageDto = pageMethod(pageDto);
		System.out.println("스타트로우"+pageDto.getStartRow());
		System.out.println("엔드로우"+pageDto.getEndRow());
		ArrayList<F_BOARD>list = freeMapper.selectAllFBoard(pageDto);
		System.out.println("list"+list.size());
		map.put("list", list);
		map.put("pageDto", pageDto);
		return map;
	}
	
	//댓글작성
	public PageDto pageMethod(PageDto pageDto) {
		//전체 게시글수 저장
		pageDto.setListCount(freeMapper.selectListcount());
		//최대 넘버링페이지
		pageDto.setMaxPage((int)Math.ceil((double)pageDto.getListCount()/5));
		//시작 넘버링페이지
		pageDto.setStartPage((int)((pageDto.getPage()-1)/10)*10+1);
		//끝 넘버링페이지
		pageDto.setEndPage(pageDto.getStartPage()+10-1);
		//게시글 시작번호
		pageDto.setStartRow((pageDto.getPage()-1)*5+1);
		//게시글 끝나는 번호
		pageDto.setEndRow(pageDto.getStartRow()+5-1);
		
		System.out.println(pageDto.getStartPage());
		System.out.println(pageDto.getEndPage());
		System.out.println(pageDto.getMaxPage());
		
		return pageDto;
	}

//	@Override
//	public F_BOARD_COMENT insertCommentOne(F_BOARD_COMENT fCdto) {
//		System.out.println("서비스 임플"+fCdto.getC_content());
//		F_BOARD_COMENT fCm = freeMapper.insertCommentOne(fCdto);
//		return fCm;
//	}

	@Override
	public HashMap<String, Object> selectOneFBoard(int f_bno, PageDto pageDto) {
		HashMap<String, Object>map = new HashMap<>();
		F_BOARD fboard = freeMapper.selectOneFBoard(f_bno);
		F_BOARD prev = freeMapper.selectPrevFBoard(f_bno);
		F_BOARD next = freeMapper.selectNextFBoard(f_bno);
		ArrayList<F_BOARD_COMENT>  fCm   = freeMapper.selectComAll(f_bno);
		System.out.println(f_bno);
		//System.out.println(fCm.get(0).getC_content());확인하고 넘기
		
		map.put("fboard", fboard);
		map.put("prev", prev);
		map.put("next", next);
		return map;
	}

	@Override
	public F_BOARD selectOne(int f_bno) {
		F_BOARD fb = freeMapper.selectOne(f_bno);
		return fb;
	}

	@Override
	public void updateOne(F_BOARD board) {
		freeMapper.updateOne(board);
		
	}






	
	


}
