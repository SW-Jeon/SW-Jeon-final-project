package app.spring.sw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.sw.service.MemService;
import app.spring.vo.MemVo;

@Controller
public class MemController {
	@Autowired private MemService service;

	//회원가입
	@RequestMapping(value="/memInsert",method=RequestMethod.POST)
	public String insert(MemVo vo,Model model){
		try {
			service.insert(vo);
			return ".main";
		}catch(Exception e){
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	
	//회원탈퇴
	@RequestMapping(value="/memDelete",method=RequestMethod.GET)
	public String delete(String m_phone,Model model){
		try{
			service.delete(m_phone);
			return ".main";
		}catch(Exception e){
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	//회원수정
	@RequestMapping(value="/memUpdate",method=RequestMethod.GET)
	public String updateForm(String m_phone,Model model){
		try{
			service.getInfo(m_phone);
			return ".swMem.memUpdate";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
			return ".swMem.result";
		}
		
	}
	
	public String  update(MemVo vo,Model model){
	try{
		service.update(vo);
		return ".main";
	} catch (Exception e) {
		e.printStackTrace();
		model.addAttribute("code","fail");
		return ".swMem.result";
	}
	}
	
	//회원조회
}
