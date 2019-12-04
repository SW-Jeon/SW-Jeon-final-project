package app.spring.hs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import app.spring.hs.service.DetailService;
import app.spring.hs.vo.DetailVo;


@Controller
public class FindListController {
	@Autowired private DetailService service;
	
	@RequestMapping(value="/findlist",method=RequestMethod.POST)
	public String findlist(String addr,Model model){
		List<DetailVo> list=service.findlist(addr);
		//ModelAndView mv=new ModelAndView(".api.api");
		//mv.addObject("list",list);
		//mv.addObject("addr",addr);
		
		model.addAttribute("list",list);
		
		return ".api.api";
		
	}
}
