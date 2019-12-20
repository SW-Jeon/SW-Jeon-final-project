package app.spring.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.js.dao.BusinessDao;
import app.spring.js.dao.ReviewDao;
import app.spring.vo.ReviewVo;

@Service
public class ReviewService {
	@Autowired private ReviewDao rDao;
	//리뷰 등록
	public int insert(ReviewVo vo){
		return rDao.insert(vo);
	}
	public List<ReviewVo> list(){
		return rDao.list();
	}
	public List<ReviewVo> list2(int d_num){
		return rDao.list2(d_num);
	}
}
