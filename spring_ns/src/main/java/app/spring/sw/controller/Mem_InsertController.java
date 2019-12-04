package app.spring.sw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.sw.service.MemService;
import app.spring.sw.vo.MemVo;

@Controller
public class Mem_InsertController {
	@Autowired private MemService service;
	
	@RequestMapping(value="/insert",method=RequestMethod.GET)
	public String insertFrom(){
		return  ".sw.ss";
	}
	
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public String insert(MemVo vo){
		try {
			//service를 통해 vo객체의 insert메소드를 실행한다.
			service.insert(vo);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}
	}
}
