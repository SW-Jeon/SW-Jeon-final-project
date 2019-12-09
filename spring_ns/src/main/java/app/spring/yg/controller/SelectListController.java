package app.spring.yg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.spring.vo.DetailVo;
import app.spring.vo.FindimgVo;
import app.spring.yg.service.SelectListService;

@Controller
public class SelectListController {
	@Autowired SelectListService service;
	@RequestMapping(value="/searchList")	
	public ModelAndView searchList(String keyword){
		List<DetailVo> list=service.searchList(keyword);
		ModelAndView mv=new ModelAndView(".yg.searchList");
		mv.addObject("list",list);
		mv.addObject("d_addr",keyword);
		return mv;
	}
}
