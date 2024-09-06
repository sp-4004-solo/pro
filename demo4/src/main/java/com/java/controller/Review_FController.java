package com.java.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.dto.F_BOARD;
import com.java.dto.User_review;
import com.java.service.Review_service;


@Controller

public class Review_FController {
	
	@Autowired Review_service rService;
	
	@RequestMapping("/header/free_top")
	public String free_top() {
		return "header/free_top";
	}
	@RequestMapping("/ex_review_b_list")
	public String ex_review_b_list(User_review urReview  ,Model model) {
		ArrayList<User_review> list = rService.selectReviewAll(urReview);
		model.addAttribute("list",list);
		return "ex_review_b_list";
	}

	@RequestMapping("/ex_review_b_view")
	public String doex_review_b_view(@RequestParam(defaultValue = "0") 
	Integer review_no, Model model) {
		User_review ur = rService.selectOne(review_no);
		return "ex_review_b_view";
	}
	
	@GetMapping("/ex_review_b_write")
	public String ex_review_b_write() {
		System.out.println("Get방식");
		return "ex_review_b_write";
	}
	
	@PostMapping("/ex_review_b_write")
	public String doex_review_b_write(User_review ur) {
		System.out.println("Post방식");
		System.out.println(ur.getUser_id());
		System.out.println(ur.getReview_title());
		System.out.println(ur.getReview_content());
		System.out.println(ur.getArea());
		System.out.println(ur.getReview_image());
		
		rService.insertOne(ur);
		return "redirect:ex_review_b_list";
	}
	
//	@PostMapping("/ex_free_b_write")
//	public String doex_free_b_write(F_BOARD fb) {
//		System.out.println("Post방식");
//		System.out.println("아이디 : "+fb.getUser_auth_id());
//		System.out.println("내용 : "+fb.getF_bcontent());
//		System.out.println("제목 : "+fb.getF_btitle());
//		free_Service.insertOne(fb);
//		return "redirect:ex_free_b_list";
//	}
//	
	@RequestMapping("/ex_review_b_delete")
	public String ex_review_b_delete() {
		return "redirect:ex_review_b_list";
	}
	
	
	@RequestMapping("/ex_review_b_modi")
	public String ex_review_b_modi() {
		return "ex_review_b_modi";
	}
	
	
	
	








}
