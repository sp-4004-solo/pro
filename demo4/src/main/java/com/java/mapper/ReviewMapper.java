package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.User_review;



@Mapper
public interface ReviewMapper {

	ArrayList<User_review> selectReviewAll(User_review urReview);

	User_review selectOne(int review_no);

	void insertOne(User_review ur);


}
