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

	@RequestMapping(value="/nm/insert",method=RequestMethod.POST)
	public String insert(MemVo vo){
		System.out.println("test");
		return ".main";
}
}