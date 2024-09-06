package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.User_review;
import com.java.mapper.ReviewMapper;
@Service
public class Review_ServiceImpl implements Review_service{
	@Autowired ReviewMapper rmMapper;

	@Override
	public ArrayList<User_review> selectReviewAll(User_review urReview) {
		ArrayList<User_review> list = rmMapper.selectReviewAll(urReview);
		return list;
	}

	@Override
	public User_review selectOne(int review_no) {
		User_review ur = rmMapper.selectOne(review_no);
		return ur;
	}

	@Override
	public void insertOne(User_review ur) {
		System.out.println(ur);
		rmMapper.insertOne(ur);
		
	}
	
}
