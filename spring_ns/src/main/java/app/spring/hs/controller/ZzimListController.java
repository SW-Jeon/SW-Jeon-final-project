package app.spring.hs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.spring.hs.service.ZzimListService;
import app.spring.vo.ZzimListVo;

@Controller
public class ZzimListController {
	@Autowired private ZzimListService service;
	@RequestMapping("/zzimlists")
	public ModelAndView zzimlists(HttpSession session){
		String phone=(String)session.getAttribute("m_phone");
		List<ZzimListVo> list=service.zzimlist(phone);
		ModelAndView mv = new ModelAndView(".zzim.zzimlist");
		System.out.println(list);
		mv.addObject("list",list);
		return mv;
	}
}
