package com.java.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.F_BOARD;
import com.java.dto.F_BOARD_COMENT;
import com.java.dto.PageDto;
import com.java.dto.User_review;
import com.java.service.Free_Service;

import jakarta.mail.Session;

@Controller

public class Free_FController {
	
	@Autowired Free_Service free_Service;
	
//	@RequestMapping("/ex_free_b_list")
//	public String ex_free_b_list(Model model,F_BOARD fb) {
//		//System.out.println(fb);
//		ArrayList<F_BOARD> list = free_Service.selectFreeAll(fb);
//		model.addAttribute("list",list);
//		return "ex_free_b_list";
//	}
	
	@RequestMapping("/ex_free_b_list")
	public String ex_free_b_list(Model model,PageDto pageDto) {
		//게시글과 연결됨
		HashMap<String, Object>map = free_Service.selectAllFBoard(pageDto);
		System.out.println(map.get("list")); 
		model.addAttribute("list",map.get("list"));
		model.addAttribute("pageDto",map.get("pageDto"));
		return "ex_free_b_list";
	}
	
	@RequestMapping("/ex_free_b_view")
	public String ex_free_b_view(Model model, int f_bno,PageDto pageDto) { 
		System.out.println("게시글 하나 / 컨트롤러"+f_bno);
		//게시글 가져오기
		HashMap<String, Object>map = free_Service.selectOneFBoard(f_bno,pageDto);
		model.addAttribute("fboard",map.get("fboard"));//f_bno게시글
		model.addAttribute("prev",map.get("prev"));
		model.addAttribute("next",map.get("next"));
		model.addAttribute("f_bno",f_bno);
		return "ex_free_b_view";
	}
	
	
	@GetMapping("/ex_free_b_write")
	public String ex_free_b_write() {//보여주는 화면
		System.out.println("Get방식");
		return "ex_free_b_write";
	}
	
	@PostMapping("/ex_free_b_write")
	public String doex_free_b_write(F_BOARD fb) {
		System.out.println("Post방식");
		System.out.println("아이디 : "+fb.getUser_id());
		System.out.println("내용 : "+fb.getF_bcontent());
		System.out.println("제목 : "+fb.getF_btitle());
		free_Service.insertOne(fb);
		return "redirect:ex_free_b_list";
	}
	
	@RequestMapping("/ex_free_b_delete")
	public String ex_free_b_delete(String f_bno) {
		int f_bno1 = Integer.parseInt(f_bno);
		System.out.println("delete"+f_bno);
		free_Service.deleteOne(f_bno1);
		return "redirect:ex_free_b_list";
	}
	
	
	@GetMapping("/ex_free_b_modi")
	public String ex_free_b_modi(int f_bno, Model model) {
		System.out.println("ex_free_b_modi bno : "+ f_bno);
		F_BOARD board = free_Service.selectOne(f_bno);
		board.setF_bno(f_bno);
		model.addAttribute("board",board);
		return "ex_free_b_modi";
	}
	
	
	@PostMapping("/ex_free_b_modi")
	public String doex_free_b_modi(F_BOARD board, int f_bno) {
		System.out.println("확인 board"+board);
		System.out.println("확인"+f_bno);
		free_Service.updateOne(board);
		return "redirect:ex_free_b_list";
	}
	
	
	//댓글작성
	@RequestMapping("/cInsertOne")
	@ResponseBody
	public String cInsertOne(F_BOARD_COMENT fCdto) {
		System.out.println("댓글 입력 테스트중");
		// comdto jsp에서 전달받은 값
		System.out.println(fCdto.getC_content());
		
		// 새로 dto를 만들어서 jsp전송할 값 > data 
//		F_BOARD_COMENT fCm = free_Service.insertCommentOne(fCdto);
		return "fCm";
	}
	
	






}
