package app.spring.hs.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import app.spring.hs.service.DetailService;
import app.spring.vo.DetailVo;
import app.spring.vo.FindimgVo;
import app.spring.vo.FindmenuVo;
import app.spring.yg.service.SelectListService;

@Controller
public class DetailController {
		@Autowired private DetailService service;
		@Autowired private SelectListService service2;
		@RequestMapping(value="/detailpage")	

		public ModelAndView detailpg(String name,int d_num,HttpSession session){
			String phone=(String)session.getAttribute("m_phone");
			List<DetailVo> list=service.finddetail(name);
			List<FindimgVo> list1=service.findimg(name);
			List<FindmenuVo> list2=service.findmenu(name);
			service2.increhit(d_num);
			if(phone!=null){
				Map<String, Object> values=new HashMap<String, Object>();
				values.put("m_phone", phone);
				values.put("d_num", d_num);
				if(service2.checkfood(values)==null){
					service2.joinfood(values);
				}
			}
			ModelAndView mv=new ModelAndView(".detailpage.detailpg");
			mv.addObject("phone",phone);
			mv.addObject("list",list);
			mv.addObject("list1",list1);
			mv.addObject("list2",list2);
			mv.addObject("name",name);
			if(phone!=null){
				int count=service2.foodcount(phone);
				List<DetailVo> flist=service2.foodlist(phone);
				mv.addObject("count",count);
				mv.addObject("flist",flist);
			}
			return mv;
		}
}
