package app.spring.hs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.spring.hs.service.DetailService;
import app.spring.hs.service.ZzimListService;
import app.spring.hs.service.ZzimService;
import app.spring.sw.service.MemService;
import app.spring.vo.Criteria;
import app.spring.vo.DetailVo;
import app.spring.vo.FindimgVo;
import app.spring.vo.FindmenuVo;
import app.spring.vo.ZzimListVo;
import app.spring.vo.ZzimPageVo;


@Controller
public class ZzimListController {
	@Autowired private ZzimListService service;
	@Autowired private ZzimService service1;
	@Autowired private DetailService service2;
	@Autowired private MemService service3;
	
	@RequestMapping("/zzimlists")
	public ModelAndView zzimlists(Criteria cri,HttpSession session) throws Exception{
		System.out.println(cri.getPage()+","+cri.getPerPageNum());
		ZzimPageVo vo1=new ZzimPageVo();
		vo1.setCri(cri);
		int totalNum=service.zzimcount();
		cri.setCounts(totalNum);
		System.out.println(totalNum);
		vo1.setTotalCount(service.zzimcount());
		String m_phone=(String)session.getAttribute("m_phone");
		cri.setM_phone(m_phone);
		List<ZzimListVo> dto=service.listpage(cri);
		ModelAndView mv = new ModelAndView(".zzim.zzimlist");
		mv.addObject("vo1",vo1);
		mv.addObject("list",dto);
		mv.addObject("vo", service3.getInfo(m_phone));
		return mv;
	}
	@RequestMapping("/zzimdel")
	public String zzimdel(int d_num){
		service1.delete(d_num);
		 
		return "redirect:/zzimlists";
	}
	@RequestMapping("/zzimdetail")
	public ModelAndView zzimdetail(HttpSession session,String name){
		List<DetailVo> list=service2.finddetail(name);
		List<FindimgVo> list1=service2.findimg(name);
		List<FindmenuVo> list2=service2.findmenu(name);
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
