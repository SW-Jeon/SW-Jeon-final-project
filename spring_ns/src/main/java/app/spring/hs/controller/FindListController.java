package app.spring.hs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.spring.hs.service.DetailService;
import app.spring.vo.DetailVo;

@Controller
public class FindListController {
	@Autowired private DetailService service;
	
	@RequestMapping("/findlist")
	public ModelAndView findlist(String d_addr){
		List<DetailVo> list=service.findlist(d_addr);
		ModelAndView mv=new ModelAndView(".api.api");
		mv.addObject("list",list);
		mv.addObject("d_addr",d_addr);
		System.out.println(list);
		return mv;
	}
}