package app.spring.hs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.spring.hs.service.DetailService;
import app.spring.vo.DetailVo;
import app.spring.vo.FindimgVo;

@Controller
public class DetailController {
		@Autowired private DetailService service;
		@RequestMapping(value="/detailpage")	
		public ModelAndView detailpg(String name){
			List<DetailVo> list=service.finddetail(name);
			List<FindimgVo> list1=service.findimg(name);
			ModelAndView mv=new ModelAndView(".detailpage.detailpg");
			mv.addObject("list",list);
			mv.addObject("list1",list1);
			mv.addObject("name",name);
			return mv;
		}
}
