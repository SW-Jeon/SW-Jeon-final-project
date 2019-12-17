package app.spring.yg.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.spring.vo.DetailVo;
import app.spring.vo.SearchListVo;
import app.spring.yg.service.SelectListService;

@Controller
public class SelectListController {
	@Autowired SelectListService service;
	@RequestMapping(value="/searchList")	
	public ModelAndView searchList(String keyword,String standard){
		Map<String, Object> values=new HashMap<String, Object>();
		values.put("keyword", keyword);
		if(standard==null){
			standard="d_hit desc";
		}
		values.put("standard", standard);
		List<SearchListVo> list=service.searchList(values);
		for(SearchListVo vo:list){
			vo.setR_count(service.recount(vo.getD_num()));
		}
		ModelAndView mv=new ModelAndView(".yg.searchList");
		mv.addObject("list",list);
		mv.addObject("keyword",keyword);
		mv.addObject("standard",standard);
		return mv;
	}
}
