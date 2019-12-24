package app.spring.hs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.spring.hs.service.AdlistService;
import app.spring.vo.AdPageVo;
import app.spring.vo.AdlistVo;
import app.spring.vo.Criteria;

@Controller
public class AdlistController {
	@Autowired private AdlistService service;
	@RequestMapping("/adlist")
	public ModelAndView adlist(Criteria cri){
		AdPageVo vo=new AdPageVo();
		vo.setCri(cri);
		int totalNum=service.adcount();
		System.out.println(totalNum);
		cri.setCounts(totalNum);
		System.out.println(cri.getPage());
		vo.setTotalCount(totalNum);
		List<AdlistVo> list = service.adlist(cri);
		ModelAndView mv = new ModelAndView(".admin.addtable.adlist");
		mv.addObject("vo",vo);
		mv.addObject("list",list);
		return mv;
		
	}
}
