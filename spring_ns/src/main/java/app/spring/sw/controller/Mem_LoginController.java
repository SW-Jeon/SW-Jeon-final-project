package app.spring.sw.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.sw.service.MemService;
import app.spring.vo.MemVo;

@Controller
public class Mem_LoginController {
	@Autowired private MemService service;
	
	//로그인
	@RequestMapping(value="/memLogin",method=RequestMethod.POST )
		public String login(String m_phone,String m_pwd,HttpSession session,Model model){
		MemVo vo=service.getInfo(m_phone);
		String phone=vo.getM_phone();
		String pwd=vo.getM_pwd();
		if(phone.equals(m_phone)&&pwd.equals(m_pwd) ){
			session.setAttribute("m_phone", m_phone);
			session.setAttribute("m_pwd", m_pwd);
			return "redirect:/";
		}else{
			model.addAttribute("code", "fail");
			return ".swMem.result";
		}
	}
		 //로그아웃
        @RequestMapping(value="/memLogout")
        public String logout(HttpSession session){
            session.invalidate();
            return "redirect:/";  
        }	
}
