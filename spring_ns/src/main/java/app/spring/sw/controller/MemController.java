package app.spring.sw.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.sw.service.MemService;
import app.spring.vo.MemVo;

@Controller
public class MemController {
	@Autowired
	private MemService service;

	//// 회원가입 ////
	@RequestMapping(value = "/memInsert", method = RequestMethod.POST)
	public String insert(MemVo vo, Model model) {
		try {
			service.insert(vo);
			return ".main";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}

	
	//회원마이페이지 --초기화면
	@RequestMapping(value="/swMem/mypage", method = RequestMethod.GET )
	public String mypage(String m_phone, Model model){
		try {
		model.addAttribute("vo", service.getInfo(m_phone));
		return ".swMem.mypage";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	
	//// 회원마이페이지 - 수정 ////
	@RequestMapping(value = "/memUpdate", method = RequestMethod.GET )
	public String updateForm(String m_phone, Model model) {
		try {
			model.addAttribute("vo", service.getInfo(m_phone));
			return ".swMem.memUpdate";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	@RequestMapping(value = "/memUpdate", method = RequestMethod.POST )
	public String update(MemVo vo, Model model) {
		service.update(vo);
		try {
			model.addAttribute("vo", service.getInfo(vo.getM_phone()));
			return ".swMem.memUpdate";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	
	////회원탈퇴 ////
	@RequestMapping(value = "/memDelete", method = RequestMethod.GET )
	public String deleteForm(String m_phone, Model model) {
		try {
			model.addAttribute("vo", service.getInfo(m_phone));
			return ".swMem.memDelete";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	@RequestMapping(value="/memDelete",method=RequestMethod.POST)
	public String delete(MemVo vo, String m_phone, String m_pwd, Model model, HttpServletRequest req){
		String pwd=req.getParameter("m_pwd");
		vo=service.getInfo(m_phone);
		try{
			if(pwd==null){
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}else{
				service.delete(m_phone);
				model.addAttribute("code", "success");
				return ".swMem.result";
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	

	//// 회원조회 ////
	@RequestMapping(value = "/memList", method = RequestMethod.GET )
	public String list(Model model) {
		try {
			List<MemVo> list=service.listAll();
			model.addAttribute("list", list);
			return ".swMem.memList";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}

	
/////////////////////////////////////////////////// 운영자 회원수정  /////////////////////////////////////////////////////////////////////////////
	@RequestMapping(value = "/memUpdate1", method = RequestMethod.GET )
	public String updateForm1(String m_phone, Model model) {
		try {
			model.addAttribute("vo", service.getInfo(m_phone));
			return ".swMem.memUpdate1";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
	@RequestMapping(value = "/memUpdate1", method = RequestMethod.POST )
	public String admin_update(MemVo vo, Model model) {
		try {
			model.addAttribute("vo", service.update(vo));
			return "redirect:/memList";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
}