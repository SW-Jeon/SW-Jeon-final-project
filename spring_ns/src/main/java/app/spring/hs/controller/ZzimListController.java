package app.spring.hs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import app.spring.hs.service.ZzimListService;
import app.spring.vo.Criteria;
import app.spring.vo.ZzimListVo;
import app.spring.vo.ZzimPageVo;


@Controller
public class ZzimListController {
	@Autowired private ZzimListService service;
	@RequestMapping("/zzimlists")
	public ModelAndView zzimlists(@ModelAttribute("cri") Criteria cri, HttpSession session) throws Exception{
		
		ZzimPageVo vo=new ZzimPageVo();
		vo.setCri(cri);
		int totalNum=service.zzimcount();
		System.out.println(totalNum);
		vo.setTotalCount(totalNum);
		String m_phone=(String)session.getAttribute("m_phone");
		cri.setM_phone(m_phone);
		List<ZzimListVo> dto=service.listpage(cri);
		ModelAndView mv = new ModelAndView(".zzim.zzimlist");
		mv.addObject("vo",vo);
		mv.addObject("list",dto);
		return mv;
	}
}
