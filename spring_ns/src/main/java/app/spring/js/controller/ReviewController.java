package app.spring.js.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.js.service.ReviewService;
import app.spring.vo.ReviewVo;

@Controller
public class ReviewController {
	@Autowired private ReviewService service;
	
	@RequestMapping(value="/pj/review",method=RequestMethod.GET)
	public String reviewForm(ReviewVo vo){
		return "/pj/review";
	}
}
