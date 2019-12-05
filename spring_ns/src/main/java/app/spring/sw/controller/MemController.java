package app.spring.sw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.sw.service.MemService;
import app.spring.vo.MemVo;

@Controller
public class MemController {
	@Autowired private MemService service;

	//회원가입
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public String insert(MemVo vo){
		try {
			service.insert(vo);
			return ".main";
		} catch (Exception e) {
			e.printStackTrace();
			return ".main";
		}
	}
	
	//회원정보수정
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(String m_phone){
		try{
			service.delete(m_phone);
			return ".main";
		}catch(Exception e){
			e.printStackTrace();
			return ".n";
		}
	}
	//회원탈퇴
	
	//회원조회
}
