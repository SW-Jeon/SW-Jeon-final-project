package app.spring.hs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import app.spring.hs.service.ZzimService;
import app.spring.vo.ZzimVo;

@Controller
public class ZzimController {
	@Autowired private ZzimService service;
	@RequestMapping("/zzimOk")
	public String zzimOk(ZzimVo vo){
		service.insert(vo);
		return ".main"; 
	}
}
