package app.spring.hs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.spring.hs.service.DetailService;
import app.spring.vo.DetailVo;
import app.spring.vo.FindimgVo;
import app.spring.vo.FindmenuVo;

@Controller
public class DetailController {
		@Autowired private DetailService service;
		@RequestMapping(value="/detailpage")	

		public ModelAndView detailpg(String name,HttpSession session){
			List<DetailVo> list=service.finddetail(name);
			List<FindimgVo> list1=service.findimg(name);
			List<FindmenuVo> list2=service.findmenu(name);
			String phone=(String)session.getAttribute("m_phone");
			ModelAndView mv=new ModelAndView(".detailpage.detailpg");
			mv.addObject("phone",phone);
			mv.addObject("list",list);
			mv.addObject("list1",list1);
			mv.addObject("list2",list2);
			mv.addObject("name",name);
			return mv;
		}
}
