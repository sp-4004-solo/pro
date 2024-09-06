package com.java.service;

import java.util.ArrayList;

import com.java.dto.User_review;







public interface Review_service {

	ArrayList<User_review> selectReviewAll(User_review urReview);

	User_review selectOne(int review_no);

	void insertOne(User_review ur);



	

	
	
	
}
