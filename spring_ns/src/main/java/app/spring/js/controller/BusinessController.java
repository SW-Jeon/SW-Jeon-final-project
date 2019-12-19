package app.spring.js.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import app.spring.js.service.BusinessService;
import app.spring.vo.BusinessVo;

@Controller
public class BusinessController {
	@Autowired private BusinessService service;
	
	@RequestMapping(value="/pj/business",method=RequestMethod.GET)
	public String insertForm(BusinessVo vo){
		return ".pj.business";
		
	}

	@RequestMapping(value="/yg/test",method=RequestMethod.GET)
	public String road(BusinessVo vo){
		return ".yg.editor";
		
	}
	
	
	//업체등록
	@RequestMapping(value="/pj/business",method=RequestMethod.POST)
	public String insert(BusinessVo vo,Model model){
		try{
			service.insert(vo);
			return ".main";
		} catch(Exception e){
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".sw	Mem.result";
		}
	}
	

	//업체목록
	@RequestMapping(value="/admin/businessList",method=RequestMethod.GET)
	public String list(Model model)	{
		try{
			List<BusinessVo> list=service.listAll();
			model.addAttribute("list",list);
			return ".admin.business.businessList";
		}catch(Exception e){
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".sw	Mem.result";
		}	
	}
}
