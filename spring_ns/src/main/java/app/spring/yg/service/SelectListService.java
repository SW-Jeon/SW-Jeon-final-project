package app.spring.yg.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.vo.BlogInfoVo;
import app.spring.vo.BlogVo;
import app.spring.vo.DetailVo;
import app.spring.vo.EditorVo;
import app.spring.vo.FoodVo;
import app.spring.vo.SearchListVo;
import app.spring.yg.dao.SelectListDao;

@Service
public class SelectListService {
	@Autowired private SelectListDao dao;
	
	public List<SearchListVo> searchList(Map<String, Object>values){
		return dao.searchList(values);
	}
	public int increhit(int d_num){
		return dao.increhit(d_num);
	}
	public int recount(int d_num){
		return dao.recount(d_num);
	}
	public FoodVo checkfood(Map<String, Object>values){
		return dao.checkfood(values);
	}
	public int joinfood(Map<String, Object>values){
		return dao.joinfood(values);
	}
	public List<DetailVo>foodlist(String m_phone){
		return dao.foodlist(m_phone);
	}
	public int foodcount(String m_phone){
		return dao.foodcount(m_phone);
	}
	public int fooddelete(String m_phone){
		return dao.fooddelete(m_phone);
	}
	public int foodautodel(Map<String, Object>values){
		return dao.foodautodel(values);
	}
	public int searchCount(Map<String, Object>values){
		return dao.searchcount(values);
	}
	public int searchblogname(String m_phone){
		return dao.searchblogname(m_phone);
	}
	public List<BlogVo>searchbloglist(){
		return dao.searchbloglist();
	}
	public List<BlogInfoVo> bloginfo(String m_phone){
		return dao.bloginfo(m_phone);
	}
	public int insertblogname(BlogVo vo){
		return dao.insertblogname(vo);
	}
	public int inserteditor(EditorVo vo){
		return dao.inserteditor(vo);
	}
	public int blogdelete(int ed_num){
		return dao.blogdelete(ed_num);
	}
	public int updateeditor(EditorVo vo){
		return dao.updateeditor(vo);
	}
	public BlogVo searchmybloginfo(String m_phone){
		return dao.searchmybloginfo(m_phone);
	}
	public EditorVo searchtext(int ed_num){
		return dao.searchtext(ed_num);
	}
	public List<BlogInfoVo> bloginfo2(String bl_name){
		return dao.bloginfo2(bl_name);
	}
	public BlogVo searchyourbloginfo(String bl_name){
		return dao.searchyourbloginfo(bl_name);
	}
}
